<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
//use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;
//use Firebase\JWT\JWT;
//use Symfony\Component\Security\Core\User\UserProviderInterface;
//use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;
use Doctrine\Persistence\ManagerRegistry;

class VideoSizeController extends AbstractController
{

    private ApiAuthorizeController $apiauthorizecontroller;
    private ManagerRegistry $doctrine;
    private string $entity;//nazwa entity
    private string $sqlRekord;//nazwa rekordu sql
    private int|null $sqlId=null;//id rekord sql
    private array $aktualne=[];
    private array $poprzednie=[];
    private array $endd=[];
    

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
    
    public function setValue(string $entity, string $sqlRekord, int|null $sqlId, array $owner):void
    {
    

        
        $this->entity=$entity;
        $this->sqlRekord=$sqlRekord;
        $this->sqlId=$sqlId;
        $this->aktualne=$owner;
        $this->poprzednie();//pobieranie poprzednich plikow


    $this->go();
    
    //echo $this->entity.' ';
    //echo $this->sqlRekord.' ';
    //echo $this->sqlId.' ';
    //echo 'poprzednie> ';print_r($this->poprzednie);
    //echo 'aktualne> ';print_r($this->aktualne);
    //echo 'end> ';print_r($this->endd);

    }
    
    //pobieranie nazw plikow ktore zostaly wczesniej dodane
    public function poprzednie():void
    {
    
    $this->poprzednie=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/cat1video/'.(string)$this->sqlId),true);    
    
    }

    
    //okreslanie plikow ktore maja zostac usuniete lub dodane
    public function go():void
    {
    
    //gdy brak to tworzenie katalogóþw i pliku
    $this->OwnerDirectory();
    
    //plii poprzednie
    foreach ($this->poprzednie as $value){
        
        //plik zostaje  else    oznaczanie do usuniecia
        if (in_array($value, $this->aktualne)){$this->endd[$value]=1;}else{$this->endd[$value]=0;}
    }
    
    //pliki aktualne
    foreach ($this->aktualne as $value){
    
        $this->endd[$value]=1;
    }
    
    //koncowa tablica ze wszystkimi plikami
    foreach ($this->endd as $key=>$value){
    
        //jesli dodawanie pliku
        if ($value===1){$this->addFile($key);}
        
        //jesli usuwanie pliku
        else if ($value===0){$this->removeFile($key);}
    
    }
    
    
    }
    
    //jesli nie istnieje to tworzenie katalogu buforu dla uzytkownika
    protected function OwnerDirectory():void
    {
        //jesli nie istnieje katalog ze zdjeciami uzytkownika to tworzenie
        if (!file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId())){
    
            mkdir($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId());

        }
        
        //jesli nie istnieje plik ze wszystkimi plikami uzytkownika
        if (!file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size')){
        
            file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',json_encode(array()));
        
        }
    }
    
    //dodawanie pliku
    protected function addFile($file):void
    {
    
        //echo 'add>'.$file;
        if (!file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file)){
        
        $data=array();
        $data['size']=(int)@filesize($this->getParameter('kernel.project_dir').'/public/picture/'.$file);
        
        file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file,json_encode($data));
        touch($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file);
        
        $this->globalSize($file,true);
        
        }
    
    }
    
    //usuwanie pliku
    protected function removeFile($file):void
    {
    
        //echo 'remove> '.$file;
        if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file)){
        
        touch($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file,0);
        
        $this->globalSize($file,false);
        
        }
        
    
    }
    
    //tablica ze wszystkimi plikami uzytkownika - do okreslania rozmiaru wszystkich plikow
    protected function globalSize(string $file, bool $typ):void
    {
    
        $fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',"r");
        if (flock($fp, LOCK_EX)){//sleep(15);
        
            $data=(array)json_decode(fgets($fp),true);
            
            //jesli istnieja nowe dane to zapis
            $new=false;
            
            //jesli dodanie pliku   else    kasowanie pliku
            if ($typ===true){
            
                //jesli nie istnieje informacja o rozmiarze pliku
                if (!isset($data[$file])){$new=true;
                    $t=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file),true);
                    $data[$file]=$t['size'];
                }
                
            }else{ //kasowanie pliku
            
                //jesli istnieje informacja o rozmiarze pliku   to  kasowanie informacji
                if (isset($data[$file])){$new=true;
                    unset($data[$file]);
                }
                
            }
            
            //jesli sa nowe dane to zapisywanie
            if ($new===true){//echo 'zapis';
                file_put_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',json_encode($data));
                touch($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size');
            }
            
            //echo '>>';print_r($data);

                                                    //zwolnienie blokady pliku
                                                    flock($fp, LOCK_UN);
        }
        
        
    }
    
    
}
