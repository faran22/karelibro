<?php
//zwracanie informacji o zasobach uzywanych przez konto


namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Doctrine\Persistence\ManagerRegistry;
use \DOMDocument;

class AccountSizeController extends AbstractController
{

    private string $wzorzec1='https://api.symetryczny.pl/picture2/';//wzorzec image url
    private ApiAuthorizeController $apiauthorizecontroller;
    private int $addSize=0;//rozmiary plikow usunietych przez uzytkownika, ale znajdujacych sie w buforze
    private array $BuforPicture=[];
    private array $BuforFile1=[];
    private array $BuforVideo=[];
    private $doctrine;

    //private $test;

    public function __construct(ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine)
    {
    
    $this->apiauthorizecontroller = $apiauthorizecontroller;
    $this->doctrine=$doctrine;
    
    //$entityManager = $doctrine->getManager();

    }





    public function getSize(string|array $data, int $addSize): array
    {
    
    //autoryzacja
    $user=$this->apiauthorizecontroller->getUser();if (!$user){die();}
    
    //rozmiar plikow usunietych, ale nie skasowanych z bufora
    $this->addSize=(int)0+(int)$addSize;
    
    //wszystkie pliki wgrane przez usera
    $this->getAllBuforFile();
    //print_r($this->BuforPicture);
    //print_r($this->BuforFile1);
    //print_r($this->BuforVideo);
    
    if (is_string($data)){$this->processingString($data);}//jesli string czyli zdjecia
    else if (is_array($data)){$this->processingArray($data);}//jesli array np. zdjecia,video,pliki

    //rozmiar zdjecia + video + pliki + new(pliki nie podpiete)
    $size=array('picture'=>$this->getSizeBuffer(1),'file'=>$this->getSizeBuffer(2),'video'=>$this->getSizeBuffer(3),'new'=>$this->addSize);
    //suma wykorzystanej pojemnosci dla zdjec,plikow,video,new
    $size['sum']=(int)$size['picture']+(int)$size['file']+(int)$size['video']+(int)$size['new'];
    
    //ilosci przypisane do uztykownika
    $user=array('size'=>$this->apiauthorizecontroller->getUser()->getSize(),'page'=>$this->apiauthorizecontroller->getUser()->getPage());
    
    $page=array('cat1'=>$this->cat1Count(),'catt1'=>$this->catt1Count(),'podstrony'=>$this->podstronyCount());
    $page['sum']=(int)$page['cat1']+(int)$page['catt1']+(int)$page['podstrony'];
    
    //przekroczone limity dla pojemnosci konta oraz ilosci stron(cat1,catt1,podstrony)
    $limit=array('size'=>$size['sum']>$user['size']?1:0,'page'=>$page['sum']>=$user['page']?1:0);
    
    
    return ['size'=>$size,'page'=>$page,'user'=>$user,'limityPrzekroczone'=>$limit];
    }
    
    

    //wyciaganie zdjec ze string
    private function processingString(string $data): void
    {
    
    //echo('processing 1');
    $d=explode(' ÿÿÿ ',$data);//czasami w jednym stringu moze byc podane wiele rekordow sql, potrzebne rozdzielenie ÿÿÿ aby skrypt usunac duplikaty base64
    foreach ($d as $wartosc){
    $data=trim($wartosc); 
    
    //preg_match_all( '/<img.+src="([^"]+)"/U' , $data , $match );//odczyt src dla obrazkow
    //preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $data , $match );//odczyt src dla obrazkow
    //$match[1] = array_unique($match[1]); //usuwanie duplikatow
$match=array(1=>array());
if (!empty($data)){
$dom=new DOMDocument;@$dom->loadHTML((string)$data);
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
//print_r($match[1]);
    
        foreach ($match[1] as $klucz=>$wartosc){
                                                    //jesli obrazek w base64
                                                    if (substr($wartosc,0,5)==='data:'){//echo('robie');
            $wartosc=explode('base64,',$wartosc);
            //$wartosc=base64_decode($wartosc[1]);
            //$this->addSize=(int)$this->addSize+(int)strlen($wartosc);//dodawanie rozmiaru pliku do ogolnej wartosci
            $this->addSize=(int)$this->addSize+(int)(strlen(rtrim($wartosc[1], '=')) * 3 / 4);//dodawanie rozmiaru pliku do ogolnej wartosci

                                                    //jesli obrazek z symetryczny.pl
                                                    }else if (substr($wartosc,0,strlen($this->wzorzec1))===$this->wzorzec1){
            $plik=explode('/',$wartosc);//ostatni element tablicy https://api.symetryczny.pl/picture2/image123
            $plik=(string)end($plik);
            
            if (strlen($plik)>0){
            
                $this->FIndFile($plik);//okreslanie polazenia pliku
            
            }
                                                    }
        }
        
    }//die();
    
    }
    

    //przetwarzanie tablicy z nazwami plikow
    private function processingArray(array $data): void
    {
    
    //echo('processing 2');
    
    foreach ($data as $klucz=>$wartosc){
            $this->FIndFile($wartosc);//okreslanie polazenia pliku
    }
    
    
    }
    
    //pobieranie wszystkich plikow wgranch przez uzytkownika
    private function getAllBuforFile(): void
    {
    
    $this->BuforPicture=[];
    $this->BuforFile1=[];
    $this->BuforVideo=[];
    
    if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size')){
        $fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',"r");
        if (flock($fp, LOCK_EX)){//sleep(15);
        
            $this->BuforPicture=(array)json_decode(fgets($fp),true);
            
        }
    }
        
    if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforfile1/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size')){
        $fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforfile1/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',"r");
        if (flock($fp, LOCK_EX)){//sleep(15);
        
            $this->BuforFile1=(array)json_decode(fgets($fp),true);
            
        }
    }
        
