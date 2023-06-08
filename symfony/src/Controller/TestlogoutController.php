<?php

namespace App\Controller;
use Symfony\Component\Security\Http\Event\LogoutEvent;

use Symfony\Component\Security\Http\HttpUtils;

//use Symfony\Component\HttpFoundation\Response;
//use Symfony\Component\HttpFoundation\RedirectResponse;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class TestlogoutController extends AbstractController
{



    public function onUserResolve(LogoutEvent $event)
    {
    //$this->addFlash('success','bye');
    //echo('<pre>');
    //print_r(get_class_methods($this));
    //print_r(get_class_methods($event));
    //echo($event->getRequest());
    //echo($event->getToken());
    //echo('</pre>');
    //die();
    }
    
    


}


/*
class TestlogoutController implements LogoutSuccessHandlerInterface
{

    private $urlGenerator;

    public function __construct(UrlGeneratorInterface $urlGenerator)
    {
        $this->urlGenerator = $urlGenerator;
    }

    public function onLogoutSuccess(Request $request)
    {
        $httpUtils=new HttpUtils();
    
        return $httpUtils->createRedirectResponse($request, 'http://symfony/login');
    }

}
*/
