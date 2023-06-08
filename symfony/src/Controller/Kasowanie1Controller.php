<?php
//kasowanie plikow ktore zostaly wgrane na poczatku tworzenie oprogramowania oraz tresc zostala usunieta, ale pliki zostaly


namespace App\Controller;

//use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\JsonResponse;
use ZipArchive;

use \DOMDocument;

class Kasowanie1Controller extends AbstractController
{

    private array $usePicture=[];
    private array $notUsePicture=[];
    private string $wzorzec1='https://api.symetryczny.pl/picture2/';//wzorzec url

    public function __construct()
    {
    
    }




    #[Route('/kasowanie1', name: 'kasowanie1')]
    public function index(): JsonResponse
    {
    die();

    
        $this->typ('cat1description1',1);//czysty tekst
        $this->typ('cat1description2',1);//czysty tekst
        $this->typ('cat1recenzja',1);//czysty tekst
        $this->typ('cat1picture',2);//tablic plikow
        $this->typ('cat1video',2);//tablic plikow
        $this->typ('catt1dane',1);//czysty tekst
        $this->typ('file1data',4);//tablica obiektow
        $this->typ('homedata',1);//czysty tekst
        $this->typ('homesekcje',3);//tablica obiektow
        $this->typ('menunaglowek1',1);//czysty tekst
        $this->typ('menunaglowek2',1);//czysty tekst
        $this->typ('podstronydata',1);//czysty tekst
        $this->typ('podstronysekcje',3);//tablica obiektow
        $this->typ('stopka1data',1);//czysty tekst
        $this->typ('szablon2data',1);//czysty tekst
        $this->typ('szablon2sekcje',3);//tablica obiektow
        
        $this->notUseFile();//tworzenie tablicy z plikami nie uzytmi
        
        //print_r($this->usePicture);
        //print_r($this->allfile());
    
        $uzyte=$this->usePicture;
        $this->usePicture=[];//kasowanie tabalicy
        $this->usePicture['uzyte']=$uzyte;//pliki uzyte
        $this->usePicture['nieuzyte']=$this->notUsePicture;//pliki nie uzyte
        
        //$this->zipCreate($this->usePicture['nieuzyte']);//tworzenie zip z plikami nie uzytymi
        
        //$this->deleteFile($this->usePicture['nieuzyte']);//kasowanie plików
    
        return new JsonResponse(
            $this->usePicture
        );
    }
    
    
    private function typ(string $sciezka, int $rodzaj): void
    {
    
        //echo $sciezka.' '.$rodzaj;
        if ($rodzaj===1){$this->PlainText($sciezka);}
        else if ($rodzaj===2){$this->ArrayText($sciezka);}
        else if ($rodzaj===3){$this->ArraySekcje($sciezka);}
        else if ($rodzaj===4){$this->ArrayFile1($sciezka);}
    
    }
    
    private function PlainText(string $sciezka): void
    {
        $files1=$this->files($sciezka);
        //echo 'plainText'; print_r($files1);
        
        foreach ($files1 as $wartosc) {
        
            $data=file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/'.$sciezka.'/'.$wartosc);
            
            $this->LaczenieTablic($this->StringToArray($data));
        
        }
        
        //print_r($this->usePicture);
    
    }
    
    private function ArrayText(string $sciezka): void
    {
        $files1=$this->files($sciezka);
        //echo 'plainText'; print_r($files1);
        
        foreach ($files1 as $wartosc) {
        
            $data=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/'.$sciezka.'/'.$wartosc),true);
            
            $this->LaczenieTablic($data);
        
        }
        
        //print_r($this->usePicture);
    
    }
    
    private function ArraySekcje(string $sciezka): void
    {
        $files1=$this->files($sciezka);
        //echo 'plainText'; print_r($files1);
        
        foreach ($files1 as $wartosc) {
        
            $data=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/'.$sciezka.'/'.$wartosc),true);
            
            foreach ($data as $wartosc2) {
                //print_r($wartosc2);
                $this->LaczenieTablic($this->StringToArray($wartosc2['value']));
            }
            
            //$this->LaczenieTablic($data);
        
        }
        
        //print_r($this->usePicture);
    
    }
    
