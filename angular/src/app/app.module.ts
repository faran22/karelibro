import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { Test1Component } from './test1/test1.component';
import { HomeComponent } from './home/home.component';

import { HttpClientModule } from '@angular/common/http';
import { OAuthModule } from 'angular-oauth2-oidc';

import { HttpclientService } from './httpclient.service';
import {HTTP_INTERCEPTORS} from '@angular/common/http';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';

//swiper
import {CUSTOM_ELEMENTS_SCHEMA} from '@angular/core';
import {register} from 'swiper/element/bundle';
register();

import { MatProgressBarModule } from '@angular/material/progress-bar';
import { LoginComponent } from './login/login.component';
import { FormsModule } from '@angular/forms';
import { Menu1Component } from './menu1/menu1.component';




@NgModule({
  declarations: [
    AppComponent,
    Test1Component,
    HomeComponent,
    LoginComponent,
    Menu1Component
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    HttpClientModule,
    OAuthModule.forRoot(),
    BrowserAnimationsModule,
    MatProgressBarModule,
    FormsModule,
    //SwiperModule,
  ],
  providers: [
    //monitorowanie zapytan http, dodawanie Bearer dla klienta http
    {provide:HTTP_INTERCEPTORS, useClass:HttpclientService, multi:true},
  ],
  bootstrap: [AppComponent],
  schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class AppModule { }
