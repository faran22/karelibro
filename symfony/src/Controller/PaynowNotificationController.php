<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Doctrine\ORM\EntityManagerInterface;

use Paynow\Notification;

class PaynowNotificationController extends AbstractController
{

private $entityManager;


    #[Route('/paynownotification/{page}', name: 'paynow_notification')]
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
   
//odczyt klucza dla metody platnosci paynow
$paynow = $this->entityManager->getRepository('App\Entity\Paynow')->findBy(array('user'=>$user[0]));

$payload = trim(file_get_contents('php://input'));
$headers = getallheaders();
$notificationData = (array)json_decode($payload, true);

try {
    new Notification($paynow[0]->getKlucz(), $payload, $headers);

//wyszukiwanie zamówienia w sql    
$zamowienia = $this->entityManager->getRepository('App\Entity\Orders')->findBy(array('user'=>$user[0],'uniq'=>$notificationData['externalId'],'paymentid'=>$notificationData['paymentId']));

//jesli oplacone
if ($notificationData['status']==='CONFIRMED'){
$zamowienia[0]->setStatus(99);
$this->entityManager->persist($zamowienia[0]);
$this->entityManager->flush();
}

//ob_start();
////print_r($_SERVER);
////print_r($_POST);
////print_r($_GET);
////print_r($payload);
////print_r($headers);
//print_r($page);
//echo '>>>'.count($zamowienia).'<<<';
//print_r($notificationData);
//$bufor = ob_get_clean();
//file_put_contents('./tt-'.microtime('true'),$bufor);


    
} catch (Exception $exception) {
    header('HTTP/1.1 400 Bad Request', true, 400);
}


    

    
        return new Response(
            'response paynow '.$page
        );
    }
}
