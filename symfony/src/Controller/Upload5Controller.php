<?php

namespace App\Controller;

use App\Entity\Stopka1;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

//use Symfony\Component\HttpFoundation\File\Exception\FileException;
//use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
//use Symfony\Component\String\Slugger\SluggerInterface;

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

use Doctrine\Persistence\ManagerRegistry;
use \DOMDocument;

class Upload5Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    private $DownloadUrl='https://api.symetryczny.pl';
    //private $doctrine;
    private $imageSize;

    #[Route('/api/upload5', name: 'upload5', methods: ['GET', 'POST'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, ImageSizeController $imageSize, AccountSizeController $accountSize): JsonResponse
    {
    $response=new JsonResponse();
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    //$this->doctrine = $doctrine;
    
    //jesli brak autoruzacji
    $user=$this->apiauthorizecontroller->getUser();
    if (!$user){
    $response->setData('unautorized');
    $response->setStatusCode(401);
    return $response;
    }
    
    
    $this->containerbag = $containerBag;
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    
if ($request->isMethod('POST')){

$request=(array)json_decode(trim((string)$request->getContent()),true);

        //$CategoryId=addslashes((string)$request['CategoryId']);
        
        $data=trim($request['postData']);
        
//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$data,(int)0) );die();
if ($accountSize->getSize((string)$data,(int)0)['limityPrzekroczone']['size']===1){

$response->setData('Przekroczony limit pojemności konta');
$response->setStatusCode(423);
return $response;

}
        
        //preg_match_all( '/<img .*src="([^"]+)"/i' , $data , $match );//odczyt src dla obrazkow
        //preg_match_all( '/<img.+src="([^"]+)"/U' , $data , $match );//odczyt src dla obrazkow
        /*preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $data , $match );//odczyt src dla obrazkow
        $match[0] = array_unique($match[0]); //usuwanie duplikatow
        $match[1] = array_unique($match[1]); //usuwanie duplikatow*/
        //print_r($match);die;
$match=array(1=>array());
if (!empty($data)){
$dom=new DOMDocument;@$dom->loadHTML((string)$data);
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
        
        $newImage=array();//nowe zdjęcia
        foreach ($match[1] as $klucz=>$wartosc){
                                                    //jesli obrazek w base64
                                                    if (substr($wartosc,0,5)==='data:'){//echo('robie');
            $wartosc=explode('base64,',$wartosc);
            $wartosc=base64_decode($wartosc[1]);
    
                //tworzenie unikalnej nazwy pliku
                for ($i = 0; $i < 500; $i++){//echo($i);
        
        $rr=md5(time().rand(0,9999));
        //echo('>>'.$value.">>");
        //echo($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr.'>>');
        if (!file_exists($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr)){
        //zapis danych do pliku
        file_put_contents($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr,$wartosc);
        
        //zamiana danych w html
        $data=str_replace($match[1][$klucz],$this->DownloadUrl.'/picture2/'.$rr,$data);
        
        array_push($newImage, $rr);//dodanie nowego zdjęcia
        
        break;
        }
        
                }

            //echo($wartosc."\r\n");
                                                    }
        }
        
//print_r($sql->getId());
//print_r($sql->getTitle());
//print_r(get_class_methods($sql));
//die;

//jesli tresc zawiera zbyt wiele znakow
if (strlen($data)>1000000){

//usuwanie wczesniej wgranych plikow
foreach ($newImage as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}

$response->setData('bad Request');
$response->setStatusCode(400);
return $response;
}

    $this->imageSize = $imageSize;

$entityManager = $doctrine->getManager();
$sql = $entityManager->getRepository('App\Entity\Stopka1')->findBy(array('user'=>$user));

if (count($sql)===0){//nowe dane

    $catt1 = new Stopka1();
    $catt1->setUser($user);
    $catt1->setData('ÿ');
    $entityManager->persist($catt1);
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Stopka1','data',(int)$catt1->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$catt1->getId(),$data);

}else{//aktualizacja danych

    $sql[0]->setData('ÿ');
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Stopka1','data',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$sql[0]->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$sql[0]->getId(),$data);

}



}

$response->setStatusCode(200);
$response->setData($data);
return $response;

    }
}
