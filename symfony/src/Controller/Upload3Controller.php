<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;
use Doctrine\Persistence\ManagerRegistry;

class Upload3Controller extends AbstractController
{

private $fileSize;


    #[Route('/api/upload3', name: 'upload3', methods: ['GET', 'POST'])]
    public function index(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, FileSizeController $fileSize, AccountSizeController $accountSize): JsonResponse
    {
    
$this->fileSize = $fileSize;


$response=new JsonResponse();
    

    $this->apiauthorizecontroller = $apiauthorizecontroller;    
    //jesli brak autoruzacji
    $user=$this->apiauthorizecontroller->getUser();
    if (!$user){
    $response->setData('unauthorized');
    $response->setStatusCode(401);
    return $response;
    }
    
    


    
if ($request->isMethod('POST')){

    //print_r(get_class_methods($request->files->get('fileToUpload3')));
    //echo '>>'.$request->files->get('fileToUpload3')->getClientMimeType().'<<';
    //print_r($request->files->all());print_r($request->request->all());
    //print_r($request->request->all()['filename']);
    
$entityManager = $doctrine->getManager();
$data = $entityManager->getRepository('App\Entity\File1')->find($user->getFile1()->getId());//rekord ktory ma byc zmieniony
//$dane=(Array)$data->getData();//odczyt poprzednich danych
$dane=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/file1data/'.(string)$data->getId()),true);

//print_r ( $accountSize->getSize((string)'',0) );die();

//jesli plikow wiecej niz 500   ||  rozmiar pliklu przekracza limit
//maksymalna ilosc plikow jest tez zapisana w ApiPlatformPersistersController.php
if (count($dane)>499 || (int)$request->files->get('fileToUpload3')->getSize()>(int)50048576/*50 mb*/ || $accountSize->getSize((string)'',(int)$request->files->get('fileToUpload3')->getSize())['limityPrzekroczone']['size']===1){
    $response->setStatusCode(400);
    $response->setData('Bad request');
    return $response;
}


//print_r( get_class_methods($request->files->get('fileToUpload3')) );
//echo $request->files->get('fileToUpload3')->getSize();
//die();

                //$newImage=array();//nowe pliki

                //tworzenie unikalnej nazwy pliku
                for ($i = 0; $i < 500; $i++){//echo($i);
        
        $rr=md5(time().rand(0,9999));
        //echo('>>'.$value.">>");
        //echo($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr.'>>');
        if (!file_exists($containerBag->get('kernel.project_dir').'/public/picture/'.$rr)){
        
        copy($request->files->get('fileToUpload3')->getPathName(), $this->getParameter('kernel.project_dir').'/public/picture/'.$rr);
        file_put_contents((string)$this->getParameter('kernel.project_dir').'/public/picturemime/'.$rr,(string)$request->files->get('fileToUpload3')->getClientMimeType());

        //array_push($newImage, $rr);//dodanie nowego pliku
        
        break;
        }
        
                }



                


//mime type pliku
$type='data';
if (stristr($request->files->get('fileToUpload3')->getClientMimeType(),'image/')){$type='image';}

//print_r($request->files->get('fileToUpload3')->getClientMimeType());

//nazwa pliku
$nazaPLiku=$request->request->all()['filename'];
if (strlen($nazaPLiku)>100){$nazaPLiku=substr($nazaPLiku, 0, 100);}
if (strlen($nazaPLiku)<1){$nazaPLiku='plik '.(string)$rr;}

$rr=Array('title'=>$nazaPLiku,'poster'=>'','id'=>(string)$rr,'type'=>$type);

array_push($dane, (array)$rr);
    //if (count($dane)>200){//jesli zbyt duzo plikow
    //    $response->setStatusCode(400);
    //    $response->setData('Bad request');
    //    return $response;
    //}
$data->setData(['ÿ']);//dodanie nowych danych
$entityManager->flush();//zapis nowych danych

//dodawanie do bufora informacji o nowym pliku
$this->fileSize->setValue('App\Entity\File1', 'data', (int)$data->getId(), (array)$dane);

file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/file1data/'.(string)$data->getId(),json_encode($dane));

$response->setStatusCode(200);

//$dane=(array)json_decode($dane);

//$string='';
//foreach ($dane as $value) {$string.=$value.',';}

//$data=Array('fileId'=>$dane);
$data=Array('fileId'=>$rr);
$response->setData($data);

//print_r( $data ); die();

return $response;

}
    


$response->setStatusCode(400);
$response->setData('Bad request');
return $response;
    }
}
