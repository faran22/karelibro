<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Twig\Environment;

class IndexController extends AbstractController
{
    #[Route('/', name: 'homepage')]
    public function index(Environment $twig, Request $request): Response
    {
    
    
    
    
    
    //return new Response('WebPage');
    //if ((string)$_SERVER['REMOTE_ADDR']!==(string)'83.28.112.143'){return new Response('WebPage');}
    
    
    
    
    
    
    
    
    
    
    $array=array();
    
    //print_r($_SERVER);
    
    
    $array['controller_name']='admin';
    
            return new Response($twig->render('index/index.html.twig', $array));
    }
}
