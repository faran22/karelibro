<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

//use Symfony\Component\HttpFoundation\File\Exception\FileException;
//use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
//use Symfony\Component\String\Slugger\SluggerInterface;

class UploadController extends AbstractController
{
    #[Route('/upload', name: 'upload', methods: ['GET', 'POST'])]
    public function new(Request $request/*, SluggerInterface $slugger*/): JsonResponse
    {
    
if ($request->isMethod('POST')) {

$response=new JsonResponse();
        
        //fileToUpload - nazwa pola z input upload
        //$file=$request->files->get('fileToUpload')->getPathName();
        //echo("--$file--");
        //$file=$request->files->get('fileToUpload')->getFilename();
        //echo("--$file--");
        //echo('>'.$ftoup.'<');//echo(file_get_contents($ftoup));
        //$ftoup=$request->files->get('fileToUpload')->getClientMimeType();
        //echo('>'.$ftoup);
        //$ftoup=$request->files->get('fileToUpload')->getClientOriginalName();
        //echo('>'.$ftoup);
        //$ftoup=$request->files->get('fileToUpload')->getSize();
        //echo('>'.$ftoup);

        //echo('<pre>');print_r(get_class_methods($request->files->get('fileToUpload')));echo('</pre>');
        
        //$files1 = scandir('/opt/lampp/temp');
        //$files2 = scandir($this->getParameter('kernel.project_dir').'/public/picture');
        //print_r($files1);print_r($files2);
        //echo $request->files->get('fileToUpload')->getClientMimeType();
        
//if ( (int)$request->files->get('fileToUpload')->getSize()>(int)300242875/*50242875 30 MB*/ || (!stristr($request->files->get('fileToUpload')->getClientMimeType(), 'image/') && !stristr($request->files->get('fileToUpload')->getClientMimeType(), '/octet-stream') ) ){$response->setStatusCode(500);}else{
if ( (int)$request->files->get('fileToUpload')->getSize()>(int)52428800/*52428800 50 MB*/ ){$response->setStatusCode(500);}else{
        
        //tworzenie tymczasowego pliku upload
        for ($i = 0; $i < 500; $i++) {
        
        $rr=md5(time().rand(0,999999999999));
        if (!file_exists($this->getParameter('kernel.project_dir')).'/tmp/'.$rr){
        copy($request->files->get('fileToUpload')->getPathName(), $this->getParameter('kernel.project_dir').'/tmp/'.$rr);
        break;
        }
        
        }
        
        
        //$t='{"fileId":"'.$rr.'"}';
        //return new Response($t);
        

        $response->setStatusCode(200);
        $response->setData(['fileId'=>$rr]);
        }
        
        return $response;

        //return new Response('a');
        //return new Response($request->files->get('fileToUpload')->getFilename());

}
        
    }
}
