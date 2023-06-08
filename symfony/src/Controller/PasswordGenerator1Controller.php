<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\HttpFoundation\Response;
use App\Entity\User;

class PasswordGenerator1Controller extends AbstractController
{

    #[Route('/passwordgenerator1/{page}', name: 'passwordgenerator1', methods: ['GET'])]
    public function new($page, UserPasswordEncoderInterface $passwordEncoder): Response
    {
    
    $User = new User();
    $encoded = $passwordEncoder->encodePassword($User, $page);
    
    return new Response($encoded);
    

    }
}
