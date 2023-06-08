<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

use App\Controller\ApiAuthorizeController;

class UserInfoController extends AbstractController
{

    private $apiauthorizecontroller;

    public function __construct(ApiAuthorizeController $apiauthorizecontroller)
    {
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    }
    
    
    #[Route('/userinfo', name: 'user_info')]
    public function index(): JsonResponse
    {//sleep(1);
    $response = new JsonResponse();
    $response->headers->set('Content-Type', 'application/json; charset=UTF-8');

    //if user login then waiting for the bearer token to be saved in sql
    $time_start=time();
    for (;;) {
    $user=$this->apiauthorizecontroller->getUser();//$user=null;
    if ($user!==null || time()>$time_start+(int)10){break;}
    sleep(1);
    }
    
    if ($user===null){
    $response->setData(['error' => 'Unauthorized']);
    return $response->setStatusCode(401);
    }
    

    $response->setData(['sub' => $user->getId(),'username' => $user->getUsername(), 'domain'=>$user->getDomain()]);

    return $response;
    }
}
