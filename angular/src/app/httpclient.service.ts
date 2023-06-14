import { Injectable } from '@angular/core';
import { HttpRequest, HttpEvent, HttpHandler, HttpInterceptor } from "@angular/common/http";
import { Observable } from 'rxjs';
import { finalize } from 'rxjs/operators';
import { MainService } from './main.service';
import { OAuthService } from 'angular-oauth2-oidc';

@Injectable({
  providedIn: 'root'
})
export class HttpclientService {

  //ilość trwającch zapytań http
  private httpWait:number=0;


  constructor(
    private oauthService: OAuthService,
    private mainservice: MainService,
  ) {

  }



intercept(req: HttpRequest<any>,next: HttpHandler):Observable<HttpEvent<any>>{

        //adresy dla ktorych nie bedzie paska postepu ladowania strony
        var httpwait: string[] = ['upload1',];

        //adresy dla ktorych zawsze bedzie dodwany Bearer
        var urlBearer: string[] = ["tests",];

        //adres moze byc oddzielony / lub ?
        let reqUrl=req.url.split(/[?\/]/); //console.log('reqUrl',reqUrl);

        var obj: {[k: string]: any} = {};


//dodawanie bearer okaziciel
if ( this.oauthService.getAccessToken() && (urlBearer.includes(reqUrl[4]) || req.method!=='GET') ){
obj['headers']=req.headers.set('Authorization','Bearer '+this.oauthService.getAccessToken());
}

        if ( !httpwait.includes(reqUrl[4]) ){

        //zwiekszanie licznika zapytan http i ustawianie wyswietlania paska preload
        this.httpWait++; //console.log('zwiekszam');
        this.mainservice.Preload=true;

        return next.handle(req.clone(obj)).pipe(finalize(this.finalize.bind(this)));

        }


return next.handle(req.clone(obj));
}



    //jesli odpowiedz ze zdalnego serwera to zmniejszanie licznika zapytan http i wylaczanie paska preload
  private finalize = (): void => {
    this.httpWait--; //console.log('zmniejszam');
    if (this.httpWait===0){
    this.mainservice.Preload=false;
    }
  };



}
