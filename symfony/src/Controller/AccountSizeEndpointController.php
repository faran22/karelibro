<?php
//zwracanie informacji o zasobach uzywanych przez konto


namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;


class AccountSizeEndpointController extends AbstractController
{

    #[Route('/api/accountsize', name: 'accountsize', methods: ['GET'])]
    public function new(Request $request, ApiAuthorizeController $apiauthorizecontroller, AccountSizeController $accountSize): JsonResponse
    {
        $response=new JsonResponse();
    
    //jesli brak autoruzacji
    $user=$apiauthorizecontroller->getUser();
    if (!$user){
    $response->setData('unautorized');
    $response->setStatusCode(401);
    return $response;
    }
    
    
        $response->setStatusCode(200);
        $response->setData($accountSize->getSize((array)[],(int)0));
        return $response;
    }

}
