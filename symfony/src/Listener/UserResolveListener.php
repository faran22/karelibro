<?php
namespace App\EventListener;


use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;
use Symfony\Component\Security\Core\User\UserProviderInterface;
use Trikoder\Bundle\OAuth2Bundle\Event\UserResolveEvent;

//use App\Security\UserProvider;

use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
final class UserResolveListener
{
    /**
     * @var UserProviderInterface
     */
    private $userProvider;

    /**
     * @var UserPasswordEncoderInterface
     */
    private $userPasswordEncoder;

    /**
     * @param UserProviderInterface $userProvider
     * @param UserPasswordEncoderInterface $userPasswordEncoder
     */
    public function __construct(UserProviderInterface $userProvider, UserPasswordEncoderInterface $userPasswordEncoder)
    {//echo(get_parent_class($userProvider).' '.get_class($userProvider));
    //print_r(get_class_methods($userProvider));
        $this->userProvider = $userProvider;
        $this->userPasswordEncoder = $userPasswordEncoder;
    }

    /**
     * @param UserResolveEvent $event
     */
    public function onUserResolve(UserResolveEvent $event): void
    {
    
    //print_r(get_class_methods($this->userPasswordEncoder));die();
    
        $user = $this->userProvider->loadUserByIdentifier($event->getUsername());
        
        //$pass = $this->userPasswordEncoder->encodePassword($user,'admin');
        //$this->userProvider->upgradePassword($user,$pass);
        
        //print_r(get_class_methods($this->userProvider));

        if (null === $user) {
            return;
        }
        //echo('OOK1');

        if (!$this->userPasswordEncoder->isPasswordValid($user, $event->getPassword())) {
            return;
        }
        //echo '--->>'.get_class($this->userPasswordEncoder).'<<---';

        //$event->setUser('die');
        $event->setUser($user);
        //print_r($event);
    }
}
