<?php

namespace App\Controller;

use App\Entity\Podstrony;

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


class Upload6Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    //private $doctrine;
    private $DownloadUrl='https://api.symetryczny.pl';
    private $imageSize;
    private sqlBuforController $sqlBufor;

    #[Route('/api/upload6', name: 'upload6', methods: ['GET', 'POST'])]
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

        //$CategoryId=addslashes((string)$request['CategoryId']);
        
        $data=trim($request['postData']);
        
//nr - numer wiersza dka aktualizacji treści podstrony 
$tab=array('user'=>$user);
if ((int)$request['nr']!==(int)0){$tab['id']=(int)$request['nr'];}

        
//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$data,(int)0) );die();
//jesli przekroczony rozmiar pojemnosci konta || (nie ma utworzonej recenzjii && przekroczony limit podstron)
if ( ($accountSize->getSize((string)$data,(int)0)['limityPrzekroczone']['size']===1) || ((int)$request['nr']===(int)0 && $accountSize->getSize((array)[],(int)0)['limityPrzekroczone']['page']===1) ){

$response->setData('Przekroczony limit pojemności konta');
$response->setStatusCode(423);
return $response;

}
        
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
        //print_r($match);die;
        
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


$entityManager = $doctrine->getManager();
$sql = $entityManager->getRepository('App\Entity\Podstrony')->findBy($tab);

$this->imageSize = $imageSize;
$sekcje = clone $imageSize;

//nazwa pliku
$Title=(string)$request['title'];
if (strlen($Title)>100){$Title=substr($Title, 0, 100);}
if (strlen($Title)<1){$Title='Tytuł';}

//jelsi nie podany numer rekordu sql to tworzenie nowej tresci
if ((int)$request['nr']===(int)0){//nowe dane

    $catt1 = new Podstrony();
    $catt1->setUser($user);
    $catt1->setData('ÿ');
    $catt1->setTitle('ÿ');
    $catt1->setTime(new \DateTime());
    $entityManager->persist($catt1);
        $polece=0;//tworzenie nowej postrony
        
        
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Podstrony','data',(int)$catt1->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    //bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());
$this->sqlBufor->addPodstrony($catt1->getId(),$Title,$data,null);
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$catt1->getId(),$Title);
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$catt1->getId(),$data);

//aktualizacja danych
}else{

    //jesli jest tresc
    if (strlen(trim($data))!==0){
    
    $sql[0]->setData('ÿ');
    $sql[0]->setTitle('ÿ');
        $polece=1;//aktualizacja tresci
        
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Podstrony','data',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    //bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());
$this->sqlBufor->addPodstrony($sql[0]->getId(),$Title,$data,null);
        
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$sql[0]->getId(),$Title);
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$sql[0]->getId(),$data);
    
    //jsli brak tresci to kasowanie wpisu 
    }else{
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Podstrony','data',(int)$sql[0]->getId(),(array)[],(array)[]);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    //usuwanie zdjec w sekcjach
    $sekcje->setValue('App\Entity\Podstrony','sekcje',(int)$sql[0]->getId(),(array)[],(array)[]);
    $sekcje->go();
    
    //bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());
$this->sqlBufor->addPodstrony($sql[0]->getId(),null,null,null);
    
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$sql[0]->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$sql[0]->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$sql[0]->getId());
    
    $entityManager->remove($sql[0]);
    
        $polece=2;//kasowanie treści podstrony
    }
    
    
    $entityManager->flush();
    
}

//usuwanie rekordu sql
//$entityManager->remove($sql[0]);

//$entityManager->flush();
//print_r($catt1->getId());

}

$response->setStatusCode(200);
$response->setData(array('data'=>$data,'title'=>$Title,'polece'=>$polece));
return $response;

    }
}
