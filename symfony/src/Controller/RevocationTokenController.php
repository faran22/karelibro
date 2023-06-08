<?php
//Not used
//Should be created revocation refresh_token

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;

use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;

use Trikoder\Bundle\OAuth2Bundle\League\Repository\RefreshTokenRepository;

class RevocationTokenController extends AbstractController
{

private $accesstokenrepository;
private $apiauthorizecontroller;
private $refreshTokenrepository;

    public function __construct(AccessTokenRepository $accesstokenrepository, ApiAuthorizeController $apiauthorizecontroller, RefreshTokenRepository $refreshTokenrepository)
    {
    $this->accesstokenrepository = $accesstokenrepository;
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    $this->refreshTokenrepository = $refreshTokenrepository;
    
    //print_r(get_class_methods($refreshTokenrepository));
    
    }
    
    
    #[Route('/revocation', name: 'revocation_token')]
    public function index(): Response
    {die();
    $response = new Response();   
    
    //revocation return two state: refresh_token || access_token
    
    //In the future make create a token_refresh revoke
    $request=Request::createFromGlobals();
    if ($request->get('token_type_hint')==='refresh_token'){    
    return $response->setStatusCode(200);
    }
    
    $user=$this->apiauthorizecontroller->getUser();
    if ($user){
    $jti=$this->apiauthorizecontroller->getJti();
    $this->accesstokenrepository->revokeAccessToken($jti);
    
    
    return $response->setStatusCode(200);
    }

    return $response->setStatusCode(401);

    }
}
