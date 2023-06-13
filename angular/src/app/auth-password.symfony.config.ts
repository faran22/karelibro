// This api will come in the next version

import { AuthConfig } from 'angular-oauth2-oidc';

export var authPasswordFlowConfig: AuthConfig = {
//export const authPasswordFlowConfig: AuthConfig = {
  // Url of the Identity Provider
  //issuer: 'http://symfony/',
  //issuer: 'https://testtest4.site/',
  //issuer: 'http://localhost/',
  requireHttps:true,

  // The SPA's id. The SPA is registerd with this id at the auth-server
  //clientId: 'demo-resource-owner',
  clientId: 'example_id',

  dummyClientSecret: 'test',

  // set the scope for the permissions the client should request
  // The first three are defined by OIDC. The 4th is a usecase-specific one
  //scope: 'openid profile email voucher',
  scope: '',

  oidc: false,

  responseType: 'code',

  //showDebugInformation: true,
  //timeoutFactor:0.2,



};
