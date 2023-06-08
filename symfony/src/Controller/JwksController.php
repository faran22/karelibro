<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Strobotti\JWK\KeyFactory;
    
class JwksController extends AbstractController
{
    #[Route('/.well-known/jwks', name: 'jwks')]
    public function index(): Response
    {
    
/*$pem = <<<'EOT'
-----BEGIN PUBLIC KEY-----
MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA4dGQ7bQK8LgILOdLsYzf
ZjkEAoQeVC/aqyc8GC6RX7dq/KvRAQAWPvkam8VQv4GK5T4ogklEKEvj5ISBamdD
Nq1n52TpxQwI2EqxSk7I9fKPKhRt4F8+2yETlYvye+2s6NeWJim0KBtOVrk0gWvE
Dgd6WOqJl/yt5WBISvILNyVg1qAAM8JeX6dRPosahRVDjA52G2X+Tip84wqwyRpU
lq2ybzcLh3zyhCitBOebiRWDQfG26EH9lTlJhll+p/Dg8vAXxJLIJ4SNLcqgFeZe
4OfHLgdzMvxXZJnPp/VgmkcpUdRotazKZumj6dBPcXI/XID4Z4Z3OM1KrZPJNdUh
xwIDAQAB
-----END PUBLIC KEY-----
EOT;*/
$pem = file_get_contents($this->getParameter('kernel.project_dir').'/oauth/public.key');
//echo($pem);

$options = [
   'use' => 'sig',
   'alg' => 'RS256',
   'kid' => 'eXaunmL',
];

$keyFactory = new KeyFactory();
$key = $keyFactory->createFromPem($pem, $options);
//echo('<pre>');echo "$key";echo('</pre>');
$keySet = new \Strobotti\JWK\KeySet();
$keySet->addKey($key);
//echo('<pre>');echo "$keySet" ;echo('</pre>');
//echo $keySet;//die();

$response = new Response();
$response->setContent($keySet);
$response->headers->set('Content-Type', 'application/jwk-set+json; charset=UTF-8');

return $response;

    }
}
