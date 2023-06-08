<?php

namespace App\Controller;

//use App\Entity\Home;

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

class Upload12Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    //private $doctrine;
    private $DownloadUrl='https://api.symetryczny.pl';
    private $imageSize;
    private sqlBuforController $sqlBufor;

    #[Route('/api/upload12', name: 'upload12', methods: ['GET', 'POST'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, ImageSizeController $imageSize, AccountSizeController $accountSize, sqlBuforController $sqlBufor): JsonResponse
    {
    $request2=$request;
    $response=new JsonResponse();
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    //$this->doctrine = $doctrine;
    $this->sqlBufor=$sqlBufor;
    
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

//sekcje są rozdzielone na tablice i tutaj jest konwertowanie do jednego stringa
$arraystring='';foreach ($request['postData'] as $wartosc){ $arraystring=$arraystring.' ÿÿÿ '.$wartosc['value']; }



//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$arraystring,(int)0) );die();
if ($accountSize->getSize((string)$arraystring,(int)0)['limityPrzekroczone']['size']===1){

$response->setData('Przekroczony limit pojemności konta');
$response->setStatusCode(423);
return $response;

}




$newImage=array();//nowe zdjęcia
                                                        foreach ($request['postData'] as $klucz2=>$wartosc2){
        
        $data=trim($wartosc2['value']);
        //preg_match_all( '/<img .*src="([^"]+)"/i' , $data , $match );//odczyt src dla obrazkow
        //preg_match_all( '/<img.+src="([^"]+)"/U' , $data , $match );//odczyt src dla obrazkow
        /*preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $data , $match );//odczyt src dla obrazkow
        $match[0] = array_unique($match[0]); //usuwanie duplikatow
        $match[1] = array_unique($match[1]); //usuwanie duplikatow*/
$match=array(1=>array());
if (!empty($data)){
$dom=new DOMDocument;@$dom->loadHTML((string)$data);
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
        
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
        
        
        $data=trim($data);
        $request['postData'][$klucz2]['value']=$data;
        //echo $data;
                                                        }
                                                        
//print_r($request['postData']);
//die();



//jesli tresc zawiera zbyt wiele znakow lub zbyt wiele sekcji
if (strlen(serialize($request['postData']))>5000000 || count($request['postData'])>200){

//usuwanie wczesniej wgranych plikow
foreach ($newImage as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}

$response->setData('bad Request');
$response->setStatusCode(400);
return $response;
}


$entityManager = $doctrine->getManager();

$tab=array('user'=>$user);

//jesli sa dodatkowe parametry
if (is_array($request['any'])){foreach ($request['any'] as $klucz=>$wartosc){$tab[$klucz]=$wartosc;}}

//nr - numer wiersza dka aktualizacji treści podstrony 
//if ((int)$request['nr']!==(int)0){$tab['id']=(int)$request['nr'];}

$sql = $entityManager->getRepository('App\Entity\Podstrony')->findBy($tab);

//print_r($request);
//echo('test');die();



//jesli sa dane i brak rekordu w sql
if ((int)count($sql)===(int)0){
    //$Home = new Home();
    //$Home->setUser($user);
    //$Home->setData('');
    //$Home->setSekcje($request['postData']);
    //$entityManager->persist($Home);
    $response->setData('bad Request');
    $response->setStatusCode(400);
    return $response;

}else{
//wstawianie danych
//else{
//jesli sa dane i jest rekord w sql
//else if (strlen($data)>0 && (int)count($sql)!==(int)0){
    $sql[0]->setSekcje(["ÿ"]);
}
//}
//jesli brak danych i jest rekord w sql
//else if (strlen($data)===0 && (int)count($sql)!==(int)0){
//    $entityManager->remove($sql[0]);
//}

/*
//jelsi tworzenie rekordu w tabeli
if ((int)count($sql)===(int)0){//nowe dane

    $catt1 = new Home();
    $catt1->setUser($user);
    $catt1->setData($data);
    $entityManager->persist($catt1);

//aktualizacja danych
}else{

    //jesli jest tresc
    if (strlen($data)!==0){
    
    $sql[0]->setData($data);
    
    //jsli brak tresci to kasowanie wpisu 
    }else{
    
    $entityManager->remove($sql[0]);
    
    }
    
}*/

//usuwanie rekordu sql
//$entityManager->remove($sql[0]);

$entityManager->flush();
//print_r($catt1->getId());


    $this->imageSize = $imageSize;
    
    //sekcje są rozdzielone na tablice i tutaj jest konwertowanie do jednego stringa
    $arraystring='';foreach ($request['postData'] as $wartosc){ $arraystring=$arraystring.' ÿÿÿ '.$wartosc['value']; }
    
    //bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());
$this->sqlBufor->addPodstrony($sql[0]->getId(),null,null,str_replace(' ÿÿÿ ',' ',$arraystring));

    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Podstrony','sekcje',(int)$sql[0]->getId(),(string)$arraystring,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();

file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$sql[0]->getId(),json_encode($request['postData']));


}

$response->setStatusCode(200);
$response->setData(array('data'=>$request['postData']));
return $response;

    }
}
