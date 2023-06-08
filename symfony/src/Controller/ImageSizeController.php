<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
//use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;
//use Firebase\JWT\JWT;
//use Symfony\Component\Security\Core\User\UserProviderInterface;
//use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;
use Doctrine\Persistence\ManagerRegistry;
use \DOMDocument;

class ImageSizeController extends AbstractController
{

    private string $wzorzec1='https://api.symetryczny.pl/picture2/';//wzorzec url
    private ApiAuthorizeController $apiauthorizecontroller;
    private ManagerRegistry $doctrine;
    private string $entity;//nazwa entity
    private string $sqlRekord;//nazwa rekordu sql
    private int|null $sqlId=null;//id rekord sql
    private array $currentSql=[];//aktualna wartosc sql
    private array $previousSql=[];//poprzednia wartosc regkordu sql,


    public function __construct(ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine)
    {

    $this->apiauthorizecontroller = $apiauthorizecontroller;
    $this->doctrine = $doctrine;
    //$this->request = Request::createFromGlobals();
    //$this->userProvider = $userProvider;
    //$this->accesstokenrepository = $accesstokenrepository;
    
    //jesli brak autoruzacji
    /*$user=$this->apiauthorizecontroller->getUser();
    if (!$user){echo ('unauthorized');}*/
    
    }
    
    public function setValue(string $entity, string $sqlRekord, int|null $sqlId, array|string $image, array $owner):void
    {
    
    //$image=(string)'<p>kjhkh</p><p><img src="https://api.symetryczny.pl/picture2/39eea5f39870bd2f0aa8bcc87166510b" class="img-fluid" /></p><p>test</p><p><img src="https://api.symetryczny.pl/picture2/39eea5f39870bd2f0aa8bcc87166510b2" class="img-fluid" /></p>';
    
        //$entityManager = $this->doctrine->getManager();
        //$sql = $entityManager->getRepository($this->entity)->findBy(array('id'=>$this->sqlId));
        //$this->previousSql=$sql;
        //echo count($this->previousSql);
        //print_r($this->previousSql[0]->getPicture());
    
    //jesli brak autoruzacji
    //$user=$this->apiauthorizecontroller->getUser();if (!$user){die();}
    
        $this->entity=$entity;
        $this->sqlRekord=$sqlRekord;
        $this->sqlId=$sqlId;
        
        //jesli string to wyciagasnie zdjec <img i tworzenie array
        if (is_string($image)){$image=(array)$this->StringToArray((string)$image);}
        
        //okreslanie zdjec ktorych uzytkownik jest wlascicielem
        $this->currentSql=(array)$this->ImageOwner1($image, $owner);
    
        //pobieranie poprzednich zdjec, gdy istnieja
        $this->LastValue();
    

    }
    
    //zapis wartości id z tabeli sql dla rekordu sql
    public function setSqlId(int $sqlId):void
    {
    
    //jesli brak autoruzacji
    //$user=$this->apiauthorizecontroller->getUser();if (!$user){die();}
    
        $this->sqlId=$sqlId;
        //echo 'sqlId>'.$this->sqlId;
    
    }
    
    public function go():void
    {
    
    //jesli brak autoruzacji
    $user=$this->apiauthorizecontroller->getUser();if (!$user){die();}
    
    //okreslanie zdjec krore zostaly skasowne (brak starego zdjecia w nowych zdjeciach)
    $this->imageDelete();
    
    //wykonywanie metody usuwania lub dodawania zdjęć
    $this->add();
    
        //echo 'sqlEntity>'.$this->entity."\r\n";
        //echo 'sqlRekord>'.$this->sqlRekord."\r\n";
        //echo 'sqlId>'.$this->sqlId."\r\n";
        //echo 'nowe>';print_r($this->currentSql);echo "\r\n";
        //echo 'poprzednie>';print_r($this->previousSql);echo "\r\n";
    
    }
    
