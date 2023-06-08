<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;
use Firebase\JWT\JWT;
use Symfony\Component\Security\Core\User\UserProviderInterface;
use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;

class ApiAuthorizeController extends AbstractController
{

    private static string $publickey='/oauth/public.key';
    private $request;
    private $userProvider;
    private $accesstokenrepository;
    private ?string $bearer;
    private ?string $username=null;
    private ?string $jti=null;

    public function __construct(UserProviderInterface $userProvider, AccessTokenRepository $accesstokenrepository)
    {

    $this->request = Request::createFromGlobals();
    $this->userProvider = $userProvider;
    $this->accesstokenrepository = $accesstokenrepository;
    
    }
    
   
    private function getTokenBearer():?string
    {
    
    //if request
    $authorizationHeader = $this->request->headers->get('Authorization');
    $authorizationHeaderArray = explode(' ', $authorizationHeader);
    
    //Should be created revocation refresh_token
    //if revoke access/refresh token
    //if (!isset($authorizationHeaderArray['1']) && $this->request->get('token_type_hint')==='access_token'){$authorizationHeaderArray[1]=$this->request->get('token');}
    
    //print_r($authorizationHeaderArray[1]);
    return $this->bearer=$authorizationHeaderArray[1] ?? null;
    
    }
    
    private function verificationBearer():?bool
    {

    try{
    $this->getTokenBearer()??throw new \Exception('Error 1');
    $decodedBearer = (array)JWT::decode($this->bearer, file_get_contents($this->getParameter('kernel.project_dir').self::$publickey), array('RS256'));
    !$this->accesstokenrepository->isAccessTokenRevoked($decodedBearer['jti'])?:throw new \Exception('Error 1');
    }
    catch(\Exception $e){return 0;}
    
    $this->jti = $decodedBearer['jti'];
    $this->username = $decodedBearer['sub'];
    return 1;
    
    }
    
    public function getUser():?user
    {
    
    if (!$this->verificationBearer()){return null;}
    return $this->userProvider->loadUserByIdentifier($this->username);
    
    }
    
    public function getJti():?string
    {
    
    return $this->jti;
    
    }
    
    
}
