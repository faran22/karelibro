<?php

namespace App\Controller;

//use App\Entity\Cat1;
use App\Entity\Catt1;

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

class Upload2Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    private $DownloadUrl='https://api.symetryczny.pl';
    //private $doctrine;
    private $imageSize;
    private sqlBuforController $sqlBufor;

    #[Route('/api/upload2', name: 'upload2', methods: ['GET', 'POST'])]
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
//$request=$request->getContent();
//print_r ($request);
//die('----');

        $CategoryId=(int)$request['CategoryId'];
        //echo("==$CategoryId==");
        
        $data=trim($request['postData']);
        
$entityManager = $doctrine->getManager();
$sql = $entityManager->getRepository('App\Entity\Catt1')->findBy(array('category'=>$CategoryId,'user'=>$user), array('id'=>'DESC'));


//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$data,(int)0) );die();
//jesli przekroczony rozmiar pojemnosci konta || (nie ma utworzonej recenzjii && przekroczony limit podstron)
if (($accountSize->getSize((string)$data,(int)0)['limityPrzekroczone']['size']===1) || (count($sql)===0 && $accountSize->getSize((array)[],(int)0)['limityPrzekroczone']['page']===1) || $CategoryId>250 || $CategoryId<0){

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
        
        //zamiana samego obrazka base64 na nazwe pliku z zapisanym obrazkiem
        //$match[1][$klucz]=str_replace($match[1][$klucz],'https://testtest4.site/picture2/'.$rr,$match[0][$klucz]);
        
        //zamiana wzorca <img ... src="...base64," na wzorzec z nazwą pliku <img ... src="image001"
        //$data=str_replace($match[0][$klucz],$match[1][$klucz],$data);
        
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

//jesli tresc zawiera zbyt wiele znakow
if (strlen($data)>1000000){

//usuwanie wczesniej wgranych plikow
foreach ($newImage as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}

$response->setData('bad Request');
$response->setStatusCode(400);
return $response;
}


$this->imageSize = $imageSize;
//die('catt1');

//print_r($CategoryId);


//print_r($sql);//print_r(get_class_methods($sql));

///jesli nie ma danych i jest rekord sql
if (strlen($data)===0 && count($sql)>0){

    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Catt1','dane',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    $this->imageSize->go();
    
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$sql[0]->getId());
    
//bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());$this->sqlBufor->addCatt1($sql[0]->getId(),null);
    
    $entityManager->remove($sql[0]);
    
    $entityManager->flush();

///jesli sa dane i jest rekord sql
}else if (strlen($data)!==0 && count($sql)>0){

    $sql[0]->setDane('ÿ');
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Catt1','dane',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$sql[0]->getId());
    $this->imageSize->go();
    
    //bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());$this->sqlBufor->addCatt1($sql[0]->getId(),$data);
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$sql[0]->getId(),$data);

///jesli sa dane i nie ma rekordyu sql
}else if (strlen($data)!==0 && count($sql)===0){

    $catt1 = new Catt1();
    $catt1->setUser($user);
    $catt1->setCategory((int)$CategoryId);
    $catt1->setDane('ÿ');
    $entityManager->persist($catt1);
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Catt1','dane',(int)$catt1->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
//bufor sql danych ktore beda wyszukiwane
$this->sqlBufor->setId((int)$user->getId());$this->sqlBufor->addCatt1($catt1->getId(),$data);

    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$catt1->getId(),$data);

}

/*
//print_r(count($sql));
if (count($sql)===0){//nowe dane

    $catt1 = new Catt1();
    $catt1->setUser($user);
    $catt1->setCategory((int)$CategoryId);
    $catt1->setDane('ÿ');
    $entityManager->persist($catt1);
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Catt1','dane',(int)$catt1->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$catt1->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$catt1->getId(),$data);

}else{//aktualizacja danych

    $sql[0]->setDane('ÿ');
    
    $entityManager->flush();
    
    //dodawanie/usuwanie zdjęć
    $this->imageSize->setValue('App\Entity\Catt1','dane',(int)$sql[0]->getId(),(string)$data,(array)$newImage);
    //$this->imageSize->setSqlId((int)$sql[0]->getId());
    $this->imageSize->go();
    
    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$sql[0]->getId(),$data);

}
*/


//file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$data->getId(),$data);

//foreach($sql as $data) {
//print_r(get_class_methods($data));
//}

// die;
//         
//     //zapis danychy w bazie danych
//     $entityManager = $doctrine->getManager();
//     //wyszukiwanie id rekordu przypisany uzytkownikowi z tabeli kategoria
//     $query = $entityManager->createQuery(
//             'SELECT p.id
//             FROM App\Entity\Catt'.$CategoryId.' p
//             WHERE p.user = :value'
//     )->setParameter('value', $user->getId());
//     $result=$query->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY);
//     //print_r($result);
//     
// //aktualizacja danych w tabeli kategoria
// //$entityManager = $doctrine->getManager();
// $category = $entityManager->getRepository('App\Entity\Catt'.$CategoryId.'')->find((int)$result[0]['id']);
// //$category->setUser($user);
// $category->setDane($data);
// $entityManager->flush();

}

$response->setStatusCode(200);
$response->setData($data);
return $response;

    }
}
