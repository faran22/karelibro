<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
//use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\BinaryFileResponse;
use Symfony\Component\Routing\Annotation\Route;

class PictureController extends AbstractController
{
    #[Route('/picture2/{id}', name: 'picture2')]
    public function index(string $id): BinaryFileResponse
    {

    if (strlen($id)===9){$wsta='picturesystem';}else{$wsta='picture';}
    
$filepath = "/opt/lampp/htdocs/1a/symfony/public/$wsta/$id";
$response = new BinaryFileResponse($filepath);

//jesli istnieje mime type
//if ($id==='0adf6aabb78c6b6b24fed413d9db0855'){$response->headers->set('Content-Type', 'text/css');}
if (file_exists('/opt/lampp/htdocs/1a/symfony/public/picturemime/'.$id)){
$response->headers->set('Content-Type', (string)file_get_contents('/opt/lampp/htdocs/1a/symfony/public/picturemime/'.$id));
}

//print_r(get_class_methods($response));

return $response;

//$filename = "chart.png";
//$disposition = $response->headers->makeDisposition(ResponseHeaderBag::DISPOSITION_INLINE, $filename);
//$response->headers->set('Content-Disposition', $disposition);
//$response->headers->set('Content-Type', 'image/png');
//$response->setContent(file_get_contents($filepath));


        //return new Response('test '.$id);

    }
}
