import { Injectable } from '@angular/core';
import { BehaviorSubject, Observable } from 'rxjs';
import { /*OAuthErrorEvent,*/ OAuthService } from 'angular-oauth2-oidc';
import { filter/*, map*/ } from 'rxjs/operators';
import { authPasswordFlowConfig } from './auth-password.symfony.config';
import { MainService } from './main.service';

@Injectable({
  providedIn: 'root'
})
export class AuthPasswordSymfonyService {

  //tworzenie observable
  private isAuthenticatedSubject$ = new BehaviorSubject<boolean>(false);
  public isAuthenticated$ = this.isAuthenticatedSubject$.asObservable();


  constructor(
    public mainservice: MainService,
    private oauthService: OAuthService,
  ) {
  console.log('AuthPasswordSymfonyService');

  //ustawianie adresu serwera api json
  authPasswordFlowConfig['issuer']=this.mainservice.ApiUrl+'/';
  //authPasswordFlowConfig['issuer']='/';


    //konfiguracja
    this.oauthService.configure(authPasswordFlowConfig);
    this.oauthService.loadDiscoveryDocument();
    this.oauthService.setupAutomaticSilentRefresh();


    // This is tricky, as it might cause race conditions (where access_token is set in another
    // tab before everything is said and done there.
    // TODO: Improve this setup. See: https://github.com/jeroenheijmans/sample-angular-oauth2-oidc-with-auth-guards/issues/2
    window.addEventListener('storage', (event) => {
      // The `key` is `null` if the event was caused by `.clear()`
      if (event.key !== 'access_token' && event.key !== null) {
        return;
      }

      console.warn('Noticed changes to access_token (most likely from another tab), updating isAuthenticated');
      this.isAuthenticatedSubject$.next(this.oauthService.hasValidAccessToken() ? true : false);

      //ustawianie domyślnego wyglądu strony po zalogowaniu uzytwkonika
      //if (this.domainVerify && this.oauthService.hasValidAccessToken()){this.mainservice.WygladDomyslne();}

      if (!this.oauthService.hasValidAccessToken()) {
        //this.navigateToLoginPage();
        this.oauthService.logOut();
      }
    });





    //monitorowanie observable
    //dla wszystkich zdarzeń oauthService zwracana jest wartość 0/1 odczytywaba z hasValidAccessToken
    this.oauthService.events
      .subscribe(_ => {

        this.isAuthenticatedSubject$.next(this.oauthService.hasValidAccessToken() ? true : false);

        //ustawianie domyślnego wyglądu strony po zalogowaniu uzytwkonika
        //if (this.domainVerify && this.oauthService.hasValidAccessToken()){this.mainservice.WygladDomyslne();}

      });




    //jesli bledne pobranie tokena
    this.oauthService.events
      .pipe(filter(e => ['token_refresh_error','user_profile_load_error'/*,'token_expires'*/].includes(e.type)))
      .subscribe(e => {this.oauthService.logOut();});









//jesli poprawnie pobrano user profile czyli logowanie poprawne
    this.oauthService.events
      .pipe(filter(e => ['user_profile_loaded'/*,'logout'*/].includes(e.type)))
      .subscribe(e => {


        /*
        //jesli logowanie i domena nie jest uzytkownika to przekierowanie an tą domene
        if (!this.domainVerify){
          //this.router.navigate(["/",this.domainOne]).then(result=>{window.location.href = '/'+this.domainOne;});
          //this.router.navigate(["/",this.domainOne]);
          //console.log('dddddd');


          let tmp:string='';
          //jesli brak domeny uzytkownika
          if (this.domainOne2.indexOf('.')===-1){

          //kopiowanie obiketu bo logout go usuwa
          tmp=String(this.domainOne2)+String('/logowanie');
          //wylogowanie
          this.oauthService.logOut();//usuwanie sesji ktora mogla zostac utworzona na innej domenie
          //przekierowanie na wlasciwy adres
          //window.location.href = this.mainservice.DOMAINsystem0+this.mainservice.DOMAINsystem+this.mainservice.DOMAINsystem1+'/'+tmp;
          this.mainservice.redirect(this.mainservice.DOMAINsystem0+this.mainservice.DOMAINsystem+this.mainservice.DOMAINsystem1+'/'+tmp,'_self');

          }else{

          //kopiowanie obiketu bo logout go usuwa
          tmp=String('https://')+String(this.domainOne2)+String('/logowanie');
          //wylogowanie
          this.oauthService.logOut();//usuwanie sesji ktora mogla zostac utworzona na innej domenie
          //przekierowanie na wlasciwy adres
          //window.location.href = tmp;
          this.mainservice.redirect(tmp,'_self');

          }

          //console.log('this.oauthService',this.oauthService);
          //this.oauthService.logOut();//usuwanie sesji ktora mogla zostac utworzona na innej domenie
          //this.oauthService.revokeTokenAndLogout(true,true);
        }else{this.mainservice.message(0,this.mainservice.wyglad.LogowanieOkWiadomosc);}
        */

      });

      this.oauthService.setupAutomaticSilentRefresh();

  }






  loginWithPassword(userName: string, password: string) {
      //this.loggingInProgressSubject$.next(1);

    //this.oauthService.fetchTokenUsingPasswordFlowAndLoadUserProfile('admin','admin');
    this.oauthService
      .fetchTokenUsingPasswordFlowAndLoadUserProfile(
      //.fetchTokenUsingPasswordFlow(
        userName,
        password
      )
      .then(() => {
        //this.loggingInProgressSubject$.next(2);
        //console.debug('successfully logged in');
      })
      .catch((err) => {
        //this.mainservice.message(1,this.mainservice.wyglad.LogowanieErriorWiadomosc);
        //this.loggingInProgressSubject$.next(3);
        //console.error('error logging in', err);
      });


  }


  logout():void {
    this.oauthService.logOut(true);
    //window.location.reload();//zawsze odswiezanie strony aby przywrocic wlasciwy wyglad
    //this.mainservice.redirect('~','_self');
    //this.oauthService.revokeTokenAndLogout();
  }


  get username(): string {
    //return ( (this.oauthService.getIdentityClaims() as any)['username'] );
    return this.oauthService.getIdentityClaims()
    ? ((this.oauthService.getIdentityClaims() as any)['username'])
    : '';
  }


  getaccesstoken():string {

    return this.oauthService.getAccessToken();

  }

}