    if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size')){
        $fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/size',"r");
        if (flock($fp, LOCK_EX)){//sleep(15);
        
            $this->BuforVideo=(array)json_decode(fgets($fp),true);
            
        }
    }
    
    }
    
    
    //okreslanie polazenia pliku i jesli plik usuniety przez uzytkownika, ale znajdujacy sie w buforze to dodawanie rozmiaru pliku
    private function FIndFile(string $file): void
    {
    
        //jesli pliku nie ma w tablicy z plikami uzywanymi
        if (!array_key_exists($file,$this->BuforPicture) && !array_key_exists($file,$this->BuforFile1) && !array_key_exists($file,$this->BuforVideo)){ //print_r( $this->BuforPicture );
                
            //jesli plik zostal usuniety przez uzytkownika ale nie skasowany z bufora
            if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file)){
                $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file),true);
                $this->addSize=(int)$this->addSize+(int)$tab['size'];//dodawanie rozmiaru pliku do ogolnej wartosci
            }
            //jesli plik zostal usuniety przez uzytkownika ale nie skasowany z bufora
            else if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforfile1/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file)){
                $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforfile1/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file),true);
                $this->addSize=(int)$this->addSize+(int)$tab['size'];//dodawanie rozmiaru pliku do ogolnej wartosci
            }
            //jesli plik zostal usuniety przez uzytkownika ale nie skasowany z bufora
            else if (file_exists($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file)){
                $tab=(array)json_decode(@file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/buforvideo/'.(string)$this->apiauthorizecontroller->getUser()->getId().'/'.$file),true);
                $this->addSize=(int)$this->addSize+(int)$tab['size'];//dodawanie rozmiaru pliku do ogolnej wartosci
            }
                
        }
    
    }
    
    private function getSizeBuffer(int $typ): int
    {
        $copy=array(); $value=(int)0;
        if ($typ===1){$copy=$this->BuforPicture;}
        else if ($typ===2){$copy=$this->BuforFile1;}
        else if ($typ===3){$copy=$this->BuforVideo;}
        
        //sumowanie rozmiarow dla plikow
        foreach ($copy as $klucz=>$wartosc){$value=(int)$value+(int)$wartosc;}
        
        return $value;
    
    }
    
    //ilosc przedmiotow w tabeli cat1 - prodkty
    private function cat1Count(): int
    {
    
    $entityManager = $this->doctrine->getManager();
    $sql = $entityManager->getRepository('App\Entity\Cat1')->findBy(array('user'=>$this->apiauthorizecontroller->getUser()));
    
    return count($sql);
    }
    
    //ilosc przedmiotow w tabeli catt1 - recenzje
    private function catt1Count(): int
    {
    
    $entityManager = $this->doctrine->getManager();
    $sql = $entityManager->getRepository('App\Entity\Catt1')->findBy(array('user'=>$this->apiauthorizecontroller->getUser()));
    
    return count($sql);
    }
    
    //ilosc przedmiotow w tabeli catt1 - podstrony
    private function podstronyCount(): int
    {
    
    $entityManager = $this->doctrine->getManager();
    $sql = $entityManager->getRepository('App\Entity\Podstrony')->findBy(array('user'=>$this->apiauthorizecontroller->getUser()));
    
    return count($sql);
    }
    

}
