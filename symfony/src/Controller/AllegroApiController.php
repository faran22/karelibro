<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

class AllegroApiController extends AbstractController
{

private $apiauthorizecontroller;
private $allegroCurl;


    public function __construct(ApiAuthorizeController $apiauthorizecontroller, AllegroCurlController $allegroCurl)
    {
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    $this->allegroCurl = $allegroCurl;
    }
    
    #[Route('/api/allegroapibroker', name: 'allegro_api')]
    public function index(): JsonResponse
    {
    $response=new JsonResponse();
    //echo('<pre>');print_r(get_class_methods($response));echo('</pre>');die();
    
    
    //$request = Request::createFromGlobals();
    //$request = json_decode($request->getContent(),true);
    //echo('<pre>');print_r($request);echo('</pre>');die();
    

    $user=$this->apiauthorizecontroller->getUser();
    if ($user){
        //echo $user->getAllegro1()->getAccessToken();
        //$response->setData($user->getUsername());
        //$response->setJson($user->getUsername());
        
        //pobieranie danych z angular
        $request = Request::createFromGlobals();
        $request = (array)json_decode($request->getContent(),true);
        
        //$request['AllegroApiData']=(array)json_decode($request['AllegroApiData'],true);
        //print_r($request);
        
        //zapytanie curl do allegro
        $this->allegroCurl->set($request['AllegroApiUrl'],$request['AllegroApiMethod'],$request['AllegroApiData'],$user->getAllegro1()->getAccessToken(), 'any');
        $this->allegroCurl->prepareData();
        
        //dane z curl
        $code=$this->allegroCurl->code();$response->setStatusCode($code);//kod odpowiedzi http
        $contentHeader=$this->allegroCurl->content();//content type
        
        if (stristr($contentHeader, 'json')){ //jesli jest json
        
        $data=$this->allegroCurl->data();
        $response->setJson($data);
        
        }else{ //jesi error
        
        $response->setData('error');
        //$response->setData($contentHeader);
        
        }
        

        
    }else{
        $response->setData('unautorized');
        $response->setStatusCode(401);
    }


    

        return $response;
    }
}
