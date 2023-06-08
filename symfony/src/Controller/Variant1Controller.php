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
use Rogervila\ArrayDiffMultidimensional;

class Variant1Controller extends AbstractController
{

private $apiauthorizecontroller;

    #[Route('/api/variant1', name: 'variant1', methods: ['put'])]
    public function new(ManagerRegistry $doctrine, Request $request, UserPasswordEncoderInterface $passwordEncoder, ApiAuthorizeController $apiauthorizecontroller): JsonResponse
    {
    
$entityManager = $doctrine->getManager();
$response=new JsonResponse();

$error=[];
$odp=[];

    $this->apiauthorizecontroller = $apiauthorizecontroller;
    //jesli brak autoruzacji
    $user=$this->apiauthorizecontroller->getUser();
    if (!$user){
    $response->setData('unauthorized');
    $response->setStatusCode(401);
    return $response;
    }
    
$dane=(array)json_decode(trim((string)$request->getContent()),true);

$tresc = $doctrine->getRepository('App\Entity\Cat1')->findBy(array('user'=>$user,'id'=>$dane['tresc']));

//ustawianie ceny i ilosci
if (isset($dane['count'])){$tresc[0]->setCount($dane['count']);}
if (isset($dane['price'])){$tresc[0]->setPrice($dane['price']);}

$dowiazanie=$tresc[0]->getDowiazanie();//produkt dziecko lub rodzic

//$wariantyOld=(array)$tresc[0]->getWarianty();//print_r($wariantyOld);
$wariantyOld=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$tresc[0]->getId()),true);

$wariantyNext=(array)$dane['warianty'];//print_r($wariantyNext);












//jesli rodzic
if ($dowiazanie===null){//echo('rodzic');



    $newWariant=false;
    //jesli wariant istnieje w poprzednim i aktualnym zapisie to porownywanie uuid
    if (isset($wariantyOld['uuid']) && isset($wariantyNext['uuid'])){
        $compare = ArrayDiffMultidimensional::compare($wariantyOld['uuid'],$wariantyNext['uuid']);
        if (count($compare)>0){$newWariant=true;}
    }
    //jesli wariant istnieje tylko w poprzednim to  kasowanie wariantu
    else if (isset($wariantyOld['uuid'])){
        $newWariant=true;
    }

    //wariant został zmieniony i wymaga aktulizazacji w produkt dziecko
    if ($newWariant===true){//echo('NEW');
    
    //odcyt wariantow uzytych w produktach dziecko
    $dzieci = $doctrine->getRepository('App\Entity\Cat1')->findBy(array('dowiazanie'=>$tresc[0]->getId()));
    //echo count($dzieci);
     
     //kasowanie wariantu / wylaczanie wyswietlania tresci w przedmiocie dziecka
    foreach ($dzieci as $value) {
        $value->setWarianty([]);//kasowanie wariantu
        @unlink($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId());
        $value->setWyswietlanie(0);//wylaczanie wyswietlania przedmiotu
        $entityManager->persist($value);
    }
    if (count($dzieci)>0){array_push($odp, "<br />przedmioty dzieci zostały zmienione na nieaktywne, warianty w przedmiotach dzieci wymagają aktualizacji");}

    }
    


}else{

//jesli istnieje uuid czyli ma byc modyfikowany wariant else    usuwanie wariantu
if (isset($wariantyNext['uuid'])){

    //pobieranie wariantu od rodzica
    $rodzic = $doctrine->getRepository('App\Entity\Cat1')->findBy(array('id'=>$dowiazanie));
    $rodzicWarianty=$rodzic[0]->getWarianty();
    $rodzicWarianty=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$rodzic[0]->getId()),true);
    
    //sprawdzanie czy przetwarzany jest wariant aktualnie ustawiony przez rodzica
    $compare = (array)ArrayDiffMultidimensional::compare($rodzicWarianty['uuid'],$wariantyNext['uuid']);
    
    //jesli aktualizowany wariant zmieniony przez rodzica
    if (count($compare)>0){
    array_push($odp, "błędna modyfikacja wariantu który został zmieniony lub usunięty"); goto endd;
    }
    
    //porownywanie wariantu rodzica z nowym wariantem dziecka i zwracanie roznicy
    //print_r($rodzicWarianty);
    //print_r($wariantyNext);
    
    //ustawianie tych samych wartosci w tablicy z wariantem rodzica oraz dziecka aby podczas powownywania roznic tresc rodzica nie zostala nadpisana przez dziecko
    //print_r($wariantyNext);
    foreach ($wariantyNext['character'] as $key=>$value) {
    
        foreach ($value as $key2=>$value2) {
            if ($key2==='state'){
                $wariantyNext['character'][$key]['state']='';
                $rodzicWarianty['character'][$key]['state']='';
            }
            if ($key2==='count'){
                $wariantyNext['character'][$key]['count']='';
                $rodzicWarianty['character'][$key]['count']='';
            }
        }

    }
    //print_r($wariantyNext);
    
    $wariantyNext = (array)ArrayDiffMultidimensional::compare($wariantyNext,$rodzicWarianty);
    //print_r($wariantyNext);
    //die();    
    
    //$NewWariantTylkoZmiany = array_replace_recursive($rodzicWarianty,$result1);

}



}






file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$tresc[0]->getId(),json_encode($wariantyNext));





$tresc[0]->setWarianty(['ÿ']);

$entityManager->persist($tresc[0]);
$entityManager->flush();

//echo count($tresc);
//print_r($dane);
//die();


array_unshift($odp, "zapisano");
//array_push($error, "error");


endd:

//jesli są błędy    else    poprawnie
if (count($error)!==0){$response->setStatusCode(422);}else{$response->setStatusCode(200);}



$response->setData(array('message'=>$odp,'errorData'=>$error?$error:null));

//print_r($odp);die();

return $response;


    }
}
