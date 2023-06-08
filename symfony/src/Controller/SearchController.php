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

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

use Doctrine\Persistence\ManagerRegistry;
use \DOMDocument;

class SearchController extends AbstractController
{
    private $apiauthorizecontroller;
    private string $sqlPassword='Assaaa12300000099887V';

    #[Route('/api/search/{data}/{paginacja}/{filtry}/{keyword}', name: 'search', methods: ['GET'])]
    public function new(string $data, string $keyword, int $paginacja, string $filtry, Request $request, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $ManagerRegistry,sqlBuforController $sqlBufor): JsonResponse
    {
    $response=new JsonResponse();
    $this->apiauthorizecontroller = $apiauthorizecontroller;

    //jesli brak autoruzacji
    //$user=$this->apiauthorizecontroller->getUser();
    //if (!$user){
    //$response->setData('unautorized');
    //$response->setStatusCode(401);
    //return $response;
    //}
    
    
//ilość wyniku zwracanuych na jednej stronie
$iloscNaStronie=9;
//ilosc wszystkich elementów zwróconych z bazy danych wg kryterii wyszukiwania
//$countItem=(int)0;
//wszystkie znalezione tresci
$wszystkieTresci=array();

    
    
    
    
//------------------------------------------------------ okreslanie danych ktore maja zostac wyszukiwane
$domyslneWys=array(//ustawienia domyslne
//produkty 0-nie szukaj, 1-szukaj aktywne, 2-szukaj nieaktywne, 3-szukaj aktywne,nieaktywne, 4-aktywne,nieaktywne,niewidoczne(znajdujace sie w kategoriach nie uzytych)
0=>1,   
//recenzje 0-nie szukaj, 1-szukaj aktywne
1=>1,     
//podstrony 0-nie szukaj
2=>0,
);
$rodzaj=explode(',',$data);
foreach ($rodzaj as $key=>$value) {$domyslneWys[$key]=(int)$value;}
//echo('$domyslneWyszukiwanie>');print_r($domyslneWys);
    
    
    

    
    
    
    
    

//------------------------------------------------------ uzytkownik w ktorym beda wyszukiwane dane
$domain=$request->query->get('user_domain');
//id uzytkownika u ktorego ma byc wyszukiwane haslo
$qb = $ManagerRegistry->getRepository('App\Entity\User')->createQueryBuilder('o');
$user_search = //$qb->where('o.domain = :domain')
$qb->where($qb->expr()->like('o.domain', ':domain'))
//->andWhere($qb->expr()->like('o.Product', ':product'))
->setParameter('domain', '%'.$domain.'%')
//->setParameter('product', 'My Products%')
->getQuery()
->getResult();
$user_search_id=$user_search[0]->getId();









//tworznie bezy i tabel dla uzytkownika jeslli nie istnieją
$sqlBufor->setId((int)$user_search_id);








//----------------------------------------- okreslanie kategorii uzytych przez uzytkownika oraz rodzaj kategorii
//------------------------------------------------------ rodzaj kategorii produkt lub recenzja
$sql2 = $ManagerRegistry->getRepository('App\Entity\Category1')->findBy(['user'=>$user_search[0]]);
$rodzajKategorii=isset($sql2[0]->getData()[0])?$sql2[0]->getData()[0]:[];
//echo('RRR');print_r($rodzajKategorii);echo('RRR');
//------------------------------------------------------okreslanie kategorii uzytych przez uzytkownika
$sql2 = $ManagerRegistry->getRepository('App\Entity\Menu1')->findBy(['user'=>$user_search[0]]);
$menu1menu=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$sql2[0]->getId()),true);
//print_r($menu1menu);
$CategoryUse=array();
 foreach ($menu1menu as $value) {
 $categoryRodzic=0;
 if ((int)$value['UseCategory']===(int)1){$categoryRodzic=$value['id'];}//okreslanie ze kategotia uzyta
 if ($categoryRodzic!==0){
    foreach ($value['PodCategory'] as $value2) {
        //jesli podkategoria uzyta to kasowanie informacji ze uzyta kategoria i dodawanie podkategorii
        if ((int)$value2['use']===(int)1){
        $categoryRodzic=0;
        if (isset($rodzajKategorii[$value2['id']])){$CategoryUse[$value2['id']]='recenzja';}else{$CategoryUse[$value2['id']]='produkt';}
        //array_push($CategoryUse,$wstaw);
        }
    }
    //jesli nie uzyta podkategotria to dodawanie kategorii
    if ($categoryRodzic!==0){
    //array_push($CategoryUse,$categoryRodzic);
    if (isset($rodzajKategorii[$categoryRodzic])){$CategoryUse[$categoryRodzic]='recenzja';}else{$CategoryUse[$categoryRodzic]='produkt';}
    }
 }
 //if ((int)$value['UseCategory']===(int)1){array_push($CategoryUse,$value['id']);}
 }
 //echo('$CategoryUse>');print_r($CategoryUse);echo('<<<<');
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 //podpinanie bazy danych
 $doctrine = \Doctrine\DBAL\DriverManager::getConnection(['url' => 'mysql://root:'.$this->sqlPassword.'@localhost/sql'.(string)$user_search_id]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//jesli maja byc wyszukiwane produkty
if ((int)$domyslneWys[0]>(int)0){

//wyszukiwanie hasła w taveli z produktem
 $qb = $doctrine->createQueryBuilder();
 $query=(array)$qb
 ->select(['id_parent'])
 ->from('cat1','u')
 ->where($qb->expr()->like('u.title', ':text'))
 ->orWhere($qb->expr()->like('u.description', ':text'))
 ->orWhere($qb->expr()->like('u.description2', ':text'))
 ->orWhere($qb->expr()->like('u.recenzja', ':text'))
 ->setParameter('text', '%'.$keyword.'%')
 ->execute()
 ->fetchAll();
 //print_r($query);
 
//jesli znaleziono haslo
//sprawdzanie czy produkt jest aktywny,kategroria jest uzyta,kategoria jest produktem(nie recenzja)
if (count($query)>0){
 
//pobieranie produktu z cat1, potrzebne aby okreslic czy produkt jest aktywny oraz kategorie produktu
$search=array('user'=>$user_search[0]);
$search['id']=array();
foreach ($query as $value) {array_push($search['id'],$value['id_parent']);}
$sql = $ManagerRegistry->getRepository('App\Entity\Cat1')->findBy($search);
//echo '>>>'.count($sql).'<<<';


 foreach ($sql as $key=>$value) {
    if (!(
    (   //jesli kategoria z produktem uzyta        && kategoria jest z produktem (nie recenzja)         lub
        (isset($CategoryUse[$value->getCategory()]) && $CategoryUse[$value->getCategory()]==='produkt') ||
        //wyswietlanie wszystkich produktow (aktywne,nieaktywne,nieuzyte kategorie)
        ($domyslneWys[0]===4)
    ) &&
    (   //okreslanie rodzaju wyswietlanych produktow
        ($domyslneWys[0]===3 || $domyslneWys[0]===4) || //wyswietlaanie wszystkich
        ($domyslneWys[0]===1 && (int)$value->getWyswietlanie()===(int)1) || //wyswietlamie aktywnych
        ($domyslneWys[0]===2 && (int)$value->getWyswietlanie()===(int)0) //wyswietlanie nieaktywnych
    )
       ))
    {
    unset($sql[$key]);
    }
 }
 //echo 'Produkty>'.count($sql)."<<<\r\n";
  //foreach ($sql as $key=>$value) {echo ($value->getId()."\r\n");}
 //echo("<");
 //$countItem=(int)$countItem+(int)count($sql);
 
 foreach ($sql as $value) { //echo $value->getTitle();

    $tab=array('typ'=>'produkt','value'=>$value);
    //echo $tab['value']->getTitle();
    array_push($wszystkieTresci,$tab);
 
 }
 
 }
 
}

















//jesli maja byc wyszukiwane recenzje
if ((int)$domyslneWys[1]>(int)0){

//wyszukiwanie hasła w tabeli z sekcjami
 $qb = $doctrine->createQueryBuilder();
 $szablon2=(array)$qb
 ->select(['category'])
 ->from('szablon2','u')
 ->setParameter('product', 0)
 ->setParameter('text', '%'.$keyword.'%')
 //->setParameter('category', [3], \Doctrine\DBAL\Connection::PARAM_INT_ARRAY)
 //->andWhere("u.category = :category")
 ->andWhere("u.product = :product")
 ->andWhere($qb->expr()->like('u.sekcje', ':text'))
 ->execute()
 ->fetchAll();
 //echo('$szablon2/sekcje>');print_r($szablon2);
 
//pobieranie wszystkich recenzji
 $qb = $doctrine->createQueryBuilder();
 $query1=(array)$qb
 ->select(['id_parent'])
 ->from('catt1','u')
 //->where($qb->expr()->like('u.dane', ':text'))
 //->setParameter('text', '%'.$keyword.'%')
 ->execute()
 ->fetchAll();
 //echo('catt1>');print_r($query1);

//pobieranie kategorii recenzji, potrzebne aby odnalezc sekcje nalezaca do recenzji
$search=array('user'=>$user_search[0]);
$search['id']=array();
foreach ($query1 as $value) {array_push($search['id'],$value['id_parent']);}
$catt1 = $ManagerRegistry->getRepository('App\Entity\Catt1')->findBy($search);
$CategoryCatt1=array();
foreach ($catt1 as $value) {//tabela z kategoriami w ktorych znajduja sie sekcje
//if (!in_array($value->getCategory(), $CategoryCatt1)) {array_push($CategoryCatt1,$value->getCategory());}
$CategoryCatt1[$value->getId()]=$value->getCategory();
}
//echo '$catt1>'.count($catt1).'<<<'."\r\n";
//echo('$CategoryCatt1>');print_r($CategoryCatt1);

//tablica ze znalezionymi id catt1 i przyporzadkowanymi do nich category dla sekcji
$sekcjeCategory=array();
foreach ($szablon2 as $value) {
    $key = array_search($value['category'], $CategoryCatt1);
    if (!empty($key)){$sekcjeCategory[$key]=$value['category'];}
}
//echo('$sekcjeCategory>');print_r($sekcjeCategory);

//wyszukiwanie hasła w tabeli z recenzja
$qb = $doctrine->createQueryBuilder();
$catt1Result=(array)$qb
->select(['id_parent'])
->from('catt1','u')
->where($qb->expr()->like('u.dane', ':text'))
->setParameter('text', '%'.$keyword.'%')
->execute()
->fetchAll();
//echo('$catt1Result>');print_r($catt1Result);

//tablica ze znalezionymi recenzjami w catt1 oraz przyporzadkowanymi kategoriami, potrzebne do okreslenia czy recenzja uzyta/aktywna
$search=array('user'=>$user_search[0]);
$search['id']=array();
foreach ($catt1Result as $value) {array_push($search['id'],$value['id_parent']);}
$catt1 = $ManagerRegistry->getRepository('App\Entity\Catt1')->findBy($search);
$CategoryCatt1=array();
foreach ($catt1 as $value) {//tabela z kategoriami w ktorych znajduja sie sekcje
//if (!in_array($value->getCategory(), $CategoryCatt1)) {array_push($CategoryCatt1,$value->getCategory());}
$CategoryCatt1[$value->getId()]=$value->getCategory();
}
//echo('$CategoryCatt1>');print_r($CategoryCatt1);


//usuwanie duplikatow recenzji dla znalezionych recenzji oraz znalezionych sekcji
$gotowe=array();
foreach ($sekcjeCategory as $key=>$value) {if (isset($gotowe[$key])){$gotowe[$key]=$value;}}
foreach ($CategoryCatt1 as $key=>$value) {if (!isset($gotowe[$key])){$gotowe[$key]=$value;}}

//okreslanie czy kategoria to recenzja i czy kategoria jest uzyta
foreach ($gotowe as $key=>$value) {
if (!isset($CategoryUse[$value]) || $CategoryUse[$value]!=='recenzja'){unset($gotowe[$key]);}
}
//echo('recenzje>');print_r($gotowe);
//$countItem=(int)$countItem+(int)count($gotowe);

 foreach ($gotowe as $key=>$value) {

    $tab=array('typ'=>'recenzja','key'=>$key,'value'=>$value);
    array_push($wszystkieTresci,$tab);
 
 }


}












//zwracanie treści
$tresci=array();
$start=(($paginacja*$iloscNaStronie)-$iloscNaStronie);//poczatkowa wartosc
$end=($paginacja*$iloscNaStronie)-1;//koncowa wartosc

 foreach ($wszystkieTresci as $key=>$value){
 
    //jesli wartosc z aktualnie zwracanego zakresu
    if ($key>=$start && $key<=$end){
    
            $tab=array();
    
        if ($value['typ']==='produkt'){ //echo $value['value']->getId();
            
            $id=$value['value']->getId();
            $tab['@id']="/api/cat1s/$id";
            
            $category=$value['value']->getCategory();
            $tab['category']=$category;
            
            $title='';
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1title/'.(string)$id)){$title=(string)file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1title/'.(string)$id);}
            $tab['title']=$title;
            
            $description='';
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$id)){$description=(string)file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$id);}
            $tab['description']=$description;
            
            $description2='';
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$id)){$description2=(string)file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$id);}
            $tab['description2']=$description2;
            
            $defaultpicture=$value['value']->getDefaultpicture();
            if ($defaultpicture!==null){$tab['defaultpicture']=$defaultpicture;}
            
            $picture=[];
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$id)){$picture=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$id),true);}
            $tab['picture']=$picture;
            
            $video=[];
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1video/'.(string)$id)){$video=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1video/'.(string)$id),true);}
            $tab['video']=$video;
            
            $warianty=[];
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$id)){$warianty=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$id),true);}
            $tab['warianty']=$warianty;
            

        }
        else if ($value['typ']==='recenzja'){
        
            $id=(int)$value['key'];
            $tab['@id']="/api/catt1s/$id";
            
            $tab['category']=(int)$value['value'];
            
            $tab['picture']=[];
            //$tab['warianty']=[];
            
            $description='';
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$id)){$description=(string)file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$id);}
            $tab['description2']=trim((string)$description);
        
        }
        
        if (count($tab)>0){array_push($tresci,$tab);}
    
    }
    //zatrzymanie petli
    else if ($key>$end){break;}
 
 }







 
 
 
 
 