    //odczyt poprzednich zdjęć do określenia zdjęć które zostały usunięte
    protected function LastValue():void
    {
    
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    if ($this->entity==='App\Entity\Cat1' && $this->sqlRekord==='picture' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$this->sqlId),true);
   
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Cat1' && $this->sqlRekord==='description1' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$this->sqlId);
        
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
   
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Cat1' && $this->sqlRekord==='description2' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$this->sqlId);
        
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
   
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Catt1' && $this->sqlRekord==='dane' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Cat1' && $this->sqlRekord==='recenzja' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Stopka1' && $this->sqlRekord==='data' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Podstrony' && $this->sqlRekord==='data' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Home' && $this->sqlRekord==='data' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/homedata/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Menu1' && $this->sqlRekord==='naglowek1' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Menu1' && $this->sqlRekord==='naglowek2' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Szablon2' && $this->sqlRekord==='data' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$this->sqlId);
   
        $tab=(array)$this->StringToArray((string)$tab);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Home' && $this->sqlRekord==='sekcje' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(array)json_decode((string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$this->sqlId),true);
   
        //sekcje są rozdzielone na tablice i tutaj jest konwertowanie do jednego stringa
        $arraystring='';foreach ($tab as $wartosc){ $arraystring=$arraystring.' '.$wartosc['value']; }
    
        $tab=(array)$this->StringToArray((string)$arraystring);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Podstrony' && $this->sqlRekord==='sekcje' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(array)json_decode((string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$this->sqlId),true);
   
        //sekcje są rozdzielone na tablice i tutaj jest konwertowanie do jednego stringa
        $arraystring='';foreach ($tab as $wartosc){ $arraystring=$arraystring.' '.$wartosc['value']; }
    
        $tab=(array)$this->StringToArray((string)$arraystring);//wyodrębnianie zdjęć ze string
        
    }
    //jesli istnieje sqlId tzn ze jest rekord w tabeli i pobieranie poprzedniej zawartosci
    else if ($this->entity==='App\Entity\Szablon2' && $this->sqlRekord==='sekcje' && !is_null($this->sqlId)){
        
        //poprzednie zdjęcia
        $tab=(array)json_decode((string)@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$this->sqlId),true);
   
        //sekcje są rozdzielone na tablice i tutaj jest konwertowanie do jednego stringa
        $arraystring='';foreach ($tab as $wartosc){ $arraystring=$arraystring.' '.$wartosc['value']; }
    
        $tab=(array)$this->StringToArray((string)$arraystring);//wyodrębnianie zdjęć ze string
        
    }
    
    //okreslanie zdjec ktorych uzytkownik jest wlascicielem dotyczy poprzednich zdjec
    if (isset($tab)){$this->previousSql=$this->ImageOwner2($tab);}
    
    }
    
    //wyciaganie ze stringa zdjęcia i zwracanie w array
    protected function StringToArray(string $image):array
    {
    
    $tab=array();
    
    $d=explode(' ÿÿÿ ',$image);//czasami w jednym stringu moze byc podane wiele rekordow sql, potrzebne rozdzielenie ÿÿÿ aby skrypt usunac duplikaty base64
    foreach ($d as $wartosc){$wartosc=trim($wartosc);
        //preg_match_all( '/<img.+src="([^"]+)"/U' , $wartosc , $match );//odczyt src dla obrazkow
        //preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $wartosc , $match );//odczyt src dla obrazkow
        //$match[0] = array_unique($match[0]); //usuwanie duplikatow
        //$match[1] = array_unique($match[1]); //usuwanie duplikatow
$match=array(1=>array());
if (!empty($wartosc)){
$dom=new DOMDocument;@$dom->loadHTML((string)$wartosc);
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
        
        foreach ($match[1] as $value) {
            //jesli wzorzec spelniony to zapis zdjęcia
            $rr=explode('/',$value);//ostatni element tablicy https://api.symetryczny.pl/picture2/image123
            if (substr($value,0,strlen($this->wzorzec1))===$this->wzorzec1 && strlen((string)end($rr))>0){array_push($tab,end($rr));}
        }
    }
    
    return $tab;
    }
    
    //określanie zdjęć które należą do użytkownika (zdjęcia nowe)
    protected function ImageOwner1(array $imageAll, array $imageOwner):array
    {
    
    //echo 'all>';print_r($imageAll);
    //echo 'previous>';print_r($imageOwner);
    
    $tab=array();
    
    foreach ($imageAll as $value){
        //jesli wlasciciel zdjęcia   to   1  else    0
        if (in_array($value,$imageOwner) || file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.(string)$value)){$tab[$value]=array('owner'=>(int)1);}else{$tab[$value]=array('owner'=>(int)0);}
    }
    
    return $tab;
    }
    
    //określanie zdjęć które należą do użytkownika (zdjęcia poprzednie)
    protected function ImageOwner2(array $imageAll):array
    {
    
    $tab=array();
    
    foreach ($imageAll as $value){
        
        //jesli plik ze zdjeciem istnieje w katalogu uzytkownika to okreslanie ze zdjecie nalezy do uzytkownika
        if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.(string)$value)){$tab[$value]=array('owner'=>(int)1);}else{$tab[$value]=array('owner'=>(int)0);}
    
    }
    
    return $tab;
    }
    
    //okreslanie zdjec ktore zostaly skasowane
    protected function imageDelete():void
    {
    
        foreach ($this->previousSql as $key=>$value){
        
            //jesli wlasciciel zdjęcia
            if ($value['owner']===(int)1){
                $jest=false;
                foreach ($this->currentSql as $key2=>$value2){
                    
                    //jesli stare zdjecie znajdzie w nowych zdjeciach to nie skasowane
                    if ((string)$key===(string)$key2){$jest=true;break;}
                
                }
                
                if ($jest===false){$this->previousSql[$key]['delete']=1;}else{$this->previousSql[$key]['delete']=0;}
            
            }
        
        }
    
    }

    //string okreslajacy polozenie w sql zdjęcia
    protected function ImagePosition():string
    {
    
        return (string)"$this->entity $this->sqlRekord $this->sqlId";
    
    }
    
    protected function add():void
    {
    
    //jesli nie istnieje katalog ze zdjeciami uzytkownika to tworzenie
    $this->OwnerDirectory();
    
    //aktualne zdjęcia - zapis informacji o polozeniu zdjecia
    foreach ($this->currentSql as $key=>$value){
    
        if ($value['owner']===1){//jesli wlasciciel zdjecia
            $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key),true);
            
            $jest=false;
            foreach ($tab as $key2=>$value2){
                if ((string)$key2===$this->ImagePosition()){$jest=true;break;}
            }
            
            //jesli znajdzie w zdjeciu informacje ze zdjecie istrnieje pod ta sciezka
            if ($jest===true){
                $tab[$this->ImagePosition()]=array('exist'=>(int)1);
            }else{
                $tab[$this->ImagePosition()]=array('exist'=>(int)1);
            }
            
            //jesli brak rozmiaru pliku
            if (!isset($tab['size'])){$tab['size']=(int)@filesize($this->getParameter('kernel.project_dir').'/public/picture/'.$key);}
            
            //echo 'tab>';print_r($tab);
            //zapis pliku
            file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key,json_encode($tab));
            touch($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key);
            
            //tablica ze wszystkimi uzytymi plikami z informacja o rozmiarze pliku
            $this->globalSize((string)$key,true);
        }
    
    }
    
    //poprzednie zdjęcia - zapis informacji o polozeniu zdjecia lub kasowanie zdjecia
    foreach ($this->previousSql as $key=>$value){
    
        if ($value['owner']===1){//jesli wlasciciel zdjecia
            $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key),true);
            
            $jest=false;
            foreach ($tab as $key2=>$value2){
                if ((string)$key2===$this->ImagePosition()){$jest=true;break;}
            }
            
            if ($value['delete']===1){
            
            //jesli znajdzie w zdjeciu informacje ze zdjecie istrnieje pod ta sciezka
            if ($jest===true){unset($tab[$this->ImagePosition()]);}
            
            //echo 'tab delete>';print_r($tab);
            //zapis pliku
            file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key,json_encode($tab));
            touch($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key);
            
            //jesli zdjecie nie powiazane z zadna trescia to ustawianie czas pliku na 0, aby cron skasowal zdjecie
            if (count($tab)===1){touch($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$key,0);$this->globalSize((string)$key,false);}
            
            }else{
            

            
            }
            

        }
    
    }
    
    
    }
    
    //tablica ze wszystkimi plikami uzytkownika - do okreslania rozmiaru wszystkich plikow
    protected function globalSize(string $filename, bool $typ):void
    {
    
        $fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',"r");
        if (flock($fp, LOCK_EX)){//sleep(15);
        
            $data=(array)json_decode(fgets($fp),true);
            
            //jesli istnieja nowe dane to zapis
            $new=false;
            
            //jesli dodanie pliku   else    kasowanie pliku
            if ($typ===true){
            
                //jesli nie istnieje informacja o rozmiarze pliku
                if (!isset($data[$filename])){$new=true;
                    $t=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$filename),true);
                    $data[$filename]=$t['size'];
                }
                
            }else{ //kasowanie pliku
            
                //jesli istnieje informacja o rozmiarze pliku   to  kasowanie informacji
                if (isset($data[$filename])){$new=true;
                    unset($data[$filename]);
                }
                
            }
            
            //jesli sa nowe dane to zapisywanie
            if ($new===true){//echo 'zapis';
                file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',json_encode($data));
                touch($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size');
            }
            
            //echo '>>';print_r($data);

                                                    //zwolnienie blokady pliku
                                                    flock($fp, LOCK_UN);
        }
    
    }
    
    
    //jesli nie istnieje to tworzenie katalogu buforu dla uzytkownika
    protected function OwnerDirectory():void
    {
        //jesli nie istnieje katalog ze zdjeciami uzytkownika to tworzenie
        if (!file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId())){
    
            mkdir($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId());

        }
        
        //jesli nie istnieje plik ze wszystkimi plikami uzytkownika
        if (!file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size')){
        
            file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',json_encode(array()));

        
        }
    }


    
    
}
