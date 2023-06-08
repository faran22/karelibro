<?php

namespace App\Controller;

//use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\JsonResponse;

//use Firebase\JWT\JWT;

//use Symfony\Component\DependencyInjection\ContainerBuilder;

//use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

//use Doctrine\ORM\EntityManagerInterface;

//use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


//use Trikoder\Bundle\OAuth2Bundle\League\Repository\ClientRepository;
//use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;

//use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

//use Strobotti\JWK\KeyFactory;

//include('/opt/lampp/htdocs/1a/symfony/any/ustawienia.php');

class Zasob1Controller extends AbstractController
{

    private $test;

    public function __construct()
    {

    }




    #[Route('/zasob1', name: 'zasob1')]
    public function index(): JsonResponse
    {//die();

    //print_r ($this->uplodFile());

    return new JsonResponse($this->uplodFile());

        
    }
    
    
    //wszystkie pliki w katalogu upload
    protected function uplodFile():array
    {
    
    //scandir i usuwanie . oraz ..
    $files1 = array_diff( scandir( $this->getParameter('kernel.project_dir').'/public/picture' ), array('..', '.'));
    
    //print_r($files1);
    
    return $files1;
    
    }
    
    
    

}
