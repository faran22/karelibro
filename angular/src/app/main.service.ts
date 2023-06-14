import { Injectable, Inject } from '@angular/core';
import { Subscription, forkJoin, interval, of } from 'rxjs';
import { Router, UrlTree, DefaultUrlSerializer } from '@angular/router';
import {HttpClient} from "@angular/common/http";
import { take, catchError } from 'rxjs/operators';
import { DOCUMENT, PlatformLocation } from'@angular/common';




@Injectable({
  providedIn: 'root'
})
export class MainService {

  public startPage:boolean=false;//okresla ze dane z serwera rest api zostaly pobrane
  public UrlParams: UrlParamsInterface = {pathname:'',params:{}};//parametry url otwartej strony
  private subscriptions: Subscription[] = [];

  public ApiUrl:string='https://karelibroapi.symetryczny.pl';//

  public Preload:boolean=false;

  constructor(
    //private authService: AuthPasswordSymfonyService,
    //public UrlSerializer:UrlSerializer,
    public http:HttpClient,
    @Inject(DOCUMENT) public readonly document: Document,
    private router: Router,
    public _location: PlatformLocation,

  ) {
    //console.log('MainService');
  }

public pageBufor:any;
public Unscribe():void{
  if (this.subscriptions[0]!==undefined && this.subscriptions?.[0].closed!==true){

    //console.log('>',this.subscriptions?.[0]);
    this.subscriptions?.[0]?.unsubscribe?.();
    this.pageBufor=undefined;
  }

  //if (this.subscriptions[1]!==undefined && this.subscriptions?.[1].closed!==true){
  //this.subscriptions?.[1]?.unsubscribe?.(); console.log('unscribe przenikanie');
  //}

  //if (this.subscriptions[1]!==undefined && this.subscriptions?.[1].closed!==true){console.log('unsu');
  //this.subscriptions?.[1]?.unsubscribe?.(); console.log('unscribe przenikanie');
  //  this.subscriptions[1].unsubscribe();
  //}

}
//pobieranie danych z serwera rest api
public getData(newurl:string|null):void{

//punktyu końcowe pobierania danych z serwera rest api
let array = [];



//pobieranie startowych danych z serwera rest api
if (this.startPage===false){

array.push(this.http.get<any>(this.ApiUrl+'/api/pages?page=1&category=111111&subcategory=').pipe(catchError(error => of(/*error*/'error'))));
array.push(this.http.get<any>(this.ApiUrl+'/api/pages?page=1&category=222222&subcategory=').pipe(catchError(error => of(/*error*/'error'))));

}



//jesli istnieje nowy url to odczyt parametrów strony i tworzenie zapytania rest api
if (newurl!==null){

let wstaw:string='';
let url = this.parseURL(newurl);

//jeśli podstrony
if (url.queryParams['p1']!==undefined){wstaw+='&category='+url.queryParams['p1'];}
if (url.queryParams['p2']!==undefined){wstaw+='&subcategory='+url.queryParams['p2'];}
//jesli strona główna
if (wstaw.length===0){wstaw='&category=1';}

//jeśli podstrona 2 to dodanie dodatkowych url rest api
if (url.queryParams['p1']!==undefined && Number(url.queryParams['p1'])===Number(2)){
array.push(this.http.get<any>(this.ApiUrl+'/api/tests?page=1').pipe(catchError(error => of(/*error*/'error'))));
}

//główne zapytanie rest api
array.push(this.http.get<any>(this.ApiUrl+'/api/pages?page=1'+wstaw).pipe(catchError(error => of(/*error*/'error'))));

}











this.subscriptions[0]=(
forkJoin(array).subscribe(res => this.handleResponse(res,newurl))
);

/*
      //this.subscriptions.push(this.http.get<any>(dane)
      this.subscriptions[0]=(
              forkJoin(array)
            .subscribe(values222 => {

              //jesli dane startowe po pierwszym wczytaniu strony
              if (this.startPage===false){

                //pierwszy element tablicy
                console.log('values222[0]',values222[0]);values222.shift();

                //drugi element tablicy
                console.log('values222[0]',values222[0]);values222.shift();

              }

              this.pageBufor=values222;

                if (this.pageBufor===null || this.pageBufor.length===0 || this.pageBufor[0]===undefined){this.pageBufor=undefined;}
                console.log('this.pageBufor',this.pageBufor);

                this.przenikanie(newurl);

            },
                      (error) => {
                        
                        console.log('error',error);
                        //this.pageBufor=undefined;
                        this.przenikanie(newurl);
                        //this.message(3,this.wyglad.ErrorWiadomosc);

                      }
            )

      );
*/

}
//przetwarzanie odpowiedzi zwroconej z serwera rest api
public handleResponse(res:any, newurl:string|null):void{
    
              //jesli dane startowe po pierwszym wczytaniu strony
              if (this.startPage===false){

                //pierwszy element tablicy
                //console.log('res[0]',res[0]);
                res.shift();

                //drugi element tablicy
                //console.log('res[0]',res[0]);
                res.shift();

              }

              this.pageBufor=res;

                if (this.pageBufor===null || this.pageBufor.length===0 || this.pageBufor[0]===undefined){this.pageBufor=undefined;}
                console.log('this.pageBufor',this.pageBufor);

                this.przenikanie(newurl);
}
private przeikanie0:boolean=false;
//private przenikanie0stop:boolean=false;
public przenikanie(newurl:string|null):void{
//if (this.przeikanie0===true){return;}
//this.przenikanie0stop=true;

    //jesli jest trwajace przenikanie to zatrzymanie nowego
    if (this.subscriptions[1]!==undefined && this.subscriptions?.[1].closed!==true){//console.log('unsu');
      //this.subscriptions[1].unsubscribe();
      //this.document.body.style.opacity='1';
      //this.przeikanie0=false;
      return;
    }


  //jesli brak transition opacuity
  if (this.document.body.style.transition!=='opacity 0.4s ease 0s'){
    this.document.body.style.transition='opacity 0.4s';
  }

  //jesli brak opacity
  if ( (Number(this.document.body.style.opacity)!==1 && Number(this.document.body.style.opacity)!==0) ){
    this.document.body.style.opacity='1';
    this.przeikanie0=false;
  }

  this.subscriptions[1]=interval(40).pipe(take(13)).subscribe(x => { //console.log('x',x);

    //jesli drugi krok i rozjasnianie
      if (x===1 && this.przeikanie0===true){//this.subscriptions[1].unsubscribe();

        this.document.body.style.display="block";

      }
      //sciemnianie
      else if (x===2 && this.przeikanie0===false){
        this.document.body.style.opacity=String(0);
      }
      //rozjasnianie
      else if (x===4 && this.przeikanie0===true){
        this.document.body.style.opacity=String(1);
      }

    /*if (x>1){
      //tozjasnianie
      if (this.przeikanie0===true){

          let tmp:number=Number(this.document.body.style.opacity)+0.1;
          if (tmp>1){tmp=1;}//console.log('+',tmp);

          this.document.body.style.opacity=String(tmp);
      }
      //sciemnianie
      else if (this.przeikanie0===false){

          let tmp:number=Number(this.document.body.style.opacity)-0.1;
          if (tmp<0){tmp=0;}//console.log('-',tmp);

          this.document.body.style.opacity=String(tmp);

      }
    }*/
    //jesli ostatni krok
    if (x===12){

      this.subscriptions?.[1]?.unsubscribe?.();

      //jesli bylo sciemnianie
      if (this.przeikanie0===false){
        this.startPage=true;
        if (newurl!==null){this.router.navigateByUrl(newurl,{skipLocationChange: false});}
        this.document.body.style.display="none";
        this.przeikanie0=true;
        this.przenikanie(newurl);
      }else{
        this.przeikanie0=false;
                            this.pageBufor=undefined;
      }

    //jesli koniec
    }


  });

}
//przetwarzanie string url na object
public parseURL(url:string):UrlTree{

 let dus = new DefaultUrlSerializer();
 return dus.parse(url);

}
/*public parseURL2(url:string):UrlTree{

  return this.router.parseUrl(url);

}*/


}



export interface UrlParamsInterface{
 pathname:string;
 params:{p1?:number;p2?:number;p3?:number;};

}