    private function ArrayFile1(string $sciezka): void
    {
        $files1=$this->files($sciezka);
        //echo 'plainText'; print_r($files1);
        
        foreach ($files1 as $wartosc) {
        
            $data=(array)json_decode(file_get_contents($this->getParameter('kernel.project_dir').'/public/bufor/'.$sciezka.'/'.$wartosc),true);
            
            foreach ($data as $wartosc2) {
                //print_r($wartosc2);
                //print_r(array($wartosc2['id']));
                $this->LaczenieTablic(array($wartosc2['id']));
            }
        
        }
    
    }
    
    //tworzenie tablicy z uzytymi plikami
    private function LaczenieTablic(array $data): void
    {
    
    //print_r($data);
    
    foreach ($data as $wartosc) {
    
        if (!in_array($wartosc,$this->usePicture)){array_push($this->usePicture, $wartosc);}
    
    }
    
    
    }
    
    //pobieranie wszystkich plikow w katalogu
    private function files(string $sciezka): array
    {   
    //scandir i usuwanie . oraz ..
    $files1 = array_diff( scandir( $this->getParameter('kernel.project_dir').'/public/bufor/'.$sciezka ), array('..', '.'));
    
    return $files1;
    }
    
    //wyciaganie ze stringa zdjęcia i zwracanie w array
    protected function StringToArray(string $image):array
    {
    
        /*//preg_match_all( '/<img.+src="([^"]+)"/U' , $image , $match );//odczyt src dla obrazkow
        preg_match_all( '/<img.+src=["\']+(.*?)["\']/U' , $data , $match );//odczyt src dla obrazkow
        $match[0] = array_unique($match[0]); //usuwanie duplikatow
        $match[1] = array_unique($match[1]); //usuwanie duplikatow*/
$match=array(1=>array());
if (!empty(trim($image))){
$dom=new DOMDocument;@$dom->loadHTML((string)trim($image));
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
        
        $tab=array();
        foreach ($match[1] as $value) {
            //jesli wzorzec spelniony to zapis zdjęcia
            $rr=explode('/',$value);//ostatni element tablicy https://api.symetryczny.pl/picture2/image123
            if (substr($value,0,strlen($this->wzorzec1))===$this->wzorzec1){array_push($tab,end($rr));}
        }
        //print_r($match);
        //print_r($tab);
    
    return $tab;
    }
    
    //wszystkie pliki w katalogu upload
    protected function allfile():array
    {
    
    //scandir i usuwanie . oraz ..
    $files1 = array_diff( scandir( $this->getParameter('kernel.project_dir').'/public/picture' ), array('..', '.'));
    
    //print_r($files1);
    
    return $files1;
    
    }
    
    //nie uzywane pliki
    protected function notUseFile():void
    {
    
        foreach ($this->allfile() as $value) {
                
            //jesli nie znajdzie pliku z katalogu public/image w uzytych plikach to oznacza ze plik nie uzyty
            if (!in_array($value,$this->usePicture)){array_push($this->notUsePicture, $value);}
        
        }
    
    
    }
    
    protected function zipCreate(array $data):void
    {
    
    $zip = new ZipArchive;
                            //UWAGA brakuje kopii plikow mime
    if ($zip->open('/opt/lampp/htdocs/1a/kopiaImage.zip', ZipArchive::CREATE) === TRUE)
    {
        foreach ($data as $wartosc) {
        $zip->addFile( $this->getParameter('kernel.project_dir').'/public/picture/'.$wartosc );
        }

 
        // Add random.txt file to zip and rename it to newfile.txt
        //$zip->addFile('random.txt', 'newfile.txt');
 
        // Add a file new.txt file to zip using the text specified
        //$zip->addFromString('new.txt', 'text to be added to the new.txt file');
 
        // All files are added, so close the zip file.
        $zip->close();
    }
    
    }
    
    protected function deleteFile(array $data):void
    {
        foreach ($data as $wartosc) {
        
            if (strlen($wartosc)>20){
                //echo $wartosc."\r\n";
                unlink($this->getParameter('kernel.project_dir').'/public/picture/'.$wartosc);
                
            //jesli istnieje plik mime
            if (file_exists($this->getParameter('kernel.project_dir').'/public/picturemime/'.$wartosc)){
                //echo $wartosc."\r\n";
                unlink($this->getParameter('kernel.project_dir').'/public/picturemime/'.$wartosc);
            }
            }
        
        }
    }
    
}
