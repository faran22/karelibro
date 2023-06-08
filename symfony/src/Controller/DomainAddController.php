<?php

namespace App\Controller;

use App\Entity\User;
use App\Entity\Domain1;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class DomainAddController extends AbstractController
{

private $apiauthorizecontroller;

    #[Route('/api/domainadd1', name: 'domainadd1', methods: ['put'])]
    public function new(ManagerRegistry $doctrine, Request $request, UserPasswordEncoderInterface $passwordEncoder, ApiAuthorizeController $apiauthorizecontroller): JsonResponse
    {
$response=new JsonResponse();

$error=[];

    $this->apiauthorizecontroller = $apiauthorizecontroller;
    //jesli brak autoruzacji
    $user=$this->apiauthorizecontroller->getUser();
    if (!$user){
    $response->setData('unauthorized');
    $response->setStatusCode(401);
    return $response;
    }
    
$dane=(array)json_decode(trim((string)$request->getContent()),true);
$dane['nazwa']=(string)$dane['nazwa'];
$dane['nazwa']=trim($dane['nazwa']);
$dane['nazwa'] = mb_strtolower($dane['nazwa']);
//print_r($dane);



//UWAGA NA DOMENE BO APACHE MOZE PRZESTAC DZIALAC
//jesli istnieje nazwa &&  (znajdzie * || nie znajdzie kroplki || ponad 60 znaków)
if (strlen($dane['nazwa'])>0 &&  (strstr($dane['nazwa'], '*') || !strstr($dane['nazwa'], '.') || strlen($dane['nazwa'])>100)){
array_push($error,'błędna nazwa domeny');
}
if (strlen($dane['nazwa'])>0 && !(count($error)===0 && preg_match("/^([a-z0-9d](-*[a-z0-9d])*)(.([a-z0-9d](-*[a-z0-9d])*))*$/i", $dane['nazwa']) && preg_match("/^.{1,253}$/", $dane['nazwa']) && preg_match("/^[^.]{1,63}(.[^.]{1,63})*$/", $dane['nazwa'])) ){
array_push($error,'błędna nazwa domeny');
}
if (strlen($dane['nazwa'])>0 && count($error)===0 && !preg_match('/^[a-z0-9-.]+$/', $dane['nazwa'])){array_push($error,'błędna nazwa domeny');}




// $qb = $doctrine->getRepository('App\Entity\User')->createQueryBuilder('o');
// $userDomain = //$qb->where('o.domain = :domain')
//     $qb->where($qb->expr()->like('o.domain', ':domain'))
//    //->andWhere($qb->expr()->like('o.Product', ':product'))
//    //->setParameter('domain', '%*test1*%')
//    ->setParameter('domain', '%*'.$dane['nazwa'].'*%')
//    //->setParameter('product', 'My Products%')
//    ->getQuery()
//    ->getResult();
$qb = $doctrine->getRepository('App\Entity\Domain1')->createQueryBuilder('o');
$userDomain = $qb->where('o.nazwa = :domain')
    //$qb->where($qb->expr()->like('o.domain', ':domain'))
   //->andWhere($qb->expr()->like('o.Product', ':product'))
   //->setParameter('domain', '%*test1*%')
   ->setParameter('domain', $dane['nazwa'])
   //->setParameter('product', 'My Products%')
   ->getQuery()
   ->getResult();


//echo('>');echo count($userDomain);echo('<');

//id uzytkownika ktoryc chce podpiac domene
$userId=$user->getId();
//id uzytkownika w u ktorego domena jest podpięta
$userDomainId=-1;

//jelsi znaleziono uzytkownika z wybraną domeną
if (count($userDomain)>0){
$userDomainId=$userDomain[0]->getUser()->getId();
}


//jesli znaleziono domene juz podpieta i uzytkownicy sa rozni 
if (strlen($dane['nazwa'])>0 && $userDomainId!==-1 && $userId!==$userDomainId){
array_push($error,'domena użyta przez innego użytkownika');
}


if (count($error)===0){

$entityManager = $doctrine->getManager();

//odczyt klucza dla metody platnosci paynow
    $Domain1 = $entityManager->getRepository('App\Entity\Domain1')->findBy(array('user'=>$user));
    //$Domain1 = new Domain1();
    //$Domain1->setUser($user);
    $Domain1[0]->setNazwa($dane['nazwa']);
    if (strlen($dane['nazwa'])>0){
    $Domain1[0]->setDodanie(new \DateTime('-3 hour'));//w sql jest godzina inna niz w php
    }else{
    $Domain1[0]->setDodanie(new \DateTime('2021-01-01 -1 day'));
    }
    $Domain1[0]->setSslpobieranie(null);
    $Domain1[0]->setSslwaznosc(null);

    
    
$domeny=$user->getDomain();
$domeny=substr($domeny, 1, -1);
$domeny=(array)explode('*',$domeny);
foreach ($domeny as $key=>$value) {
    $value=(string)$value;
    if (strstr($value, '.')){unset($domeny[$key]);}
}
//jesli istnieje domena to dodawanie
if (strlen($dane['nazwa'])>0){array_push($domeny,$dane['nazwa']);}
$domeny='*'.(string)implode('*',$domeny).'*';

$user->setDomain($domeny);

$entityManager->persist($Domain1[0]);
$entityManager->persist($user);

    //print_r($domeny);
$entityManager->flush();

}


//jesli są błędy    else    poprawnie
if (count($error)!==0){$response->setStatusCode(422);}else{$response->setStatusCode(204);}

$response->setData(array('data'=>null,'errorData'=>$error?$error:null));
return $response;


    }
}
