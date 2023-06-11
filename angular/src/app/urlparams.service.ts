import { Injectable } from '@angular/core';
import { Router, NavigationEnd, ActivatedRoute, NavigationStart } from '@angular/router';
import { BehaviorSubject } from 'rxjs';
import { MainService } from './main.service';

@Injectable({
  providedIn: 'root'
})
export class UrlparamsService {

  public Aktualny:string|null=null;

  constructor(
    private router: Router,
    private route: ActivatedRoute,
    private mainservice: MainService,
  ) {

//najpierw odczytuja sie parametry url i na końcu po wczytaniu strony odczytuje sie domena/katalog
this.route.queryParams.subscribe(params => {

  //zapis parametrów url
  let obj: {[k: string]: any} = {};
  if (params['p1']!==undefined){obj['p1']=Number(params['p1']);}
  if (params['p2']!==undefined){obj['p2']=Number(params['p2']);}
  if (params['p3']!==undefined){obj['p3']=Number(params['p3']);}

  this.mainservice.UrlParams['params']=obj;
  this.mainservice.UrlParams['pathname']=this.mainservice._location.pathname;

  //console.log('this.mainservice.UrlParams',this.mainservice.UrlParams);

});


this.router.events.subscribe((event:any) => {

    //robi sie tylko wtedy gdy jest nowy/pelny routing
    if (event instanceof NavigationStart){


      //usuwanie trwajacych subskrypcji
      //if (this.mainservice.pageBufor===undefined){
      //nie da sie zatrzymac routingu jedynie mozna routing przekierowac
      this.mainservice.Unscribe();

                            //jesli istnieja pobrane dane lub odswiezenie strony
                            //if (this.mainservice.pageBufor===undefined && this.Aktualny!==null){
        //jesli brak trwajacego pobierania danych
        if (this.mainservice.pageBufor===undefined){


          //okreslanie ze trwa pobieranie danych
          this.mainservice.pageBufor=null;

          //powrót na aktualny url
          if (this.Aktualny!==null){this.router.navigateByUrl(this.Aktualny!,{skipLocationChange: true});}

          //pobieranie danych z rest api i przekierowanie na docelowy url
          this.mainservice.getData(String(event.url));


      }


    }


    //jesli koniec nawigacji
    if (event instanceof NavigationEnd){
      //zapis aktualnego url
      this.Aktualny=String(event.url);
    }



});


  }

}
