<?php

namespace App\Controller;

use ApiPlatform\Core\DataPersister\ResumableDataPersisterInterface;
use ApiPlatform\Core\DataPersister\ContextAwareDataPersisterInterface;
use Doctrine\ORM\EntityManagerInterface;
use App\Entity\User;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

use Paynow\Client;
use Paynow\Environment;
use Paynow\Exception\PaynowException;
use Paynow\Service\Payment;

use Rogervila\ArrayDiffMultidimensional;
use Symfony\Component\Config\Definition\Exception\Exception;
//Attempted to load class "Exception" from namespace "App\Controller". Did you forget a "use" statement for e.g. "Symfony\Component\Config\Definition\Exception\Exception", "PHPMailer\PHPMailer\Exception", "Negotiation\Exception\Exception", "Lcobucci\JWT\Exception", "Hybridauth\Exception\Exception", "Http\Discovery\Exception", "Http\Client\Exception", "Doctrine\DBAL\ArrayParameters\Exception", "Doctrine\DBAL\SQL\Parser\Exception", "Doctrine\DBAL\Driver\PDO\Exception", "Doctrine\DBAL\Driver\Exception" or "Doctrine\DBAL\Exception"?

use \DOMDocument;

final class ApiPlatformPersistersController implements ContextAwareDataPersisterInterface, ResumableDataPersisterInterface
{
    private $DownloadUrl='https://api.symetryczny.pl';
    private $SubdomainUrl='https://witryna.fun';
    private $entityManager;
    private $containerbag;
    private $sql;
    private Array $GetAllPayDelivery=[];//metody platnosci i dostaw uzywane przez konto
    private Array $payUse=[];//uzyta metoda platnosci
    private String|null $uniq=null;//unikalny od platnosci, generowany gdy potrzebny
    private String|null $paymentid=null;//unikalny od platnosci z systemu platnosci, generowany gdy potrzebny
    private bool $platnoscOK=true;//okreslanie czy platosc rozpoczeta poprawnie, jesli tak zmniejszanie stanu przedmiotu
    private float $DoZaplaty1;
    private string|null $KupujacyEmail=null;
    private $imageSize;
    //private $imageSize2;
    private $fileSize;
    private $videoSize;
    private $accountSize;
    private $apiauthorizecontroller;
    private sqlBuforController $sqlBufor;
    
    public function __construct(EntityManagerInterface $entityManager,/* LoginAutoController $loginautocontroller,*/ ApiAuthorizeController $apiauthorizecontroller, /*Security $security*/ ContainerBagInterface $containerBag, ImageSizeController $imageSize, FileSizeController $fileSize, VideoSizeController $videoSize, AccountSizeController $accountSize, sqlBuforController $sqlBufor)
    {//echo('hej1');die();
        $this->entityManager = $entityManager;
        $this->containerbag = $containerBag;
        $this->imageSize = $imageSize;
        //$this->imageSize2 = $imageSize;
        $this->fileSize = $fileSize;
        $this->videoSize = $videoSize;
        $this->accountSize=$accountSize;
        $this->apiauthorizecontroller = $apiauthorizecontroller;
        $this->sqlBufor=$sqlBufor;
        //$this->security = $security;
       
       /*
        //if user is not logged in
        if ($this->security->getUser()===null){//echo('logowanie');
        $user=$apiauthorizecontroller->getUser();//print_r($user->getUsername());
        $loginautocontroller->userSet($user);
        }
        */
    }
    
    public function supports($data, array $context = []): bool
    {
        //return $data instanceof User;
        return 1;
        //return 0;
    }

