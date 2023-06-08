<?php

namespace App\Controller;

use App\Entity\Szablon2;

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

class Upload10Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    //private $doctrine;
    private $DownloadUrl='https://api.symetryczny.pl';
    private $imageSize;

    #[Route('/api/upload10', name: 'upload10', methods: ['GET', 'POST'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, ImageSizeController $imageSize, AccountSizeController $accountSize): JsonResponse
    {
    $request2=$request;
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
    
if ($request2->isMethod('POST')){

$request=(array)json_decode(trim((string)$request2->getContent()),true);

        $CategoryId=(int)$request['CategoryId'];
        //$ProductId=(int)$request['ProductId'];
        
        
        $data=trim($request['postData']);
        
//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$data,(int)0) );die();
if ($accountSize->getSize((string)$data,(int)0)['limityPrzekroczone']['size']===1 || (int)$CategoryId<(int)0 || (int)$CategoryId>(int)250 ){

$response->setData('Przekroczony limit pojemności konta');
$response->setStatusCode(423);
return $response;

}


        //preg_match_all( '/<img .*src="([^"]+)"/i' , $data , $match );//odczyt src dla obrazkow
        //preg_match_all( '/<img.+src="([^"]+)"/U' , $data , $match );//odczyt src dla obrazkow
        /*preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $data , $match );//odczyt src dla obrazkow
        $match[0] = array_unique($match[0]); //usuwanie duplikatow
        $match[1] = array_unique($match[1]); //usuwanie duplikatow
        //print_r($match);die;*/
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
        


//die('eee');


$data=trim($data);

//jesli tresc zawiera zbyt wiele znakow
if (strlen($data)>1000000){

//usuwanie wczesniej wgranych plikow
foreach ($newImage as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}

$response->setData('bad Request');
$response->setStatusCode(400);
return $response;
}


//echo($CategoryId);
//echo('>>>');die();

$this->imageSize = $imageSize;

$entityManager = $doctrine->getManager();

$tab=array('user'=>$user,'category'=>$CategoryId,'product'=>1);

$sql = $entityManager->getRepository('App\Entity\Szablon2')->findBy($tab);

//jesli sa dane i brak rekordu w sql
//if (strlen($data)>0 && (int)count($sql)===(int)0){
if ((int)count($sql)===(int)0){
    $szablon2 = new Szablon2();
    $szablon2->setUser($user);
    $szablon2->setCategory($CategoryId);
    $szablon2->setProduct(1);
    $szablon2->setData('ÿ');
    $szablon2->setSekcje([]);
    
    $entityManager->persist($szablon2);
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Szablon2','data',(int)$szablon2->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$Szablon2->getId(),$data);
    
}
//jesli sa dane i jest rekord w sql
//else if (strlen($data)>0 && (int)count($sql)!==(int)0){
else{
    $sql[0]->setData('ÿ');
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Szablon2','data',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$sql[0]->getId(),$data);
    
    }
//}
//jesli brak danych i jest rekord w sql
//else if (strlen($data)===0 && (int)count($sql)!==(int)0){
    //$entityManager->remove($sql[0]);
//}

//usuwanie rekordu sql
//$entityManager->remove($sql[0]);


//print_r($catt1->getId());

}

$response->setStatusCode(200);
$response->setData(array('data'=>$data));
return $response;

    }
}
