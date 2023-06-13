import { Component } from '@angular/core';
import { AuthPasswordSymfonyService } from '../auth-password.symfony.service';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent {

  public isAuthenticated$: Observable<boolean>;
  public userName!: string;
  public password!: string;

  constructor(
    private authService: AuthPasswordSymfonyService,
  ){

    //obserable - if logged/nologed
    this.isAuthenticated$ = this.authService.isAuthenticated$;


  }


  loginWithPassword(){
    //this.mainservice.Preload(true);
    this.authService.loginWithPassword(String(this.userName),String(this.password));
    this.userName='';
    this.password='';
  }

  logout():void {
    //this.mainservice.Preload(true);
    //po wylogowaniu GetDomain nie ma wartosci i trzeba odczytac ja wczeesniej
    //let tmp=this.GetDomain;
    //this.router.navigate(["/",tmp]).then(result=>{window.location.href = '/'+tmp;});
    this.authService.logout();
  }

  get username(): string {
    return this.authService.username;
  }


}