    public function persist($data, array $context = [])
    {
    $class=$context['resource_class'];$class=explode('\\',$class);$class=strtolower($class[2]);
    
    


                            //testowaz z rozwinieta konsola devtool->console w trybie zalogowany i niezalogowany
                            //UWAGA: po usunieciu metody patch z plikow entity, angular pokazywal bledy
    if ($class==='allegro1'){
    
        if (strlen($data->getClientid())>200 || strlen($data->getClientsecret())>200){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='cashbill'){
    
        if (strlen($data->getIdentyfikator())>200 || strlen($data->getKlucz())>200){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='cat1'){
        //$data->setWarianty(['ÿ']);

        if (
        $data->getCategory()>250 || 
        $data->getCategory()<0 || 
        //strlen($data->getTitle())>100000 || //filtrowane nizej
        //strlen($data->getDescription())>100000 || //filtrowane nizej
        //strlen($data->getDescription2())>100000 || //filtrowane nizej
        strlen(json_encode($data->getPicture()))>1000000 || 
        strlen(json_encode($data->getVideo()))>1000000 ||
        $data->getCount()<0 || 
        $data->getCount()>99999999 || 
        $data->getPrice()<0 || 
        $data->getPrice()>99999999 || 
        ($data->getWyswietlanie()!==true && $data->getWyswietlanie()!==false) || 
        ($data->getWarianty()!==[] && $data->getWarianty()!==['ÿ']) || //nie jest przekazywna przez ApiPlatform
        strlen($data->getDefaultpicture())>100 ||
        strlen(json_encode($data->getFieldsforbuyers()))>1000000 ||
        strlen(json_encode($data->getAny()))>10000 ||
        (strlen($data->getRecenzja())>0 && $data->getRecenzja()!=='ÿ') || //nie jest przekazywna przez ApiPlatform
        strlen($data->getUuid())>100 ||
        strlen(json_encode($data->getFacebookposts()))>1000000
        ){
            throw new Exception("ErRoR");
        }

    }
    else if ($class==='category1'){
    
        if (strlen(json_encode($data->getData()))>10000){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='facebook1'){
    
        if (strlen($data->getClientid())>200 || strlen($data->getClientsecret())>200){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='file1'){
    
        if (strlen(json_encode($data->getData()))>1000000){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='hotpay'){
    
        if (strlen($data->getIdentyfikator())>200 || strlen($data->getKlucz())>200){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='menu1'){
    
        if (
        strlen(json_encode($data->getMenu()))>1000000 || 
        strlen(json_encode($data->getDisplay()))>1000 ||
        strlen($data->getJavascript())>1000000 ||
        strlen($data->getCss())>100000
        ){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='naglowek1'){
    
        if (strlen(json_encode($data->getNaglowek()))>1000 || strlen(json_encode($data->getSeo()))>1000){
            throw new Exception("ErRoR");
        }
    
    
    }
    else if ($class==='orders'){
    
        if (strlen(json_encode($data->getData()))>1000000){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='paydelivery'){
    
        if (strlen(json_encode($data->getData()))>1000000 || strlen(json_encode($data->getFieldsforbuyers()))>100000){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='paynow'){
    
        if (strlen($data->getIdentyfikator())>200 || strlen($data->getKlucz())>200){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='szablon1'){

        if ($data->getCategory()<-2 || $data->getCategory()>-1 || $data->getCategoryproduct()!==0 || strlen(json_encode($data->getData()))>100000){
            throw new Exception("ErRoR");
        }
    
    }
    else if ($class==='user'){

        throw new Exception("ErRoR");
    
    }
    //throw new Exception("ErRoR");
    
    //echo('>>>>>');print_r(get_class_methods($data));die();
    //echo('>>>>>');print_r($context);
    //die();
    //print_r($data->getNaglowek());
    //$data->getUser()->setUsername('user');print_r($data->getUser()->getUsername());
    //$data->setUser('/api/users/78');
    //die();
    //$data->setPicture('');
    //echo($data->getPicture());
    //print_r(get_class_methods($data->getPicture()));
    
    //$a=array('abc');$data->setPicture($a);
    //print_r($data->getPicture());
    //print_r($context);// die();
    
    //foreach ($context as $key=>$value){echo('>>'.$key.'<<');}
    
    //klasa entity z kategoriami musi zaczynac sie od Cat i numer kagtegorii np, Cat12
    //$class0=substr($class, 0, 3);$class1=substr($class, 3);
    //if (isset($context['collection_operation_name']) && $context['collection_operation_name']==='post' && $class0==='Cat' && is_numeric($class1)){
    //if ($class0==='Cat' && is_numeric($class1)){
    if (strtolower($class)===strtolower('Cat1')){
    //print_r ($this->accountSize->getSize((array)[],(int)0));die();
    
    //obliczanie miejsca uzytego przez uzytkownika  i blokowanie dodania nowej tresci  --------------------- >
        $sizee=(int)0;
        //jesli sa pliki wgrane ale jeszcze nie podpiete to obliczanie miejsca zajmowanego przez te pliki - zdjęcia
        if ($data->getPicture()!==['ÿ']){
        foreach ($data->getPicture() as $value){
        if (substr((string)$value, 0, 5)==='!nEw-'){
        $value=explode('!nEw-',$value);$value=(string)$value[1];
            if (file_exists($this->containerbag->get('kernel.project_dir').'/tmp/'.$value)){
                $sizee=(int)$sizee+(int)filesize($this->containerbag->get('kernel.project_dir').'/tmp/'.$value);
            }
        }
        }
        }
        //jesli sa pliki wgrane ale jeszcze nie podpiete to obliczanie miejsca zajmowanego przez te pliki - filmy
        if ($data->getVideo()!==['ÿ']){
        foreach ($data->getVideo() as $value){
        if (substr((string)$value, 0, 5)==='!nEw-'){
            if (file_exists($this->containerbag->get('kernel.project_dir').'/tmp/'.$value)){
                $sizee=(int)$sizee+(int)filesize($this->containerbag->get('kernel.project_dir').'/tmp/'.$value);
            }
        }
        }
        }
        //rozdzielenie ÿÿÿ potrzebne jest aby skrypt usuwal tylko duplikaty zdjec dla jednego rekordu sql
        $size_descrition='';
        if ($data->getDescription()!=='ÿ'){$size_descrition=$size_descrition.' ÿÿÿ '.(string)$data->getDescription();}
        if ($data->getDescription2()!=='ÿ'){$size_descrition=$size_descrition.' ÿÿÿ '.(string)$data->getDescription2();}       
        //jesli tworzenie nowej tresci to sprawdzanie limitu pojemnosc oraz limitu podstron - collection post
        if (isset($context['collection_operation_name']) && $context['collection_operation_name']==='post'){
            if ($this->accountSize->getSize((string)$size_descrition,(int)$sizee)['limityPrzekroczone']['size']===1 || $this->accountSize->getSize((string)$size_descrition,(int)0)['limityPrzekroczone']['page']===1){throw new Exception("Przekroczony limit pojemności konta");}
        }
        //jesli aktualizacja tresci to sprawdzanie limitu pojemnosci - item put
        else{
           if ($this->accountSize->getSize((string)$size_descrition,(int)$sizee)['limityPrzekroczone']['size']===1){throw new Exception("Przekroczony limit pojemności konta");}
        }
        
    
    // < -----------------------------------------------------------------------
    
    
    //nazwy upload obrazkow
    if ($data->getPicture()!==['ÿ']){
    $tab=array();
    $newPicture=array();
    //$files1 = scandir($this->containerbag->get('kernel.project_dir').'/public/picture');array_shift($files1);array_shift($files1);
    //print_r($files1);
    //$nowe=false;
    $ilosc00=0;
    foreach ($data->getPicture() as $value) {
                                                    if (substr((string)$value, 0, 5)==='!nEw-'){
    $value=explode('!nEw-',$value);$value=(string)$value[1];
    if (file_exists($this->containerbag->get('kernel.project_dir').'/tmp/'.$value)){
    //$nowe=true;//jesli sa nowe pliki
    
        //tworzenie unikalnej nazwy pliku
        for ($i = 0; $i < 500; $i++){//echo($i);
        
        $rr=md5(time().rand(0,999999999999));
        //echo('>>'.$value.">>");
        //echo($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr.'>>');
        if (!file_exists($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr)){
        rename($this->containerbag->get('kernel.project_dir').'/tmp/'.$value, $this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr);
        array_push($tab, $rr);
        array_push($newPicture, $rr);
        break;
        }
        }
    }
                                                                                                }else{
        array_push($tab, $value);//dodawanie starego zdjecia
                                                                                                }
    $ilosc00++; if ($ilosc00>20){break;}//maksymalnie 20 zdjęć
    }
    $data->setPicture($tab);
    }
    
    
    //konwertowanie zdjec base64 z tinymce do pliku img
    //if ($this->accountSize->getSize((string)$data->getDescription(),(int)0)['limityPrzekroczone']['size']===1){throw new Exception("Przekroczony limit pojemności konta");}
    $description=array();
    if ($data->getDescription()!=='ÿ'){
    $description=$this->Base64ToImage($data->getDescription());
    //nowa treść opisu
    $data->setDescription($description['data']);
    }
    
    //konwertowanie zdjec base64 z tinymce do pliku img
    //if ($this->accountSize->getSize((string)$data->getDescription(),(int)0)['limityPrzekroczone']['size']===1){throw new Exception("Przekroczony limit pojemności konta");}
    $description2=array();
    if ($data->getDescription2()!=='ÿ'){
    $description2=$this->Base64ToImage($data->getDescription2());
    //nowa treść opisu
    $data->setDescription2($description2['data']);
    }
    
    $title=$data->getTitle();
    //kasowanie plikow ktore zostaly dodane i tresc wpisu nie zostala zaakceptowana
    if (strlen($title)>1000 || (isset($description['data']) && strlen($description['data'])>100000) || (isset($description2['data']) && strlen($description2['data'])>100000) || $data->getCategory()>250 || $data->getCategory()<0){
    
    //usuwanie wczesniej wgranych plikow
    if (isset($description['owner'])){
    foreach ($description['owner'] as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}
    }
    
    //usuwanie wczesniej wgranych plikow
    if (isset($description2['owner'])){
    foreach ($description2['owner'] as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}
    }
    
    //usuwanie wczesniej wgranych plikow
    if (isset($newPicture)){
    foreach ($newPicture as $wartosc){@unlink($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc);}
    }

    throw new Exception("Przekroczony limit pojemności konta");
    }
    
    
    
    

    
    
    //jeśli film - [cat1 video]
    if ($data->getVideo()!==['ÿ']){
    $video1=array();
    $ilosc00=0;
    foreach ($data->getVideo() as $value){
    
        if (substr((string)$value, 0, 5)==='!nEw-'){

    if (file_exists($this->containerbag->get('kernel.project_dir').'/tmp/'.$value)){
        //tworzenie unikalnej nazwy pliku
        for ($i = 0; $i < 500; $i++){//echo($i);
        
        $rr=md5(time().rand(0,999999999999));

        if (!file_exists($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr)){
        
        //plik video
        rename($this->containerbag->get('kernel.project_dir').'/tmp/'.$value, $this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr);
        
        //mime type
        if (file_exists($this->containerbag->get('kernel.project_dir').'/tmp2/'.$value)){
        rename($this->containerbag->get('kernel.project_dir').'/tmp2/'.$value, $this->containerbag->get('kernel.project_dir').'/public/picturemime/'.$rr);
        }

//miniaturka thumbnail filmu
$output=null;$retval=null;
exec('timeout 20s ffmpeg -i /opt/lampp/htdocs/1a/symfony/public/picture/'.$rr.' -frames:v 1 /opt/lampp/htdocs/1a/symfony/public/picture/'.$rr.'-videothumbnail.jpg -y', $output, $retval);
//rename('/opt/lampp/htdocs/1a/symfony/public/picture/'.$rr.'-videothumbnail.jpg', '/opt/lampp/htdocs/1a/symfony/public/picture/'.$rr.'-videothumbnail');
//exec('ls', $output, $retval);
//echo "Returned with status $retval and output:\n";
//print_r($output);
        
        array_push($video1, $rr);
        break;
        }
        }
    }
    
        }else{
    
        array_push($video1, $value);//dodawanie starego filmu
    
        }
    $ilosc00++; if ($ilosc00>0){break;}//maksymalnie 1 film
    }
    $data->setVideo($video1);
    }
    //die('123');
    
    //if (strlen($data->getDescription())>0){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$data->getId(),$data->getDescription());}
    
    //print_r ($data->getId());
    //print_r(get_class_methods($data));die();
    
    //obiekt jest klonowany bo wylicza rozmiary osobno dla roznych rekordow sql
    $clone_imageSize1=clone($this->imageSize);//description1
    $clone_imageSize2=clone($this->imageSize);//description2
    
    if ($data->getPicture()!==['ÿ']){
    //zapis zdjęć uzytych przez uzytkownika, gdy tworzenie nowego rekordu to brak sql id, ktory jest niżej dodawany
    $this->imageSize->setValue('App\Entity\Cat1','picture',empty($data->getId())?null:(int)$data->getId(),(array)$tab,(array)$tab);//picture
    }
    
    if ($data->getDescription()!=='ÿ'){
    $clone_imageSize1->setValue('App\Entity\Cat1','description1',empty($data->getId())?null:(int)$data->getId(),(string)$description['data'],(array)$description['owner']);
    }
    
    if ($data->getDescription2()!=='ÿ'){
    $clone_imageSize2->setValue('App\Entity\Cat1','description2',empty($data->getId())?null:(int)$data->getId(),(string)$description2['data'],(array)$description2['owner']);
    }
    
    //print_r ( array_merge($description['owner'],$description2['owner']) );die();

    //$this->imageSize->setValue('App\Entity\Cat1','picture',empty($data->getId())?null:(int)$data->getId(),(string)'qwerty');die();
    }
    
    
    

    
    
    
    
    
    //jesli zapytanie do tworzenia integracji z facebook
    if ($context['resource_class']==='App\Entity\Facebook1'){
        //echo $data->getClientid().' '.$data->getClientsecret().' '.$data->getUser()->getUsername().' '.$data->getUser()->getDomain();
        //echo('>>>>>');print_r(get_class_methods($data));
        
        //domena
        $domain=$data->getUser()->getDomain();
        $domain=explode('*',trim($domain)); $tmp=$domain[1];
        //wyszukiwanie domeny systemowej która nie jest uzytkownika np. test, a nie test.pl
        foreach ($domain as $wartosc) { if (strlen($wartosc)>0 && !stristr($wartosc, '.')){$tmp=$wartosc;break;} }
        //echo($tmp);
        
        //domena 2
        //wyszukiwanie domeny uzytkownika
        $tmp2=$tmp;
        foreach ($domain as $wartosc) { if (strlen($wartosc)>0 && stristr($wartosc, '.')){$tmp2=$wartosc;break;} }
        
        //client id
        $clientid=$data->getClientid();$clientid = str_replace('\'','\\\'',$clientid);
        
        //client secret
        $clientsecret=$data->getClientsecret();$clientsecret = str_replace('\'','\\\'',$clientsecret);
        
        //skrypt php do autoryzacji uzytkownika w facebook
        $file=file_get_contents('/opt/lampp/htdocs/1a/angularSzablon1/any/facebookPattern.php');
        $file = str_replace('$client_id=\'clientID\';', '$client_id=\''.$clientid.'\';', $file);
        $file = str_replace('$client_secret=\'clientSecret\';', '$client_secret=\''.$clientsecret.'\';', $file);
        $file = str_replace('$domain=\'domain\';', '$domain=\''.$tmp.'\';', $file);
        $file = str_replace('$domain_redirect=\'\';', '$domain_redirect=\''.$tmp2.'\';', $file);
        file_put_contents('/opt/lampp/htdocs/1a/angularSzablon1/any/facebook/'.$tmp.'.php',$file);
        //echo($file);
    
        $data->setClientid('');$data->setClientsecret('');$data->setAppsecretproof('');
    }
    
    
    

    //jesli zapytanie do tworzenia integracji z allegro
    if ($context['resource_class']==='App\Entity\Allegro1'){
    
        //domena
        $domain=$data->getUser()->getDomain();
        $domain=explode('*',trim($domain)); $tmp=$domain[1];
        //wyszukiwanie domeny systemowej która nie jest uzytkownika np. test, a nie test.pl
        foreach ($domain as $wartosc) { if (strlen($wartosc)>0 && !stristr($wartosc, '.')){$tmp=$wartosc;break;} }
        //echo($tmp."\r\n");
        
        //domena 2
        $tmp2=$tmp;
        foreach ($domain as $wartosc) { if (strlen($wartosc)>0 && stristr($wartosc, '.')){$tmp2=$wartosc;break;} }
        
        //client id
        $clientid=$data->getClientid();$clientid = str_replace('\'','\\\'',$clientid);
        //echo($clientid."\r\n");
        
        //client secret
        $clientsecret=$data->getClientsecret();$clientsecret = str_replace('\'','\\\'',$clientsecret);
        //echo($clientsecret."\r\n");
        
        //skrypt php do autoryzacji uzytkownika w allegro
        $file=file_get_contents('/opt/lampp/htdocs/1a/angularSzablon1/allegro/.allegroPattern.php');
        $file = str_replace('define(\'CLIENTID\',\'\');', 'define(\'CLIENTID\',\''.$clientid.'\');', $file);
        $file = str_replace('define(\'CLIENTSECRET\',\'\');', 'define(\'CLIENTSECRET\',\''.$clientsecret.'\');', $file);
        $file = str_replace('define(\'DOMAIN\',\'\');', 'define(\'DOMAIN\',\''.$tmp.'\');', $file);
        $file = str_replace('define(\'DOMAIN2\',\'\');', 'define(\'DOMAIN2\',\''.$tmp2.'\');', $file);
        file_put_contents('/opt/lampp/htdocs/1a/angularSzablon1/allegro/'.$tmp.'.php',$file);
        
        $data->setAccessToken('');
//die();
    } 
    
    
    
    
    
    
    //do Entity\file1 jest wysylany plik przez upload3, a tutaj jest tylko usuwanie pojedynczych plikow, dlatego na wszelki wypadek sprawdzam czy plik istnieje
    if ($context['resource_class']==='App\Entity\File1'){
    
        if ($data->getData()!==['ÿ']){
            $dddd=$data->getData();
            if (count($dddd)>500){array_splice($dddd, 500);}//maksymalnie 500 plikow
            foreach ($dddd as $klucz=>$wartosc) {
                if (!file_exists($this->containerbag->get('kernel.project_dir').'/public/picture/'.$wartosc['id'])){unset($dddd[$klucz]);}
            }
            $data->setData($dddd);
            //print_r($dddd);die();
        }
        
    }
    
    
    
    
    
    
    /* //jesli aktualizacja danych przedmiotu i jest modyfikowany wariant
    if ($context['resource_class']==='App\Entity\Cat1' && isset($context['item_operation_name']) && $context['item_operation_name']==='put'){
    
    $dowiazanie=$data->getDowiazanie();//czy dowiazanie
    $id=$data->getId();//id przedmiotu
    
    $wariantyOld=(array)$context['previous_data']->getWarianty();//print_r($wariantyOld);
    $wariantyNext=(array)$data->getWarianty();//print_r($wariantyNext);
    
                                                                                    //jsli produkt dziecko
                                                                                    if ($dowiazanie!==null){
    
    //pobieranie wariantu od rodzica
    $rodzic = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('id'=>$dowiazanie));
    $rodzicWarianty=$rodzic[0]->getWarianty();
    
    //sprawdzanie czy przetwarzany jest wariant aktualnie ustawiony przez rodzica
    $compare = (array)ArrayDiffMultidimensional::compare($rodzicWarianty['uuid'],$wariantyNext['uuid']);
    
    //jesli aktualizowany wariant zmieniony przez rodzica
    if (count($compare)>0){
    print_r($compare);
    die('');
    }
    
    //porownywanie wariantu rodzica z nowym wariantem dziecka i zwracanie roznicy
    $result1 = (array)ArrayDiffMultidimensional::compare($wariantyNext,$rodzicWarianty);
    //print_r($result1);
    
    //$NewWariantTylkoZmiany = array_replace_recursive($rodzicWarianty,$result1);
    //print_r($NewWariantTylkoZmiany);
 
    //zapis zmienionej czesci wariantu
    //if (count($result1)>0){
        $data->setWarianty($result1);
        //$this->entityManager->persist($data);
    //}
    
    
                                                                                    //jesli produkt rodzic
                                                                                    }else{

    
    $compare=array();
    //jesli wariant istnieje w poprzednim i aktualnym zapisie to porownywanie uuid
    if (isset($wariantyOld['uuid']) && isset($wariantyNext['uuid'])){
        $compare = ArrayDiffMultidimensional::compare($wariantyOld['uuid'],$wariantyNext['uuid']);
    }
    //jesli wariant istnieje tylko w poprzednim to  kasowanie wariantu
    else if (isset($wariantyOld['uuid'])){
        $compare=('1');
    }

    //wariant został zmieniony i wymaga aktulizazacji w produkt dziecko
    if (count($compare)>0){
    
    //odcyt wariantow uzytych w produktach dziecko
    $dzieci = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('dowiazanie'=>$id));
    //echo count($dzieci);
     
     //kasowanie wariantu / wylaczanie wyswietlania tresci w przedmiocie dziecka
    foreach ($dzieci as $value) {
        //$value->setWarianty([]);//kasowanie wariantu
        $value->setWyswietlanie(0);//wylaczanie wyswietlania przedmiotu
        $this->entityManager->persist($value);
    }

    }
    
                                                                                        }



    //die();
    
    }*/
    
    
    
    
    
    
    
    
    
    
    
    
    /*if ($context['resource_class']==='App\Entity\User' && isset($context['item_operation_name']) && $context['item_operation_name']==='put'){ 
    
    echo('gogo');die();
    
    }*/
    
    
    
    /*
    //jesli dodanie nowej domeny
    if ($context['resource_class']==='App\Entity\Domain1' && isset($context['item_operation_name']) && $context['item_operation_name']==='put'){ 
        
    $data->setSslpobieranie(null);
    $data->setSslwaznosc(null);
        
        //echo('test'.$context['item_operation_name']);
        //echo $data->getNazwa();
        
        //jesli usuwanie domeny
        if (strlen(trim($data->getNazwa()))===0){
            $data->setDodanie(new \DateTime('2021-01-01 -1 day'));
        }else{
            $data->setDodanie(new \DateTime());
        }
        
        
        //die();
    }*/
    
    
    
    
    
    
    
    
    
    
        //UWAGA NA WARTOSCI UJEMNE I DUPLIKATY ZAMÓWIEŃ
        //jesli tworzenie nowego zamówienia
        if ($context['resource_class']==='App\Entity\Orders' && $context['collection_operation_name']==='post'){      
    
        $user=$this->apiauthorizecontroller->getUser();
    
    
        $this->sql=$data;
        
    $kupujacy=(array)$data->getData()['model2'];
    
    /*
    echo('>');
    //print_r( $kupujacy );echo(' ');
    print_r( $data->getUser()->getId() );echo(' ');
    print_r( $data->getUser()->getUsername() );echo(' ');
    //print_r( get_class_methods($data) );
    echo('<');
    die();
    */
    
    
    //jesli jest email w danych kupujacego
    if (isset($kupujacy['BuyerEmail']) && strlen($kupujacy['BuyerEmail'])>2 && strstr($kupujacy['BuyerEmail'],'@')){$this->KupujacyEmail=$kupujacy['BuyerEmail'];}
    //jesli jest wybrany inny osobny adres do wysylki niz adres kupujacego && jest email
    else if (isset($kupujacy['checkboxShippingAddress']) && $kupujacy['checkboxShippingAddress']===true && isset($kupujacy['Shipping-BuyerEmail']) && strlen($kupujacy['Shipping-BuyerEmail'])>2 && strstr($kupujacy['Shipping-BuyerEmail'],'@')){$this->KupujacyEmail=$kupujacy['Shipping-BuyerEmail'];}
    
    
    //suma zamówienia -------------------------------------------------------------------------------->
    $NumeryPrzedmiotów=Array();
    //jesli tablica bedzie pusta to poprawnie, w error są błędy związane z kupowanym przedmiotem, jesli nie bedzie błędów tzn ze nie znaleziono przedmiotu
    $Przedmioty=Array();//przedmioty ktore sa usuwane w przypadku poprawnosci
    $PrzedmiotyAll=Array();//wszystkie przedmioty, jesli poprawie to zapis do bazy danych
    $WartoscZamowienia=(int)0;
    $Koszyk=(array)$data->getData()['koszyk'];
    //print_r($Koszyk);
    $iloscZamowien=(int)0;
    foreach ($Koszyk as $value) {$iloscZamowien++;
    $WartoscZamowienia=(float)$WartoscZamowienia+((float)$value['iloscWybrana']*(float)$value['cena']);
    
    //tworzenie tablicy z iloscia oraz cena do porównania z wartościami w sql
    $tmp=Array('iloscWybrana'=>round($value['iloscWybrana'],2),'cena'=>round($value['cena'],2),'idWariant'=>$value['id'],'error'=>Array());
    if ((int)$value['id']===(int)-1){//jesli nie wariant
        if (isset($Przedmioty[$value['tresc']])){$data->setData(null);break;}//jesli przedmiot uzyty wczesniej to blad
        $Przedmioty[$value['tresc']]=$tmp;
    }else{//jesli wariant
        if (isset($Przedmioty[$value['tresc']][$value['id']])){$data->setData(null);break;}//jesli przedmiot uuid uzyty to blad
        if (isset($Przedmioty[$value['tresc']]['idWariant'])){$data->setData(null);break;}//jesli przedmiot byl uzyty w nie wariancie
        $tmp['uuid']=$value['uuid'];//dopisanie numeru uuid wariantu
        $Przedmioty[$value['tresc']][$value['id']]=$tmp;
    }
    
    //w przypadku wariantu przedmiot moze byc uzyty kilka razy
    if (!in_array($value['tresc'], $NumeryPrzedmiotów)){array_push($NumeryPrzedmiotów, $value['tresc']);}
    
    }
    //jesli zbyt wiele przedmiotow w koszyku
    if ($iloscZamowien>90){$data->setData(null);}
    
    //jedno zamówienie ma okolo 700 znakow
    if (strlen(json_encode($data->getData()))>(700*90)){$data->setData(null);}
    $PrzedmiotyAll=$Przedmioty;
    //echo "\r\n".'Koszyk '.$WartoscZamowienia."\r\n";
    //print_r($Przedmioty);
    //print_r($NumeryPrzedmiotów);
    //suma zamówienia --------------------------------------------------------------------------------<
    
    

    
    
    
    
    
    
    
    //koszt dostawy ---------------------------------------------------------------------------------->   
    $sql2 = $this->entityManager->getRepository('App\Entity\Paydelivery')->findBy(array('user'=>$data->getUser()));
    //$PaymentDeliveryAll=(array)$sql2[0]->getData();
    $PaymentDeliveryAll=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$sql2[0]->getId()),true);
    
    //jesli admin dodaje zamowienie i na koncie brak ustawionej metody dostawy to wstawianie bo w php pojawiaja sie bledy
    if (count($PaymentDeliveryAll)===0){
    $PaymentDeliveryAll_wzorzec=(array)json_decode('[{"idPlatnosci":"PayIdTest3","MetodyDostawy":[{"idDostawy":"DeliveryIdTest7","MessageForBuyer":"OK","nazwa":"odbi\u00f3r osobisty"}],"thumbnail":"https:\/\/api.symetryczny.pl\/picture2\/platnoscp"}]',true);
    $PaymentDeliveryAll=$PaymentDeliveryAll_wzorzec;
    }
    
    //print_r($PaymentDeliveryAll);
    //echo json_encode($PaymentDeliveryAll);die();
    
    //print_r($data->getData());
    $PaymentDeliveryChosen=(array)$data->getData()['PaymentDeliveryVerifyD'];
    //print_r($PaymentDeliveryChosen);
    
    /*
    echo('>');
    print_r($PaymentDeliveryAll);echo(' ');
    print_r( $sql2[0]->getId() );echo(' ');
    print_r( $data->getUser()->getId() );echo(' ');
    echo('<');
    die();
    */
    
    $MetodaPlatnosci=(string)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['idPlatnosci'];

    //dostawa
    if (isset($PaymentDeliveryChosen['dostawa'])){//jesli dostawa istnieje (inna niz odbior osobisty)
    $MetodaDostawyDostawa=(string)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['idDostawy'];
    $MetodaDostawyMessage=(string)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['MessageForBuyer'];
    }else{//jesli dostawa nie istnieje (np odbior osobisty)
    $MetodaDostawyDostawa=(string)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][0]['idDostawy'];
    $MetodaDostawyMessage=(string)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][0]['MessageForBuyer'];
    }
    
    $DostawaKoszt=null;
    //jesli istnieje metoda dostawy
    if (isset($PaymentDeliveryChosen['dostawa'])){
  
    if (
    //jesli wybrana metoda dostawy inna niz odbiór osobisty
    $PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['idDostawy']!=='DeliveryIdTest7' && 
    //jesli wybrana metoda dostawy inna niz "brak dostawy"
    $PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['idDostawy']!=='DeliveryIdTest10')
    {
    
        if (
        //jesli istnieje opcja darmowej dostawy
        isset($PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['darmowaDostawa']) &&
        //jesli koszt zamówienia większy od wartosci darmowej dostawy
        $WartoscZamowienia>=$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['darmowaDostawa']
        ){
            $DostawaKoszt=(float)0;
        }
    
    //jesli odbiór osobisty lub brak dostawy
    }else{$DostawaKoszt=(float)0;}
    
    
    //jesli nie udalo sie okreslic kosztu dostawy
    if ($DostawaKoszt===null){
    
        //jesli nie okreslony koszt dostawy
        if (!isset($PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['kosztWysylki'])){
        
            $DostawaKoszt=0;
        
        //ustawianie domyslnego kosztu dostawy
        }else{
        
            $DostawaKoszt=(float)$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['MetodyDostawy'][$PaymentDeliveryChosen['dostawa']]['kosztWysylki'];
        
        }
    
    }
    
    }else{$DostawaKoszt=0;}
    //echo "\r\n".'Dostawa '.$DostawaKoszt."\r\n";
    //koszt dostawy ----------------------------------------------------------------------------------<
    
    
    
    
    
    
    
    
    //wartość dodatkowe ------------------------------------------------------------------------------>
    $WartoscDodatkowe=(float)0;
    if (isset($PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['ObslugaProcent'])){
        if ($WartoscZamowienia+$DostawaKoszt>$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['ObslugaWartosc']){
            $WartoscDodatkowe=(($WartoscZamowienia+$DostawaKoszt)*$PaymentDeliveryAll[$PaymentDeliveryChosen['platnosc']]['ObslugaProcent'])/100;
        }
    }
    //echo "\r\n".'Dodatkowe '.$WartoscDodatkowe."\r\n";
    //wartość dodatkowe ------------------------------------------------------------------------------<
    
    
    
    
    
    
    
    
    
    
    //sprawdzanie ilsoci i cen------------------------------------------------------------------------>   
    $sql = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('id'=>$NumeryPrzedmiotów,'user'=>$data->getUser()));
    
    //jesli prodkt jest dowiazaniem to pobiernaie danych rodzica
    $sql2=array();
    foreach ($sql as $klucz=>$value) {
        if ($value->getDowiazanie()!==null){
            $tmp = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('id'=>$value->getDowiazanie()));
            $sql2[$klucz]=$tmp[0];
        }
    }
    
    //echo count($sql)."\r\n";
    //echo count($sql2);
    //print_r($warianty);
    //die();
    //jesli ilosc przedmiotow pobranych z sql inna niz ilosc przedmiotow w zamowieniu tzn ze podany przedmiot innego uzytkownika
    //if (count($sql)!==count($NumeryPrzedmiotów)){$data->setData(null);}
    foreach ($sql as $key=>$value) {
        //print_r(get_class_methods($value));
        
        $wariantTMP=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId()),true);
        
        //jesli istnieje rodzic to pobieranie danych od rodzica
        if (isset($sql2[$key])){
        $idPzedmiotIlosc=(float)round($sql2[$key]->getCount(),2);
        //$warianty=(array)$sql2[$key]->getWarianty();
        $warianty=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$sql2[$key]->getId()),true);
            //jesli rodzic ma warianty && dziecko ma czastkowe warianty to laczenie tablic aby cene z dziecka
            //if (count($warianty)>0 && count($value->getWarianty())>0){
            if (count($warianty)>0 && count($wariantTMP)){
                //$warianty=array_replace_recursive($warianty,$value->getWarianty());
                $warianty=array_replace_recursive($warianty,$wariantTMP);
            }
        }else{
        $idPzedmiotIlosc=(float)round($value->getCount(),2);
        //$warianty=(array)$value->getWarianty();
        $warianty=(array)$wariantTMP;
        }
        
        $idPzedmiotCena=(float)round($value->getPrice(),2);
        $idPzedmiot=(int)$value->getId();
        $wyswietlanie=(int)$value->getWyswietlanie();
        
        //jesli wariant
        if (count($warianty)>0){//print_r($warianty);
            foreach ($warianty['character'] as $key => $value2) {
                $idWariant=(int)$key;
                
                if (
                //jesli wariant z bazy istnieje w wariantach kupowanych
                isset($Przedmioty[$idPzedmiot]) && isset($Przedmioty[$idPzedmiot][$idWariant]) &&
                //jesli id wariant sie zgadza
                @(string)$Przedmioty[$idPzedmiot][$idWariant]['uuid']===(string)$warianty['uuid'][$idWariant]
                ){
                
                // !(jesli zapytanie wysyla zalogwany user i jest taki sam jak user w ktorym ma byc utworzone zamowienie) to nie sprawdzanei warunku
                if ( !($user && (int)$user->getId()===(int)$data->getUser()->getId()) ){
                    //jesli przedmiot nie aktywny
                    if ($wyswietlanie!==(int)1){array_push($Przedmioty[$idPzedmiot][$idWariant]['error'], 'przedmiot jest nieaktywny');}
                }
                
                    //jesli ilosc otrzymana z zamówienia uzytkownika inna jak w bazie
                    if (count($Przedmioty[$idPzedmiot][$idWariant]['error'])===0 && (float)$value2['count']===(float)0)
                        {
                        array_push($Przedmioty[$idPzedmiot][$idWariant]['error'], 'dostępna ilość przedmiotów wynosi 0');
                        }
                        
                    
                    //jesli ilosc otrzymana z zamówienia uzytkownika wieksza niz w bazie
                    if (count($Przedmioty[$idPzedmiot][$idWariant]['error'])===0 && (float)$Przedmioty[$idPzedmiot][$idWariant]['iloscWybrana']>(float)round($value2['count'],2))
                        {
                        array_push($Przedmioty[$idPzedmiot][$idWariant]['error'], 'ilość przedmiotów przekracza ilość dostępnych przedmiotów która wynosi '.(float)round($value2['count'],2));
                        }
                        
                // !(jesli zapytanie wysyla zalogwany user i jest taki sam jak user w ktorym ma byc utworzone zamowienie) to nie sprawdzanei warunku
                if ( !($user && (int)$user->getId()===(int)$data->getUser()->getId()) ){
                    //jesli cena otrzymana z zamówienia uzytkownika inna jak w bazie
                    if (count($Przedmioty[$idPzedmiot][$idWariant]['error'])===0 && (float)$Przedmioty[$idPzedmiot][$idWariant]['cena']!==(float)round($value2['price'],2)){
                        array_push($Przedmioty[$idPzedmiot][$idWariant]['error'], 'aktualna cena przedmiotu wynosi '.(float)round($value2['price'],2));
                    }
                }
                    
                    //jesli brak bledow
                    if (count($Przedmioty[$idPzedmiot][$idWariant]['error'])===0){
                    
                    //nowa ilość dla wariantu
                    $warianty['character'][$idWariant]['count']=(float)$warianty['character'][$idWariant]['count']-(float)$Przedmioty[$idPzedmiot][$idWariant]['iloscWybrana'];
                    //$value->setWarianty($warianty);
                    
                        unset($Przedmioty[$idPzedmiot][$idWariant]);
                        //jesli przedmiot(tablica nie zawiera danych to usuwanie)
                        if (count($Przedmioty[$idPzedmiot])===0){unset($Przedmioty[$idPzedmiot]);}
                    }
                
                }
                
                
            }
        }
        //jesli nie wariant
        else{
            if (
            //jesli przedmiot z bazy istnieje w przedmiotach kupowanych && nie wariant
            isset($Przedmioty[$idPzedmiot]) && isset($Przedmioty[$idPzedmiot]['cena'])){

            //if ($user){
            //print_r(get_class_methods($data->getUser()));
            //echo $user->getId().' '.$data->getUser()->getId();
            //die;
            //}
            
                // !(jesli zapytanie wysyla zalogwany user i jest taki sam jak user w ktorym ma byc utworzone zamowienie) to nie sprawdzanei warunku
                if ( !($user && (int)$user->getId()===(int)$data->getUser()->getId()) ){
                //jesli przedmiot nie aktywny
                if (count($Przedmioty[$idPzedmiot]['error'])===0 && $wyswietlanie!==(int)1){array_push($Przedmioty[$idPzedmiot]['error'], 'przedmiot jest nieaktywny');}
                }
                    
                //jesli ilosc przedmiotów wynosi 0
                if (count($Przedmioty[$idPzedmiot]['error'])===0 && (float)$idPzedmiotIlosc===(float)0){
                    array_push($Przedmioty[$idPzedmiot]['error'], 'dostępna ilość przedmiotów wynosi 0');
                }
                
                //jesli ilosc kupowanych przedmiotów przekracza ilość dostępnych
                if (count($Przedmioty[$idPzedmiot]['error'])===0 && (float)$Przedmioty[$idPzedmiot]['iloscWybrana']>(float)$idPzedmiotIlosc){
                    array_push($Przedmioty[$idPzedmiot]['error'], 'ilość przedmiotów przekracza ilość dostępnych przedmiotów która wynosi '.$idPzedmiotIlosc);
                }
                
                // !(jesli zapytanie wysyla zalogwany user i jest taki sam jak user w ktorym ma byc utworzone zamowienie) to nie sprawdzanei warunku
                if ( !($user && (int)$user->getId()===(int)$data->getUser()->getId()) ){
                //jesli ceny są różne
                if (count($Przedmioty[$idPzedmiot]['error'])===0 && (float)$Przedmioty[$idPzedmiot]['cena']!==(float)$idPzedmiotCena){
                    array_push($Przedmioty[$idPzedmiot]['error'], 'aktualna cena przedmiotu wynosi '.$idPzedmiotCena);
                }
                }
                
                    //jesli brak bledow
                    if (count($Przedmioty[$idPzedmiot]['error'])===0){
                    
                        unset($Przedmioty[$idPzedmiot]);
                    }
            
            }
            
        }
        
        //echo("\r\n");
        //print_r($value->getPrice());
        //print_r($value->getCount());
        //echo("\r\n");
    }
    //echo("\r\n".'błędne przedmioty>');print_r($Przedmioty);
    //sprawdzanie ilsoci i cen------------------------------------------------------------------------<
    
    
    

    
    
    
    
    
    //suma zamówienia -------------------------------------------------------------------------------->
    $this->DoZaplaty1=$DoZaplaty=round((float)$WartoscZamowienia+$DostawaKoszt+$WartoscDodatkowe,2);
    //echo "\r\n".'Do zapłaty '.$DoZaplaty."\r\n";
    //suma zamówienia --------------------------------------------------------------------------------<
    
    
    
    
    
    
    //metoda płatności ------------------------------------------------------------------------------->
    //echo($MetodaPlatnosci);
    //metoda płatności -------------------------------------------------------------------------------<
    
    
    
    
    //metoda dostawy ------------------------------------------------------------------------------->
    //echo($MetodaDostawyDostawa.' '.$MetodaDostawyMessage);
    //metoda płatności -------------------------------------------------------------------------------<
    
    
    //echo count($Przedmioty);
    //die();
    
    //jesli poprawnie -------------------------------------------------------------------------------->
    if ((float)$DoZaplaty>(float)0 && count($Przedmioty)===0){
    
    //pobieranie z sql wszystkich medotod dostaw i platnosci
    $this->GetAllPayDelivery();
    
    //odczyt danych dla wybranej platnosci
    $platnosc=$this->PlatnoscOkresl($MetodaPlatnosci);
    
    $data->setUniq($this->uniq);//unikalny id płatności
    $data->setPaymentid($this->paymentid);//unikalny id płatności z systemu platnosci
    $data->setError(null);

                                                    //jesli bledne rozpoczecie platnosco to skrocony komunikat z informacją o błędzie
                                                    if ($this->platnoscOK===false){
    //komunikat dla kupującego
    $data->setZamowienie('<p>Do zapłaty '.$DoZaplaty.' zł.</p>'.$platnosc);
    $data->setStatus(1);
                                                    }
    
                                                    //jesli platnosc rozpoczeta poprawnie to zmniejszanie stanow
                                                    if ($this->platnoscOK===true){
    $data->setStatus(6);
    
    //komunikat dla kupującego
    $data->setZamowienie('<p>Do zapłaty '.$DoZaplaty.' zł.</p>'.$platnosc.'<p>'.htmlspecialchars($MetodaDostawyMessage,ENT_QUOTES).'</p>');
    
    //ustawianie nowych ilosci w bazie danych
    foreach ($sql as $key2=>$value) {
        
$wariantTMP=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId()),true);

        //jesli istnieje rodzic to pobieranie danych od rodzica
        if (isset($sql2[$key2])){
        $idPzedmiotIlosc=(float)round($sql2[$key2]->getCount(),2);
        //$warianty=(array)$sql2[$key2]->getWarianty();
        $warianty=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$sql2[$key2]->getId()),true);
            //jesli rodzic ma warianty && dziecko ma czastkowe warianty to laczenie tablic aby cene z dziecka
            //zmieniana bedzie tylko ilosc wic nie ma potrzeby laczyc wariantow
            //if (count($warianty)>0 && count($value->getWarianty())>0){
            //    $warianty=array_replace_recursive($warianty,$value->getWarianty());
            //}
        }else{
        $idPzedmiotIlosc=(float)round($value->getCount(),2);
        //$warianty=(array)$value->getWarianty();
        $warianty=(array)$wariantTMP;
        }
        $idPzedmiot=(int)$value->getId();
        //$idPzedmiotIlosc=(float)round($value->getCount(),2);
        //$warianty=(array)$value->getWarianty();
        
        //jesli wariant
        if (count($warianty)>0){
            $Stan=false;
            foreach ($warianty['character'] as $key => $value2) {
                
                $idWariant=(int)$key;
                
                if (
                //jesli wariant z bazy istnieje w wariantach kupowanych
                isset($PrzedmiotyAll[$idPzedmiot]) && isset($PrzedmiotyAll[$idPzedmiot][$idWariant]) &&
                //jesli id wariant sie zgadza
                @(string)$PrzedmiotyAll[$idPzedmiot][$idWariant]['uuid']===(string)$warianty['uuid'][$idWariant]
                ){
                
                    //nowa ilość dla wariantu
                    $warianty['character'][$idWariant]['count']=(float)$warianty['character'][$idWariant]['count']-(float)$PrzedmiotyAll[$idPzedmiot][$idWariant]['iloscWybrana'];
                    
                    //jesli istnieje rodzic else produkt bez rodzica
                    if (isset($sql2[$key2])){
                    //$sql2[$key2]->setWarianty($warianty);
                    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$sql2[$key2]->getId(),json_encode($warianty));$sql2[$key2]->setWarianty(['ÿ']);
                    }else{
                    //$value->setWarianty($warianty);
                    file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId(),json_encode($warianty));$value->setWarianty(['ÿ']);
                    }

                }
                
                //okreslanie czy w wariancie sa ilosci > 0, jelsi nie to wylaczanie wyswietlania przedmiotu
                if ((float)$warianty['character'][$idWariant]['count']>(float)0){$Stan=true;}
                
            }
                //jesli ilosc przedmiotow w wariancie === 0 to wylaczanie wyswietlania wariantu/przedmiotu
                //if ($Stan===false){$value->setWyswietlanie(0);}
                //jesli istnieje rodzic else produkt bez rodzica
                if ($Stan===false){
                    //jesli istnieje rodzic to ustawianie danych w rodzicu
                    if (isset($sql2[$key2])){
                    $sql2[$key2]->setWyswietlanie(0);$this->setFalseAktywnoscItem($sql2[$key2]->getId());
                    }else{
                    $value->setWyswietlanie(0);$this->setFalseAktywnoscItem($value->getId());
                    }
                }
        }
        //jesli nie wariant
        else{
            if (
            //jesli przedmiot z bazy istnieje w przedmiotach kupowanych && nie wariant
            isset($PrzedmiotyAll[$idPzedmiot]) && isset($PrzedmiotyAll[$idPzedmiot]['cena'])){

            $idPzedmiotIlosc=(float)$idPzedmiotIlosc-(float)$PrzedmiotyAll[$idPzedmiot]['iloscWybrana'];
            //$value->setCount($idPzedmiotIlosc);
            //jesli istnieje rodzic else produkt bez rodzica
            if (isset($sql2[$key2])){$sql2[$key2]->setCount($idPzedmiotIlosc);}else{$value->setCount($idPzedmiotIlosc);}
            
            //jesli ilosc przedmiotów wynosi 0 to wyłączanie wyświetlanie przedmiotu
            //if ($idPzedmiotIlosc<(float)0.01){$value->setWyswietlanie(0);}
            if ($idPzedmiotIlosc<(float)0.01){
                //jesli istnieje rodzic to ustawianie danych w rodzicu
                if (isset($sql2[$key2])){
                $sql2[$key2]->setWyswietlanie(0);$this->setFalseAktywnoscItem($sql2[$key2]->getId());
                }else{
                $value->setWyswietlanie(0);$this->setFalseAktywnoscItem($value->getId());
                }
            }
            
            }
            
        }

    }
                                                                            }

    }else{
    //jesli błędnie -------------------------------------------------------------------------------->
    //echo("\r\n".'Błędnie'."\r\n");
    
    //oznaczanie błędnych przedmiotów w koszyku
    foreach ($Przedmioty as $key => $value) {
    $idPrzedmiot=(int)$key;
    
    //jesli przedmiot
    if (isset($value['cena'])){

        //jesli nie ma błedu to nie znaleziono przedmiotu
        if (count($value['error'])===0){$value['error']=Array('nie znaleziono przedmiotu');}
        
        //oznaczanie przedmiotu w koszyku jako blad
        foreach ($Koszyk as $key3 => $value3){
            //jesli id przedmiotu w koszyku taki jak id przedmiotu z bledem
            if ((int)$value3['tresc']===$idPrzedmiot){
                $Koszyk[$key3]['error']=$value['error'];
            }
        }
    
    }
    //jesli wariant
    else{
        //tablica z błędnymi wariantami
        foreach ($value as $key2 => $value2){
        $idWariant=(int)$key2;
            //jesli nie ma błedu to nie znaleziono wariantu
            if (count($value2['error'])===0){$value2['error']=Array('nie znaleziono wariantu lub wariant został zmieniony');}
            
            //oznaczanie wariantu w koszyku jako blad
            foreach ($Koszyk as $key3 => $value3){
                //jesli id przedmiotu w koszyku taki jak id przedmiotu z bledem
                if ((int)$value3['tresc']===$idPrzedmiot && (int)$value3['id']===$idWariant){
                    $Koszyk[$key3]['error']=$value2['error'];
                }
            }
        
        }
    
    }
    

    
    }
    
    //print_r($Przedmioty);
    //print_r($Koszyk);
    $data->setError(Array('koszyk'=>$Koszyk));
    $data->setZamowienie(null);
    $data->setStatus(0);
    }
    

    
    $data->setCreation(new \DateTime());
    //die();
        }
    
        
        
        


    //print_r($data->getData());
        $this->entityManager->persist($data);
        $this->entityManager->flush();
        
                                                                            //zapis informacji o istniejacych/usunietych zdjeciach i filmach
    if (strtolower($class)===strtolower('Cat1')){
    
        //zapis informacji o uzytych zdjeciach
            //image array
        if ($data->getPicture()!==['ÿ']){
        $this->imageSize->setSqlId((int)$data->getId());//id przedmiotu w bazie sql
        $this->imageSize->go();//die();
        }
            //description1
        if ($data->getDescription()!=='ÿ'){
        $clone_imageSize1->setSqlId((int)$data->getId());//id przedmiotu w bazie sql
        $clone_imageSize1->go();//die();
        }
            //description2
        if ($data->getDescription2()!=='ÿ'){
        $clone_imageSize2->setSqlId((int)$data->getId());//id przedmiotu w bazie sql
        $clone_imageSize2->go();//die();
        }
        
        //echo '123 '; echo $data->getId(); print_r($data->getVideo());
        //die();
        
        //zapis informacji o uzytych plikach wideo
        if ($data->getVideo()!==['ÿ']){
        $this->videoSize->setValue('App\Entity\Cat1', 'video', (int)$data->getId(), (array)$data->getVideo());
        }

    
    }
    
                                                                            //zapis informacji o istniejacych/usunietych plikach
    if (strtolower($class)===strtolower('File1')){
    
        if ($data->getData()!==['ÿ']){
        $this->fileSize->setValue('App\Entity\File1', 'data', (int)$data->getId(), (array)$data->getData());
        }
        
    }
        
        

        $rob=false;//jesli istniaja zmiany to zapis w bazie danych
    if (strtolower($class)===strtolower('Cat1')){
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getTitle()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$data->getId(),$data->getTitle());$this->sqlBufor->setId((int)$data->getUser()->getId());$this->sqlBufor->addCat1($data->getId(),$data->getTitle(),null,null,null);$data->setTitle('ÿ');$rob=true;}

    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getDescription()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$data->getId(),$data->getDescription());$this->sqlBufor->setId((int)$data->getUser()->getId());$this->sqlBufor->addCat1($data->getId(),null,$data->getDescription(),null,null);$data->setDescription('ÿ');$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getDescription2()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$data->getId(),$data->getDescription2());$this->sqlBufor->setId((int)$data->getUser()->getId());$this->sqlBufor->addCat1($data->getId(),null,null,$data->getDescription2(),null);$data->setDescription2('ÿ');$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getPicture()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$data->getId(),json_encode($data->getPicture()));$data->setPicture(['ÿ']);$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getVideo()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$data->getId(),json_encode($data->getVideo()));$data->setVideo(['ÿ']);$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getWarianty()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$data->getId(),json_encode($data->getWarianty()));$data->setWarianty(['ÿ']);$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getFieldsforbuyers()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$data->getId(),json_encode($data->getFieldsforbuyers()));$data->setFieldsforbuyers(['ÿ']);$rob=true;}
    
    }
    else if (strtolower($class)===strtolower('Menu1')){
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getJavascript()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$data->getId(),$data->getJavascript());$data->setJavascript('ÿ');$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getCss()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$data->getId(),$data->getCss());$data->setCss('ÿ');$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getMenu()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$data->getId(),json_encode($data->getMenu()));$data->setMenu(['ÿ']);$rob=true;}
    
    }
    else if (strtolower($class)===strtolower('Orders')){
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getZamowienie()!=='ÿ'){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$data->getId(),$data->getZamowienie());$data->setZamowienie('ÿ');$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getData()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$data->getId(),json_encode($data->getData()));$data->setData(['ÿ']);$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getError()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$data->getId(),json_encode($data->getError()));$data->setError(['ÿ']);$rob=true;}
    
    }
    else if (strtolower($class)===strtolower('File1')){
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getData()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$data->getId(),json_encode($data->getData()));$data->setData(['ÿ']);$rob=true;}
    
    }
    else if (strtolower($class)===strtolower('Paydelivery')){
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getFieldsforbuyers()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$data->getId(),json_encode($data->getFieldsforbuyers()));$data->setFieldsforbuyers(['ÿ']);$rob=true;}
    
    //jesli nowe dane wprowadzne przez uzytkownika
    if ($data->getData()!==['ÿ']){file_put_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$data->getId(),json_encode($data->getData()));$data->setData(['ÿ']);$rob=true;}
    
    }
        
        if ($rob===true){
        $this->entityManager->persist($data);
        $this->entityManager->flush();
        }
        
    }
    
    
    
    
    private function Base64ToImage(string $data):array
    {$data=trim($data);
    
        //preg_match_all( '/<img.+src="([^"]+)"/U' , $data , $match );//odczyt src dla obrazkow
        //preg_match_all( '/<img.+src=["\']([a-zA-Z0-9\/]*)["\']/U' , $data , $match );//odczyt src dla obrazkow
        //$match[0] = array_unique($match[0]); //usuwanie duplikatow
        //$match[1] = array_unique($match[1]); //usuwanie duplikatow
$match=array(1=>array());
if (!empty($data)){
$dom=new DOMDocument;@$dom->loadHTML((string)$data);
foreach ($dom->getElementsByTagName('img') as $img){$match[1][] = $img->getAttribute('src');}
$match[1] = array_unique($match[1]);//usuwanie duplikatow
}
        
        $newImage=array();//nowe zdjęcia
        foreach ($match[1] as $klucz=>$wartosc){
                                                    //jesli obrazek w base64
                                                    if (substr($wartosc,0,5)==='data:'){//echo('robie');
            $wartosc=explode('base64,',$wartosc);
            $wartosc=base64_decode($wartosc[1]);
    
                //tworzenie unikalnej nazwy pliku
                for ($i = 0; $i < 500; $i++){//echo($i);
        
        $rr=md5(time().rand(0,9999));
        if (!file_exists($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr)){
        //zapis danych do pliku
        file_put_contents($this->containerbag->get('kernel.project_dir').'/public/picture/'.$rr,$wartosc);
        
        //zamiana danych w html
        $data=str_replace($match[1][$klucz],$this->DownloadUrl.'/picture2/'.$rr,$data);
        array_push($newImage, $rr);//dodanie nowego zdjęcia
        break;
        }
        
                }

            //echo($wartosc."\r\n");
                                                    }
        }
    
    return ['data'=>trim($data),'owner'=>$newImage];
    }
    
    
    //wylaczanie wyswietlania przedmiotu
    private function setFalseAktywnoscItem(int $number){
    
    //przedmioty dzieci
    $dzieci = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('dowiazanie'=>$number));
    
    //echo count($dzieci).'<<<';
    
    //kasowanie produktu/tresci dzieci
    foreach ($dzieci as $value) {
        //echo count($dzieci).'<<<';
        //$value->setWarianty([]);//kasowanie wariantu
        $value->setWyswietlanie(0);//wylaczanie wyswietlania przedmiotu
        //$this->entityManager->persist($value);
        //$this->entityManager->remove($value);
    }
    
    }
    
    //odczyt wszystkich metod platnosci i dostaw utworzonych przez uzytkownika
    private function GetAllPayDelivery(){
    
    $sql2 = $this->entityManager->getRepository('App\Entity\Paydelivery')->findBy(array('user'=>$this->sql->getUser()));
    
    //$this->GetAllPayDelivery=(array)$sql2[0]->getData();
    $this->GetAllPayDelivery=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$sql2[0]->getId()),true);
    
    }
    
    //odczyt wszystkich metod platnosci i dostaw
    private function PlatnoscData(string $typ):void
    {
    
    //odczyt metody platnosci i metody dostaw
    foreach ($this->GetAllPayDelivery as $value) {
        if ($value['idPlatnosci']===$typ){$this->payUse=$value; break;}
    }
    
    }
    
    //wyodrebnianie wybranej metody platnosci
    private function PlatnoscOkresl(string $typ):string
    {
    
    //wyodrebnianie wybranej metody platnosci ktora zawiera metody dostaw
    $this->PlatnoscData($typ);
    
    //przelew tradycyjny
    if ($typ==='PayIdTest2'){
        return $this->PrzelewTradycyjny();
    }
    //płatność przy odbiorze
    else if ($typ==='PayIdTest3'){
        return $this->PlatnoscPrzyOdbiorze();
    }
    //płatność paynow
    else if ($typ==='PayIdTest4'){
        return $this->PlatnoscPayNow();
    }
    //płatność hotpay
    else if ($typ==='PayIdTest5'){
        return $this->PlatnoscHotPay();
    }
    
    }
    
    //jesli płatność HotPay
    private function PlatnoscHotPay():string
    {
    
$sql2 = $this->entityManager->getRepository('App\Entity\Hotpay')->findBy(array('user'=>$this->sql->getUser()));
//print_r($sql2[0]->getIdentyfikator());
//print_r($sql2[0]->getKlucz());

//unikalny id płatności
$this->getUniq();

//kwota płatności, po oplacaniu paymentid zmieniany jest na id płatności
$this->paymentid=(string)$this->DoZaplaty1;

//print_r(get_class_methods($this->sql->getUser()));
//print_r( $this->sql->getUser()->getDomain() );
//print_r($_SERVER);

        //domena
        $domain=$this->sql->getUser()->getDomain();
        $domain=explode('*',trim($domain)); $tmp=$domain[1];
        //wyszukiwanie domeny systemowej która nie jest uzytkownika np. test, a nie test.pl
        foreach ($domain as $wartosc) { if (strlen($wartosc)>0 && stristr($wartosc, '.')){$tmp=$wartosc;break;} }
        //echo '>'.$tmp.'<';


        $wstaw='';
        if (stristr($tmp, '.')){$wstaw="https://$tmp/redirect";}else{$wstaw=$this->SubdomainUrl."/$tmp/redirect";}

        
$data='<form id="order" action="https://platnosc.hotpay.pl/" method="post">
<input required name="SEKRET" value="'.$sql2[0]->getIdentyfikator().'" type="hidden">
<input required name="KWOTA" value="'.(float)$this->DoZaplaty1.'" type="hidden">
<input required name="NAZWA_USLUGI" value="zakupy" type="hidden">
<input required name="ADRES_WWW" value="'.$wstaw.'" type="hidden">
<input required name="ID_ZAMOWIENIA" value="'.$this->uniq.'" type="hidden">
<input name="EMAIL" value="" type="hidden">
<input name="DANE_OSOBOWE" value="" type="hidden">
<button type="submit" class="btn btn-primary">przejdź do płatności</button>
</form>';

//echo $data;

return '<p>Wybrana metoda płatności: hotpay płatności online.</p><p>'.$data.'</p>';
    }
    
    //jesli płatność PayNow
    private function PlatnoscPayNow():string
    {

//unikalny id płatności
$this->getUniq();//echo('>'.$this->uniq.'<');

$sql2 = $this->entityManager->getRepository('App\Entity\Paynow')->findBy(array('user'=>$this->sql->getUser()));
    
$currency='PLN';
$cr = $this->entityManager->getRepository('App\Entity\Szablon1')->findBy(array('user'=>$this->sql->getUser(),'category'=>-2,'categoryproduct'=>0));
if (count($cr)>0){
$data=$cr[0]->getData();
if (isset($data['WalutaBank'])){$currency=(string)$data['WalutaBank'];}
//print_r($currency);
}
//die('rRrR');

//$client = new Client('', '', Environment::PRODUCTION);
//$client = new Client('65c2f8a5-0aca-4ee1-8f9c-ad6267557b5d', 'ff46d6a6-4b15-47fb-8f4c-a2b4ad4d2349', Environment::SANDBOX);

//zamiana treści api środowiska testowego na środowisko produkcyjne
if ((string)$_SERVER['REMOTE_ADDR']===(string)'83.28.108.232!'){$client = new Client($sql2[0]->getIdentyfikator(), $sql2[0]->getKlucz(), Environment::SANDBOX);/*die('sandbox');*/}else{$client = new Client($sql2[0]->getIdentyfikator(), $sql2[0]->getKlucz(), Environment::PRODUCTION);/*die('production');*/}
    
//$client = new Client($sql2[0]->getIdentyfikator(), $sql2[0]->getKlucz(), Environment::SANDBOX);
//echo('1>>');print_r( $sql2[0]->getIdentyfikator() );
//echo('2>>');print_r( $sql2[0]->getKlucz() );

$paymentData = [
    'amount' => (int)((float)$this->DoZaplaty1*(float)100),
    'currency' => $currency,
    'externalId' => $this->uniq,
    'description' => 'zakupy',
    'buyer' => [
        'email' => $this->KupujacyEmail
    ]
];
//print_r($paymentData);


$data=(string)'';

//wymagany adres email dla paynow
if ($this->KupujacyEmail===null){
    $this->platnoscOK=false;
    $data.='W tej metodzie płatności wymagany jest adres email.';
}

                                                        //jesli poprawnie
                                                        if ($this->platnoscOK===true){
try {
    $payment = new Payment($client);
    $result = $payment->authorize($paymentData, $this->uniq);
    $this->paymentid=$result->getPaymentId();//id platnosci z systemu platnosci
    
    //echo('<pre>-');print_r($result);echo('</pre>');
    //print_r(get_class_methods($result));
    //echo($result->getStatus()."\r\n");die();
    //echo($result->getRedirectUrl()."\r\n");
    $data='<a href="'.$result->getRedirectUrl().'"><button type="submit" class="btn btn-primary">przejdź do płatności</button></a>';
    
    
} catch (PaynowException $exception) {
    
    $this->platnoscOK=false;
    $data.='Nie udało się nawiązań połączenia z systemem płatności, być może metoda płatności nie jest skonfigurowana.';
    //print_r(get_class_methods($exception));
    //print_r($exception->getErrors());
}


                                                    }
    
    return '<p>Wybrana metoda płatności: paynow bramka płatnośći online.</p><p>'.$data.'</p>';
    }
    
    //jesli płatność przy odbiorze
    private function PlatnoscPrzyOdbiorze():string
    {
    
    
    return '<p>Wybrana metoda płatności: płatność przy odbiorze.</p>';
    }
    
    //jesli przelew tradycyjny
    private function PrzelewTradycyjny():string
    {
    //print_r( $this->payUse );
    
    $data=(string)'';
    
if (isset($this->payUse['nazwaFirmySprzedawca'])){

$data.='<div class="row">';
$data.='<div class="col-sm-12">
<span class="text-secondary">Nazwa firmy</span><br />
'.htmlspecialchars($this->payUse['nazwaFirmySprzedawca'],ENT_QUOTES).'
</div>';
$data.='</div>';

}
    
if (isset($this->payUse['imieSprzdawca']) || isset($this->payUse['nazwiskoSprzedawca'])){

$data.='<div class="row">';

if (isset($this->payUse['imieSprzdawca'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Imię</span><br />
'.htmlspecialchars($this->payUse['imieSprzdawca'],ENT_QUOTES).'
</div>';
}

if (isset($this->payUse['nazwiskoSprzedawca'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Nazwisko</span><br />
'.htmlspecialchars($this->payUse['nazwiskoSprzedawca'],ENT_QUOTES).'
</div>';
}

$data.='</div>';
}

if (isset($this->payUse['domSprzedawca']) || isset($this->payUse['mieszkanieSprzedawca'])){

$data.='<div class="row">';

if (isset($this->payUse['domSprzedawca'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Nr. domu</span><br />
'.htmlspecialchars($this->payUse['domSprzedawca'],ENT_QUOTES).'
</div>';
}

if (isset($this->payUse['mieszkanieSprzedawca'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Nr. mieszkania</span><br />
'.htmlspecialchars($this->payUse['mieszkanieSprzedawca'],ENT_QUOTES).'
</div>';
}

$data.='</div>';
}

if (isset($this->payUse['ulicaSprzedawca'])){
$data.='<div class="row">';
$data.='<div class="col-sm-6">
<span class="text-secondary">Ulica</span><br />
'.htmlspecialchars($this->payUse['ulicaSprzedawca'],ENT_QUOTES).'
</div>';
$data.='</div>';
}

if (isset($this->payUse['kodPocztowy']) || isset($this->payUse['miastoSprzedawca'])){

$data.='<div class="row">';

if (isset($this->payUse['kodPocztowy'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Kod pocztowy</span><br />
'.htmlspecialchars($this->payUse['kodPocztowy'],ENT_QUOTES).'
</div>';
}

if (isset($this->payUse['miastoSprzedawca'])){
$data.='<div class="col-sm-6">
<span class="text-secondary">Miasto</span><br />
'.htmlspecialchars($this->payUse['miastoSprzedawca'],ENT_QUOTES).'
</div>';
}

$data.='</div>';
}


$data.='<div class="row">';
$data.='<div class="col-sm-12">
<span class="text-secondary">Rachunek bankowy</span><br />
'.htmlspecialchars($this->payUse['kontoBankoweSprzedawca'],ENT_QUOTES).'
</div>';
$data.='</div>';
    
    return '<p>Wybrana metoda płatności: przelew tradycyjny.</p>Dane do przelewu:'.$data.'<p>W tytule przelewu proszę podać numer zamówienia</p>';
    
    }
    
    
    
    //unikalny od zamówienia/płatności
    public function getUniq():void
    {
    
    for ($i = 0; $i < 101; $i++){
        
        //$rr=md5(time().rand(0,999999999999));
        $rr=uniqid('pay_');
        $sql2 = $this->entityManager->getRepository('App\Entity\Orders')->findBy(array('uniq'=>$rr));
        if (count($sql2)===0){break;}
        //echo('>m>');print_r(count($sql2));echo('<m<');
     
        if ($i===100){throw new \Exception('Error 1');}
    }
    
    $this->uniq=(string)$rr;
    }

    public function remove($data, array $context = [])
    {

    //foreach ($context as $key=>$value){echo('>>'.$key.'<<');}
    
    if ($context['resource_class']==='App\Entity\Cat1' && isset($context['item_operation_name']) && $context['item_operation_name']==='delete'){
    
    
    $clone_imageSize1=clone($this->imageSize);//description1
    $clone_imageSize1->setValue('App\Entity\Cat1','description1',(int)$data->getId(),(array)[],(array)[]);
    $clone_imageSize1->go();
    
    $clone_imageSize2=clone($this->imageSize);//description2
    $clone_imageSize2->setValue('App\Entity\Cat1','description2',(int)$data->getId(),(array)[],(array)[]);
    $clone_imageSize2->go();
    
    //kasowanie zdjęć
    //$this->imageSize->setValue('App\Entity\Cat1','picture',empty($data->getId())?null:(int)$data->getId(),(array)[],(array)[]);
    $clone_imageSize3=clone($this->imageSize);
    $clone_imageSize3->setValue('App\Entity\Cat1','picture',(int)$data->getId(),(array)[],(array)[]);
    $clone_imageSize3->go();
    
    $clone_imageSize4=clone($this->imageSize);
    $clone_imageSize4->setValue('App\Entity\Cat1','recenzja',(int)$data->getId(),(array)[],(array)[]);
    $clone_imageSize4->go();
    
    //kasowanie filmów
    $this->videoSize->setValue('App\Entity\Cat1', 'video', (int)$data->getId(), (array)[]);
    
    //przedmioty dzieci
    $dzieci = $this->entityManager->getRepository('App\Entity\Cat1')->findBy(array('dowiazanie'=>$data->getId()));
    
    //echo count($dzieci).'<<<';
    
    //kasowanie produktu/tresci dzieci
    foreach ($dzieci as $value) {
        //echo count($dzieci).'<<<';
        //$value->setWarianty([]);//kasowanie wariantu
        //$value->setWyswietlanie(0);//wylaczanie wyswietlania przedmiotu
        //$this->entityManager->persist($value);

    $clone_imageSize10=clone($this->imageSize);//description1
    $clone_imageSize10->setValue('App\Entity\Cat1','description1',(int)$value->getId(),(array)[],(array)[]);
    $clone_imageSize10->go();
    
    $clone_imageSize20=clone($this->imageSize);//description2
    $clone_imageSize20->setValue('App\Entity\Cat1','description2',(int)$value->getId(),(array)[],(array)[]);
    $clone_imageSize20->go();
    
    $clone_imageSize30=clone($this->imageSize);//description2
    $clone_imageSize30->setValue('App\Entity\Cat1','recenzja',(int)$value->getId(),(array)[],(array)[]);
    $clone_imageSize30->go();
    
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$value->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$value->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$value->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$value->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId());
        //@unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$value->getId());
        
    //kasowanie bufora sql - prawdopodobnie zapytanie bedzie dzialac
    $this->sqlBufor->setId((int)$value->getUser()->getId());$this->sqlBufor->addCat1($value->getId(),null,null,null,null);
        
        $this->entityManager->remove($value);
    }
    
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$data->getId());
        @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$data->getId());
        
        $this->sqlBufor->setId((int)$data->getUser()->getId());$this->sqlBufor->addCat1($data->getId(),null,null,null,null);
    
    //echo('delete '.$dowiazanie);
    //die();
    }
    
    
    
    
    
    
    if ($context['resource_class']==='App\Entity\Orders' && isset($context['item_operation_name']) && $context['item_operation_name']==='delete'){
    
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$data->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$data->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$data->getId());
    
    
    //echo('delete');die();
    
    }
    
        $this->entityManager->remove($data);
        $this->entityManager->flush();
    }

    // Once called this data persister will resume to the next one
    public function resumable(array $context = []): bool 
    {
        return true;
    }
}
