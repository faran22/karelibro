<?php

namespace App\Controller;

//use App\Entity\Catt1;
//use App\Entity\Catt2;

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

class Upload4Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    //private $doctrine;
    private $imageSize;
    
    private $DownloadUrl='https://api.symetryczny.pl';
    private sqlBuforController $sqlBufor;

    #[Route('/api/upload4', name: 'upload4', methods: ['GET', 'POST'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, ImageSizeController $imageSize, AccountSizeController $accountSize, sqlBuforController $sqlBufor): JsonResponse
    {
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
    
if ($request->isMethod('POST')){

$request=(array)json_decode(trim((string)$request->getContent()),true);

        $CategoryId=addslashes((string)$request['CategoryId']);
        
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
        
$entityManager = $doctrine->getManager();
//$sql = $entityManager->getRepository('App\Entity\Cat'.(string)$request['CategoryId'])->find($request['tresc']);//rekord ktory ma byc zmieniony
$sql = $entityManager->getRepository('App\Entity\Cat1')->find($request['tresc']);

//print_r($sql->getId());
//print_r($sql->getTitle());
//print_r(get_class_methods($sql));
//die;

//jesli tresc zawiera zbyt wiele znakow
if (strlen($data)>1000000 || /*!is_numeric($request['CategoryId']) ||*/ !is_numeric($request['tresc']) || $sql->getUser()->getUsername()!==$user->getUsername()){

//usuwanie wczesniej wgranych plikow
foreach ($newImage as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}

$response->setData('bad Request');
$response->setStatusCode(400);
return $response;
}

$sql->setRecenzja('ÿ');//dodanie nowych danych
$entityManager->flush();//zapis nowych danych

    $this->imageSize = $imageSize;
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Cat1','recenzja',(int)$sql->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();

file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$sql->getId(),$data);

//bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());$this->sqlBufor->addCat1($sql->getId(),null,null,null,$data);

//echo($sql->getUser()->getUsername());
//echo($user->getUsername());
//print_r(get_class_methods($sql));


/*        
    //zapis danychy w bazie danych
    $entityManager = $doctrine->getManager();
    //wyszukiwanie id rekordu przypisany uzytkownikowi z tabeli kategoria
    $query = $entityManager->createQuery(
            'SELECT p.id
            FROM App\Entity\Catt'.$CategoryId.' p
            WHERE p.user = :value'
    )->setParameter('value', $user->getId());
    $result=$query->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY);
    //print_r($result);
    
//aktualizacja danych w tabeli kategoria
//$entityManager = $doctrine->getManager();
$category = $entityManager->getRepository('App\Entity\Catt'.$CategoryId.'')->find((int)$result[0]['id']);
//$category->setUser($user);
$category->setDane($data);
$entityManager->flush();
*/

}

$response->setStatusCode(200);
$response->setData($data);
return $response;

    }
}
