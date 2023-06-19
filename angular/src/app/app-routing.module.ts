import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

import { Test1Component } from './test1/test1.component';
import { HomeComponent } from './home/home.component';

const routes: Routes = [
  {path: '', component: HomeComponent},
  {path: 'test1', component: Test1Component},
  //{ path: '', loadChildren: () => TestModule },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
