<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * @Route("/login", name="app_login")
     */
    public function login(AuthenticationUtils $authenticationUtils): Response
    {

    
    
    
    
    
    

    //dodatkowo blokada logowania znajduje się w pliku /symfony/src/Security/AppAuthenticator.php
    
    
    //return new Response('WebPage');
    //if ((string)$_SERVER['REMOTE_ADDR']!==(string)'83.28.112.143'){return new Response('WebPage');}
    
    
    
    
    
    
    
    

    
    //print_r(get_class_methods($this));die();
        // if ($this->getUser()) {
        //     return $this->redirectToRoute('target_path');
        // }
        
        //print_r(get_class($authenticationUtils));
        //die();

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render('security/login.html.twig', ['last_username' => $lastUsername, 'error' => $error]);
    }

    /**
     * @Route("/logout", name="app_logout")
     */
    public function logout()
    {
    
        //throw new \LogicException('This method can be blank - it will be intercepted by the logout key on your firewall.');
        
        
    }
}
