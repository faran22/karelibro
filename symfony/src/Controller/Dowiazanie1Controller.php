<?php
//dowiazanie produktu rodzica
//skrypt nie byl sprawdzany po utworzeniu funkcjonalnosci bufora danych oraz limitu produktow jakie moga zostac utworzone na koncie

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

//use App\Entity\Domain1;
use App\Entity\Cat1;

//use Symfony\Component\HttpFoundation\File\Exception\FileException;
//use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
//use Symfony\Component\String\Slugger\SluggerInterface;

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

use Doctrine\Persistence\ManagerRegistry;


class Dowiazanie1Controller extends AbstractController
{
    private $containerbag;
    private $apiauthorizecontroller;
    //private $doctrine;
    private $DownloadUrl='https://api.symetryczny.pl';

    #[Route('/api/dowiazanie1', name: 'dowiazanie1', methods: ['GET', 'PUT'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, AccountSizeController $accountSize): JsonResponse
    {
    
    $this->containerbag = $containerBag;
    
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
    
    $dane=(array)json_decode(trim((string)$request->getContent()),true);
    $error=array();
    
    //domeny laczace dziecka z ktorymi dziecko moze polaczyc rodzica
    $connecteddomain=$user->getConnecteddomain();
    if ($connecteddomain===null){array_push($error,'nie znaleziono domeny dziecka');goto end0;}
    $connecteddomain=substr($connecteddomain, 1, -1);
    $connecteddomainChildren=(array)explode('*',$connecteddomain);
    
    if (!in_array($dane['domain'], $connecteddomainChildren)) {array_push($error,'nie znaleziono domeny dziecka');goto end0;}
    
    //domeny nie laczace wykorzystywane przez dziecko
    $connecteddomain=$user->getDomain();
    $connecteddomain=substr($connecteddomain, 1, -1);
    $DomainChildren=(array)explode('*',$connecteddomain);


    
//domeny dla domeny rodzica
//$qb = $doctrine->getRepository('App\Entity\User')->createQueryBuilder('o');
//$parent = $qb->where('o.id <> :user')
//    ->andWhere($qb->expr()->like('o.connecteddomain', ':domain'))
//   //->andWhere($qb->expr()->like('o.Product', ':product'))
//   ->setParameter('domain', '%*'.$dane['domain'].'*%')
//   ->setParameter('user', $user->getId())
//   //->setParameter('product', 'My Products%')
//   ->getQuery()
//   ->getResult();
   
//wyszukiwanie rodzica z domena podana przez dziecko
$qb = $doctrine->getRepository('App\Entity\User')->createQueryBuilder('o');
$parent = $qb->where('o.id <> :user')
    ->andwhere($qb->expr()->like('o.domain', ':domain'))
   //->andWhere($qb->expr()->like('o.Product', ':product'))
   ->setParameter('domain', '%*'.$dane['domain'].'*%')
   ->setParameter('user', $user->getId())
   //->setParameter('product', 'My Products%')
   ->getQuery()
   ->getResult();
   
//jesli nie ma rodzica z taka domena
if (count($parent)===0){array_push($error,'nie znaleziono rodzica z domeną');goto end0;}
    
    //domeny laczace rodzica ktore moze polaczyc z dzieckiem
    $connecteddomain=$parent[0]->getConnecteddomain();
    if ($connecteddomain===null){array_push($error,'nie znaleziono domeny łącżacej dziecko z rodzicem');goto end0;}
    $connecteddomain=substr($connecteddomain, 1, -1);
    $connecteddomainParent=(array)explode('*',$connecteddomain);
    
    //domeny nie laczace wukorzystywane przez rodzica
    //$connecteddomain=$parent[0]->getDomain();
    //$connecteddomain=substr($connecteddomain, 1, -1);
    //$DomainParent=(array)explode('*',$connecteddomain);
    
    //sprawdzanie czy u dziecka jest domena rodzica
    $bool=false;
    foreach ($connecteddomainParent as $value) {
        if (in_array($value, $DomainChildren)){$bool=true;break;}
    }
    if ($bool===false){array_push($error,'nie znaleziono domeny łącżacej dziecko z rodzicem');goto end0;}
    
    if (!is_numeric($dane['parent'])){array_push($error,'błędny numer łączonej treści');goto end0;}
    
//wyszukiwanie rodzica z domena podana przez dziecko
$qb = $doctrine->getRepository('App\Entity\Cat1')->createQueryBuilder('o');
$tresc = $qb->where('o.id = :product')
->andWhere('o.user = :user')
//->andwhere($qb->expr()->like('o.domain', ':domain'))
//->andWhere($qb->expr()->like('o.Product', ':product'))
//->setParameter('domain', '%*'.$dane['domain'].'*%')
->setParameter('user', $parent[0]->getId())
->setParameter('product', (int)$dane['parent'])
->getQuery()
->getResult();


//jesli nie ma rodzica z taka trescia
if (count($tresc)===0){array_push($error,'nie znaleziono treści rodzica');goto end0;}

//jesli dowiazanie do dziecka
if ($tresc[0]->getDowiazanie()!==null){array_push($error,'nie można dowiązać do produktu lub treści dziecka');goto end0;}
    
    //print_r($connecteddomainParent);
    //echo("\r\n\r\n\r\n");
    //print_r($connecteddomainChildren);
    //print_r($DomainChildren);
    //print_r($dane);
    //die('');
    
//jesli limit miejsca zostal przekroczony
//print_r( $accountSize->getSize((string)$data,(int)0) );die();
//jesli przekroczony rozmiar pojemnosci konta || (nie ma utworzonej recenzjii && przekroczony limit podstron)
if ( $accountSize->getSize((array)[],(int)0)['limityPrzekroczone']['page']===1 ){

$response->setData('Przekroczony limit pojemności konta');
$response->setStatusCode(423);
return $response;

}

    $entityManager = $doctrine->getManager();
    $Cat1 = new Cat1();
    $Cat1->setUser($user);
    $Cat1->setCategory((int)$dane['category']);
    $Cat1->setTitle($tresc[0]->getTitle());
    $Cat1->setDescription($tresc[0]->getDescription());
    $Cat1->setDescription2($tresc[0]->getDescription2());
    $Cat1->setWyswietlanie(0);
    $Cat1->setTimecreation(new \DateTime());
    $Cat1->setDowiazanie((int)$dane['parent']);
    $Cat1->setAny($tresc[0]->getAny());
    $Cat1->setPrice($tresc[0]->getPrice());
    $Cat1->setRecenzja($tresc[0]->getRecenzja());
    $entityManager->persist($Cat1);
    
    $entityManager->flush();
    
    //kopiowanie bufora plikowego bazy danych
    copy($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$tresc[0]->getId(),$this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$Cat1->getId());
    
    copy($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$tresc[0]->getId(),$this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$Cat1->getId());
    
    copy($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$tresc[0]->getId(),$this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$Cat1->getId());
    
    copy($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$tresc[0]->getId(),$this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$Cat1->getId());
    
    
end0:

//jesli są błędy    else    poprawnie
if (count($error)!==0){$response->setStatusCode(422);}else{$response->setStatusCode(204);}

$response->setData(array('data'=>null,'errorData'=>$error?$error:null));
return $response;
    
}


}
