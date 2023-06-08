<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class CashbillNotificationController extends AbstractController
{
    #[Route('/cashbillnotification/{page}', name: 'cashbill_notification')]
    public function index($page): Response
    {
    
    
    
        return new Response(
            'response cashbill '.$page
        );
    }
}
