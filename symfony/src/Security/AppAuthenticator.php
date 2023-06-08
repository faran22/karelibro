<?php

namespace App\Security;

use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Generator\UrlGeneratorInterface;
use Symfony\Component\Security\Core\Authentication\Token\TokenInterface;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Http\Authenticator\AbstractLoginFormAuthenticator;
use Symfony\Component\Security\Http\Authenticator\Passport\Badge\CsrfTokenBadge;
use Symfony\Component\Security\Http\Authenticator\Passport\Badge\UserBadge;
use Symfony\Component\Security\Http\Authenticator\Passport\Credentials\PasswordCredentials;
use Symfony\Component\Security\Http\Authenticator\Passport\Passport;
use Symfony\Component\Security\Http\Authenticator\Passport\PassportInterface;
use Symfony\Component\Security\Http\Util\TargetPathTrait;

use Symfony\Component\Security\Core\Exception\AuthenticationException;

class AppAuthenticator extends AbstractLoginFormAuthenticator
{
    use TargetPathTrait;

    public const LOGIN_ROUTE = 'app_login';

    private UrlGeneratorInterface $urlGenerator;

    public function __construct(UrlGeneratorInterface $urlGenerator)
    {
        $this->urlGenerator = $urlGenerator;
        //print_r(get_class_methods($this));die();
    }

    public function authenticate(Request $request): PassportInterface
    {
    
    //blokada logowania
    //die();
    if ((string)$_SERVER['REMOTE_ADDR']!==(string)'83.28.112.143'){die;}
    
    
    
    
        $username = $request->request->get('username', '');

        $request->getSession()->set(Security::LAST_USERNAME, $username);
        //print_r($username);die();
        
        //$a = new Passport(
        //    new UserBadge($username),
        //    new PasswordCredentials($request->request->get('password', '')),
        //    [
        //        new CsrfTokenBadge('authenticate', $request->get('_csrf_token')),
        //    ]
        //);
        
        //print_r(get_class_methods($this));
        //die();
        //return $a;
        
        return new Passport(
            new UserBadge($username),
            new PasswordCredentials($request->request->get('password', '')),
            [
                new CsrfTokenBadge('authenticate', $request->get('_csrf_token')),
            ]
        );
        
    }

    public function onAuthenticationSuccess(Request $request, TokenInterface $token, string $firewallName): ?Response
    {//echo('success');die();
    
        if ($targetPath = $this->getTargetPath($request->getSession(), $firewallName)) {
            
            return new RedirectResponse($targetPath);
            
            //die('ej');
            //$kl=new RedirectResponse($targetPath);
            //print_r(get_class_methods($kl));
            //die();
        }

        //$a=new RedirectResponse('abc');
        //print_r(get_class_methods($this->urlGenerator));die();
        
        // For example:
        //return new RedirectResponse($this->urlGenerator->generate('some_route'));
        //throw new \Exception('TODO: provide a valid redirect inside '.__FILE__);
        return new RedirectResponse($this->urlGenerator->generate('admin'));
    }

    protected function getLoginUrl(Request $request): string
    {
        return $this->urlGenerator->generate(self::LOGIN_ROUTE);
    }
    
/*
    public function onAuthenticationFailure(Request $request, AuthenticationException $exception): Response
    {
    
        if ($request->hasSession()) {
            $request->getSession()->set(Security::AUTHENTICATION_ERROR, $exception);
        }

        $url = $this->getLoginUrl($request);

        return new RedirectResponse($url);
    
    }
*/

}