//zwracanie podstron
$view=array();
if (count($wszystkieTresci)>0){

$iloscPodstron=ceil(count($wszystkieTresci)/$iloscNaStronie);
//echo '>'.$iloscPodstron.'<';

if ($iloscPodstron>1){

    //następna strona
    if ($paginacja<$iloscPodstron){$view['hydra:next']='search?rodzaj='.$data.'&paginacja1='.((int)$paginacja+(int)1).'&haslo='.$keyword;}
    //poprzednia strona
    if ($paginacja>1 && $paginacja<=$iloscPodstron){$view['hydra:previous']='search?rodzaj='.$data.'&paginacja1='.((int)$paginacja-(int)1).'&haslo='.$keyword;}
    //pierwsza strona
    $view['hydra:first']='search?rodzaj='.$data.'&paginacja1=1&haslo='.$keyword;
    //ostatnia strona
    $view['hydra:last']='search?rodzaj='.$data.'&paginacja1='.$iloscPodstron.'&haslo='.$keyword;

}

}















 
    
    //echo '>'.$domain.'<>'.$keyword.'<>'.$paginacja.'<>'.$user_search_id.'<';

$response->setStatusCode(200);
$response->setData(array('hydra:totalItems'=>count($wszystkieTresci),'hydra:member'=>$tresci,'hydra:view'=>$view));
return $response;

    }
}
