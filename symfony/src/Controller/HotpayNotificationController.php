<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Doctrine\ORM\EntityManagerInterface;

class HotpayNotificationController extends AbstractController
{
    #[Route('/hotpaynotification/{page}', name: 'hotpay_notification')]
    public function index($page, EntityManagerInterface $entityManager): Response
    {
    
$this->entityManager = $entityManager;
  
//wyszukiwanie uzytkownika na podstawie domeny strony
//$user = $this->entityManager->getRepository('App\Entity\User')->findBy(array('domain'=>'%test1'));
$qb = $this->entityManager->getRepository('App\Entity\User')->createQueryBuilder('o');
$user = //$qb->where('o.domain = :domain')
    $qb->where($qb->expr()->like('o.domain', ':domain'))
   //->andWhere($qb->expr()->like('o.Product', ':product'))
   ->setParameter('domain', '%*'.$page.'*%')
   //->setParameter('product', 'My Products%')
   ->getQuery()
   ->getResult();
   
//odczyt klucza dla metody platnosci
$hotpay = $this->entityManager->getRepository('App\Entity\Hotpay')->findBy(array('user'=>$user[0]));

//wyszukiwanie zamówienia w sql    
$zamowienia = $this->entityManager->getRepository('App\Entity\Orders')->findBy(array('user'=>$user[0],'uniq'=>$_POST['ID_ZAMOWIENIA']));

if($_POST["STATUS"]==='SUCCESS' && ( hash("sha256","".$hotpay[0]->getKlucz().";".$_POST["KWOTA"].";".$_POST["ID_PLATNOSCI"].";".$_POST["ID_ZAMOWIENIA"].";".$_POST["STATUS"].";".$_POST["SEKRET"]) == $_POST["HASH"] ) && (float)$_POST["KWOTA"]===(float)$zamowienia[0]->getPaymentid()){

//ob_start();
//print_r($_POST);
//print_r($hotpay[0]->getKlucz());
//$bufor = ob_get_clean();
//file_put_contents('./tt-'.microtime('true'),$bufor);

$zamowienia[0]->setStatus(99);
$zamowienia[0]->setPaymentid((string)$_POST["ID_PLATNOSCI"]);
$this->entityManager->persist($zamowienia[0]);
$this->entityManager->flush();

}

    
        return new Response(
            //'response hotpay '.$page
            ''
        );
    }
}
