<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;

use App\Entity\User;

use Symfony\Component\Security\Core\Authentication\Token\UsernamePasswordToken;
use Symfony\Component\HttpFoundation\Session\Session;
use Symfony\Component\Security\Http\Event\InteractiveLoginEvent;
use Symfony\Component\EventDispatcher\EventDispatcher;

use Doctrine\ORM\EntityManagerInterface;

class LoginAutoController extends AbstractController
{


    public function __construct(EntityManagerInterface $entityManager)
    {

    $this->request = Request::createFromGlobals();
    $this->entity = $entityManager;
    
    
    }
    
    
    
    
    
    #[Route('/loginauto', name: 'loginauto')]
    public function index(): Response
    {

die();
$user = $this->entity->getRepository(User::class)->find(78);//print_r($user);
$token = new UsernamePasswordToken($user, null, "main", $user->getRoles());
$this->get("security.token_storage")->setToken($token);


$session = new Session();
$session->set("_security_main", serialize($token));

$loginEvent = new InteractiveLoginEvent($this->request, $token);
$dispatcher = new EventDispatcher();
$dispatcher->dispatch($loginEvent);


//$user = $this->get('security.token_storage')->getToken()->getUser();echo('<pre>');print_r($user);echo('</pre>');
//die();

        return new Response(
            '<html><body>Lucky number: 13</body></html>'
        );
    }
    
    
    
    
    
    //login user - without creating a session file
    public function userSet(?User $user): void
    {
//die();
//$user = $this->entity->getRepository(User::class)->find(78);
if ($user===null){return;}
$token = new UsernamePasswordToken($user, null, "main", $user->getRoles());
$this->get("security.token_storage")->setToken($token);
$this->get('session')->invalidate();

return;

    }
}
