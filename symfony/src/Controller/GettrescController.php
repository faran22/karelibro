<?php

namespace App\Controller;


use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Component\HttpFoundation\Request;

class GettrescController extends AbstractController
{


    #[Route('/api/gettresc1', name: 'gettresc1', methods: ['post'])]
    public function new(ManagerRegistry $doctrine, Request $request): JsonResponse
    {
$paginacja=9;
    
    
$entityManager = $doctrine->getManager();
$response=new JsonResponse();


$dane=(array)json_decode(trim((string)$request->getContent()),true);
//$dane['id']=150;

//echo('>>');print_r($dane);

//produkt/tresc ktora ma byc wyswietlana
$produkt = $doctrine->getRepository('App\Entity\Cat1')->findBy(array('id'=>$dane['id']));
$produktUser=(string)$produkt[0]->getUser();
$produktCategory=(int)$produkt[0]->getCategory();

//domeny uzytkownika do ktorego nalezy tresc
$user = $doctrine->getRepository('App\Entity\User')->findBy(array('username'=>$produktUser));
$userDomain=$user[0]->getDomain();
$userDomain=(array)explode('*',$userDomain);array_shift($userDomain);array_pop($userDomain);

//wszystkie produkty uzytkownika z okreslonej kategorii
$qb = $doctrine->getRepository('App\Entity\Cat1')->createQueryBuilder('o');
$products = //$qb->where('o.domain = :domain')
    //$qb->where($qb->expr()->like('o.domain', ':domain'))
    $qb->select('o.id')
    ->where('o.category = :category')
    ->andWhere('o.user = :user')
    ->andWhere('o.wyswietlanie = :wyswietlanie')
   //->andWhere($qb->expr()->like('o.Product', ':product'))
   ->setParameter('category', $produktCategory)
   ->setParameter('user', $user[0]->getId())
   ->setParameter('wyswietlanie', (bool)$produkt[0]->getWyswietlanie())
   //->setParameter('user', 2)
   //->setParameter('product', 'My Products%')
   ->orderBy('o.id', 'DESC')
   ->getQuery()
   ->getResult();
//print_r($products);
$userAllProductForCategory=array();
foreach ($products as $data){array_push($userAllProductForCategory,$data['id']);}

//okreslanie paginacji dla produktu
$paginacjaProd=0;
$userAllProductForCategory=array_chunk($userAllProductForCategory,$paginacja);
foreach ($userAllProductForCategory as $klucz=>$value){ if (in_array((int)$dane['id'],$value)){$paginacjaProd=$klucz+1;break;} }

//sprawdzanie czy produkt jest wysiwetlany w aktualnie uzywanej domenie
$ddomain=0;
if (in_array($dane['domain'], $userDomain)) {/*echo('domena ta sama');*/}else{
$ddomain=1;
$dane['domain']=$userDomain[0];
foreach ($userDomain as $value){ if (strstr($value, '.')){$dane['domain']=$value;break;} }
//echo('domena inna');
}//echo("\r\n");

//echo('domenyUserProduct>');print_r($userDomain);echo("\r\n");
//echo('userAllProductForCategory>');print_r($userAllProductForCategory);echo("\r\n");
//echo('domena>');echo($ddomain.'>'.$dane['domain']);echo("\r\n");
//echo('product>');print_r($produkt[0]->getId());echo("\r\n");
//echo('category>');print_r($produktCategory);echo("\r\n");
//echo('paginacja>');print_r($paginacjaProd);echo("\r\n");


$response->setData(array('domenaStan'=>(int)$ddomain,'domena'=>(string)$dane['domain'],'product'=>(int)$produkt[0]->getId(),'category'=>(int)$produktCategory,'paginacja'=>(int)$paginacjaProd,'aktywnosc'=>(int)$produkt[0]->getWyswietlanie()));

return $response;


    }
}
