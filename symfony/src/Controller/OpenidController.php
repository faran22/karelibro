<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class OpenidController extends AbstractController
{
    #[Route('/.well-known/openid-configuration', name: 'openidConfiguration')]
    public function index(): Response
    {
    
    //$json='{"issuer":"https://steyer-identity-server.azurewebsites.net/identity","jwks_uri":"https://steyer-identity-server.azurewebsites.net/identity/.well-known/jwks","authorization_endpoint":"https://steyer-identity-server.azurewebsites.net/identity/connect/authorize","token_endpoint":"https://steyer-identity-server.azurewebsites.net/identity/connect/token","userinfo_endpoint":"https://steyer-identity-server.azurewebsites.net/identity/connect/userinfo","end_session_endpoint":"https://steyer-identity-server.azurewebsites.net/identity/connect/endsession","check_session_iframe":"https://steyer-identity-server.azurewebsites.net/identity/connect/checksession","revocation_endpoint":"https://steyer-identity-server.azurewebsites.net/identity/connect/revocation","scopes_supported":["roles","booking","write","company","voucher","openid","profile","email","phone","address","offline_access"],"claims_supported":["role","projects","buyInBulk","sub","name","family_name","given_name","middle_name","nickname","preferred_username","profile","picture","website","gender","birthdate","zoneinfo","locale","updated_at","email","email_verified","phone_number","phone_number_verified","address"],"response_types_supported":["code","token","id_token","id_token token","code id_token","code token","code id_token token"],"response_modes_supported":["form_post","query","fragment"],"grant_types_supported":["authorization_code","client_credentials","password","refresh_token","implicit"],"subject_types_supported":["public"],"id_token_signing_alg_values_supported":["RS256"],"token_endpoint_auth_methods_supported":["client_secret_post","client_secret_basic"]}';
    $json='{"issuer":"https://'.$_SERVER['HTTP_HOST'].'/","authorization_endpoint":"https://'.$_SERVER['HTTP_HOST'].'/authorize","jwks_uri":"https://'.$_SERVER['HTTP_HOST'].'/.well-known/jwks","token_endpoint":"https://'.$_SERVER['HTTP_HOST'].'/token","userinfo_endpoint":"https://'.$_SERVER['HTTP_HOST'].'/userinfo","end_session_endpoint":"https://'.$_SERVER['HTTP_HOST'].'/endsession","check_session_iframe":"https://'.$_SERVER['HTTP_HOST'].'/checksession","revocation_endpoint":"https://'.$_SERVER['HTTP_HOST'].'/revocation","scopes_supported":["write","read"],"claims_supported":["user"],"response_types_supported":["code","token"],"response_modes_supported":["form_post","query","fragment"],"grant_types_supported":["password","refresh_token"],"subject_types_supported":["public"],"id_token_signing_alg_values_supported":["RS256"],"token_endpoint_auth_methods_supported":["client_secret_post","client_secret_basic"]}';
    //var_dump(json_decode($json));
    //echo($json);
    
$response = new Response();
$response->setContent($json);
$response->headers->set('Content-Type', 'application/json; charset=UTF-8');

return $response;
    }
}
