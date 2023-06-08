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

class DomainAddController2 extends AbstractController
{

private $apiauthorizecontroller;

    #[Route('/api/domainadd2', name: 'domainadd2', methods: ['put'])]
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
//$dane['nazwa']=(string)$dane['nazwa'];
//$dane['nazwa']=trim($dane['nazwa']);
//$dane['nazwa'] = mb_strtolower($dane['nazwa']);
if (is_array($dane['nazwa'])){
    foreach ($dane['nazwa'] as &$value) {
        $value=(string)$value;
        $value=trim($value);
        $value=mb_strtolower($value);
        
                                                        //UWAGA NA DOMENE BO APACHE MOZE PRZESTAC DZIALAC
if (count($dane['nazwa'])>30){array_push($error,'zbyt wiele domen');break;}
if (strstr($value, '*') || !strstr($value, '.') || strlen($value)>100){
array_push($error,'błędna nazwa domeny '.$value);break;
}
if (!(preg_match("/^([a-z0-9d](-*[a-z0-9d])*)(.([a-z0-9d](-*[a-z0-9d])*))*$/i", $value) && preg_match("/^.{1,253}$/", $value) && preg_match("/^[^.]{1,63}(.[^.]{1,63})*$/", $value)) ){
array_push($error,'błędna nazwa domeny '.$value);break;
}
if (!preg_match('/^[a-z0-9-.]+$/', $value)){
array_push($error,'błędna nazwa domeny '.$value);break;
}

    }
    $dane['nazwa'] = array_unique($dane['nazwa']);
}



if (is_array($dane['nazwa']) && count($error)===0){

foreach ($dane['nazwa'] as &$value) {

     $qb = $doctrine->getRepository('App\Entity\Domain1')->createQueryBuilder('o');
     $userDomain = $qb->where('o.nazwa = :domain')
     //$qb->where($qb->expr()->like('o.domain', ':domain'))
    //->andWhere($qb->expr()->like('o.Product', ':product'))
    //->setParameter('domain', '%*test1*%')
    ->setParameter('domain', $value)
    //->setParameter('product', 'My Products%')
    ->getQuery()
    ->getResult();
    
    //jesli nie znajdzie domeny na zadnym koncie
    if (count($userDomain)===0){
        array_push($error,'brak domeny '.$value);break;
    }else if ($userDomain[0]->getUser()->getId()===$user->getId()){
        array_push($error,'domena '.$value.' użyta na kocie zgłaszającym');break;
    }
    
    
    //echo(count($userDomain).'-');

}


}


if (count($error)===0){

    $data=null;
    //jesli sa domeny
    if (is_array($dane['nazwa'])){$data=(string)'*'.implode('*',$dane['nazwa']).'*';}
    
    $entityManager = $doctrine->getManager();
    $user->setConnecteddomain($data);
    $entityManager->persist($user);
    $entityManager->flush();

}


//print_r($data);
//print_r($dane);
//print_r($error);


//jesli są błędy    else    poprawnie
if (count($error)!==0){$response->setStatusCode(422);}else{$response->setStatusCode(204);}

$response->setData(array('data'=>null,'errorData'=>$error?$error:null));
return $response;


    }
}
