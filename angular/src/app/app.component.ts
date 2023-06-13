import { Component } from '@angular/core';
import { AuthPasswordSymfonyService } from './auth-password.symfony.service';
import { UrlparamsService } from './urlparams.service';
import { MainService } from './main.service';


@Component({
  selector: 'app-root',
  templateUrl: './app.component.html',
  styleUrls: ['./app.component.css']
})
export class AppComponent {
  title = 'angular';

  constructor(
    private authService: AuthPasswordSymfonyService,
    private urlparamsservice: UrlparamsService,
    public mainservice: MainService,
  ){


  }

}
