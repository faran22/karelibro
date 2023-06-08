<?php

namespace App\Controller;

use App\Entity\Szablon2;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\Routing\Annotation\Route;

//use Symfony\Component\HttpFoundation\File\Exception\FileException;
//use Symfony\Component\HttpFoundation\File\UploadedFile;
use Symfony\Component\HttpFoundation\Request;
//use Symfony\Component\String\Slugger\SluggerInterface;

//use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

use Doctrine\Persistence\ManagerRegistry;
use \DOMDocument;

class OrderModifyController extends AbstractController
{
    private $apiauthorizecontroller;
    //private $doctrine;
    private $DownloadUrl='https://api.symetryczny.pl';
    private $imageSize;

    #[Route('/api/ordermodify', name: 'ordermodify', methods: ['GET', 'PUT'])]
    public function new(Request $request, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine): JsonResponse
    {

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
    
    $komunikat=array();
    if ($request->isMethod('PUT')){
    
    $request=(array)json_decode(trim((string)$request->getContent()),true)['data'];
    //print_r($request);die();
    $request['id']=explode('/',$request['id']);$request['id']=(int)end($request['id']);
    $request['typ']=(int)$request['typ'];
    $request['nr']=(int)$request['nr'];
    //$request['newCount']=(int)$request['newCount'];
    //$request['newPrice']=round((float)$request['newPrice'],2);
    
    

    //if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)'429')){echo('jest');}else{echo('brak');}
    $zamowienie=(array)json_decode(trim(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$request['id'])),true);
    //print_r($zamowienie);
    
    
    //echo count($sql);
    
    //ilosc >= 0 && <= 99999999
    //cena > 0 && <= 99999999
    
    //jesli zamiana ilosci w zamowieniu
    if ($request['typ']===0){
        //echo 'zmiana ilości';
        if (!isset($request['newCount']) || $request['newCount']<0 || $request['newCount']>99999999){array_push($komunikat,'błędna ilość');goto error1;}
        
        $request['newCount']=(int)$request['newCount'];
        
        $zamowienie['koszyk'][$request['nr']]['iloscWybrana']=$request['newCount'];
    
    }
    
    
    
    
    //jesli zmiana ilosci w zamowieniu oraz w magazynie
    else if ($request['typ']===1){
            //jesli dodawanie ilosci do zamowienia to odejmowanie ilosci z produktu w sklepie i dodawanie do zamowienia (sprawdzac czy ilosc ktora ma byc dodana istnieje w produkcie w sklepie)
            
            //jesli odejmowanie ilosci w zamowieniu to dodawanie ilosci do produktu w sklepie i odejmowania ilosci z produktu w zamowieniu
            
        if (!isset($request['newCount']) || $request['newCount']<0 || $request['newCount']>99999999){array_push($komunikat,'błędna ilość');goto error1;}
        
        $request['newCount']=(int)$request['newCount'];
        
        $entityManager = $doctrine->getManager();
        
        //przedmiot z sql - potrzebne do pobrania ilosci i ustawienie aktywnoci gdy stan===0
        $przedmiot = $entityManager->getRepository('App\Entity\Cat1')->findBy(array('user'=>$user,'id'=>$zamowienie['koszyk'][$request['nr']]['tresc'],'category'=>$zamowienie['koszyk'][$request['nr']]['parametr1']));
        
        //wariant dla przedmiotu - potrzebne do pobrania ilości
        $przedmiot_warianty=(array)json_decode(trim(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$zamowienie['koszyk'][$request['nr']]['tresc'])),true);
        //print_r($przedmiot_warianty);
        
        //jesli zamowienie bez wariantu && produkt bez wariantu to zmiana
        if ($zamowienie['koszyk'][$request['nr']]['id']===-1 && count($przedmiot_warianty)===0){
        
        //echo('zmiana ilosci przedmiotu');
        $iloscZzamowienia=$zamowienie['koszyk'][$request['nr']]['iloscWybrana'];
        $iloscZPrzedmiotu=(int)$przedmiot[0]->getCount();
        $nowaIlosc=$request['newCount'];
        
        //okreslanie o ile ma zostac zmieniona ilosc przedmiotu w magazynie
        $zmianaWmagazyn=(int)0;
        $zmianaWmagazyn=$iloscZzamowienia-$nowaIlosc;
        
        //okreslanie nowej ilosci w magazynie
        $NowaIloscMagazyn=$iloscZPrzedmiotu+$zmianaWmagazyn;
        
        //jesli nowa wartosc w magazynie jest ujemna to brak przedmiotów
        if ($NowaIloscMagazyn<0){array_push($komunikat,'Nie udało się wykonać zmiany. Ilość przedmiotów w magazynie wynosi '.$iloscZPrzedmiotu.', a próbujesz zmniejszyć magazyn o '.abs($zmianaWmagazyn).'.');goto error1;}
        
        //jesli stan 0 to usuwanie aktywnosci przedmiotu
        if ($NowaIloscMagazyn===0 && (int)$przedmiot[0]->getWyswietlanie()===(int)1){
        $przedmiot[0]->setWyswietlanie(0);
        }
        
        //ustawianie nowej ilosci przedmiotu
        $przedmiot[0]->setCount($NowaIloscMagazyn);
        
        $entityManager->flush();
        
        //nowa ilosc przedmiotow w zamowieniu
        $zamowienie['koszyk'][$request['nr']]['iloscWybrana']=$nowaIlosc;
        
        //echo '$iloscZzamowienia '.$iloscZzamowienia.' $iloscZPrzedmiotu '.$iloscZPrzedmiotu.' $nowaIlosc '. $nowaIlosc.' $zmiana '.$zmiana;
        
        }
        
        //jesli zamowienie z wariantem && produkt z wariantem && uuid wariant taki sam
        else if (
        $zamowienie['koszyk'][$request['nr']]['id']!==-1 && 
        count($przedmiot_warianty)>0 && 
        isset($przedmiot_warianty['uuid'][$zamowienie['koszyk'][$request['nr']]['id']]) &&
        $przedmiot_warianty['uuid'][$zamowienie['koszyk'][$request['nr']]['id']]===$zamowienie['koszyk'][$request['nr']]['uuid']){
        
        //echo('zmiana ilosci wariantu');
        $iloscZzamowienia=$zamowienie['koszyk'][$request['nr']]['iloscWybrana'];
        $iloscZwariantu=$przedmiot_warianty['character'][$zamowienie['koszyk'][$request['nr']]['id']]['count'];
        $nowaIlosc=$request['newCount'];
        
        //okreslanie o ile ma zostac zmieniona ilosc przedmiotu w magazynie
        $zmianaWmagazyn=(int)0;
        $zmianaWmagazyn=$iloscZzamowienia-$nowaIlosc;
        
        //okreslanie nowej ilosci w magazynie
        $NowaIloscMagazyn=$iloscZwariantu+$zmianaWmagazyn;
        
        //jesli nowa wartosc w magazynie jest ujemna to brak przedmiotów
        if ($NowaIloscMagazyn<0){array_push($komunikat,'Nie udało się wykonać zmiany. Ilość przedmiotów w magazynie wynosi '.$iloscZwariantu.', a próbujesz zmniejszyć magazyn o '.abs($zmianaWmagazyn).'.');goto error1;}
        
        //nowa ilosc dla wariantu
        $przedmiot_warianty['character'][$zamowienie['koszyk'][$request['nr']]['id']]['count']=$NowaIloscMagazyn;
        
        //print_r($przedmiot_warianty);
        //jesli przedmiot jest aktywny to sprawdzanie czy ktorys z wariantow jest aktywny, jesli nie to deaktywacja przedmiotu
        if ((int)$przedmiot[0]->getWyswietlanie()===(int)1){
            $aktywnosc=0;
            foreach ($przedmiot_warianty['character'] as $value) {if ($value['count']>0){$aktywnosc=1;break;}}
            if ($aktywnosc===0){
            $przedmiot[0]->setWyswietlanie(0);
            $entityManager->flush();
            }
        }
        
        //zapis wariantu
        file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$zamowienie['koszyk'][$request['nr']]['tresc'],json_encode($przedmiot_warianty));
        
        //okreslanie nowej ilosci w zamówieniu
        $zamowienie['koszyk'][$request['nr']]['iloscWybrana']=$nowaIlosc;
        
        //echo '$iloscZzamowienia '.$iloscZzamowienia.' $iloscZwariantu '.$iloscZwariantu.' $nowaIlosc '. $nowaIlosc.' $zmianaWmagazyn '.$zmianaWmagazyn.' $NowaIloscMagazyn '.$NowaIloscMagazyn;
        
        }
        
        //else produkt z zamówienia nie podobny do produktu w sklepie
        else{
        array_push($komunikat,'przedmiot z zamówienia różni się od przedmiotu z magazynu');goto error1;        
        }
    
    }
    
    
    
    
    
    //jesli zamiana ceny w zamówieniu
    else if ($request['typ']===2){
        //echo 'zmiana ceny';
        if (!isset($request['newPrice']) || $request['newPrice']<0.01 || $request['newPrice']>99999999){array_push($komunikat,'błędna cena');goto error1;}
        $request['newPrice']=round((float)$request['newPrice'],2);
        
        $zamowienie['koszyk'][$request['nr']]['cena']=$request['newPrice'];
    
    }
    
    
    
    
    }
    

file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$request['id'],json_encode($zamowienie));
$response->setStatusCode(200);
$response->setData(array('response'=>$komunikat));
return $response;

error1:
//print_r($komunikat);die();
$response->setStatusCode(400);
$response->setData(['error'=>$komunikat]);
return $response;

    }
}
