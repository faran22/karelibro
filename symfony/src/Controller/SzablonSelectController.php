<?php

namespace App\Controller;

use App\Entity\Category1;
use App\Entity\Catt1;
use App\Entity\File1;
use App\Entity\Home;
use App\Entity\Menu1;
use App\Entity\Naglowek1;
use App\Entity\Stopka1;
use App\Entity\Szablon1;
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

class SzablonSelectController extends AbstractController
{
    private $apiauthorizecontroller;

    #[Route('/api/templateselect', name: 'SzablonSelect', methods: ['GET','POST'])]
    public function new(Request $request, ContainerBagInterface $containerBag, ApiAuthorizeController $apiauthorizecontroller, ManagerRegistry $doctrine, ImageSizeController $imageSize): JsonResponse
    {
    
    $this->containerbag = $containerBag;

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

    $data=(array)json_decode(trim((string)$request->getContent()),true);
    
    
    $userCopy=array();
    if ($data['id']===0){$userCopy['username']='test53';}
    else if ($data['id']===1){$userCopy['username']='template2';}
    
    //user z ktorego bedzie pobierany szablon
    $entityManager = $doctrine->getManager();
    $user2 = $entityManager->getRepository('App\Entity\User')->findBy($userCopy);
    
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Category1')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\Category1')->findBy(['user'=>$user]);
    if (count($sql)!==0){
        $sql[0]->setData(count($sql2)>0?$sql2[0]->getData():[]);
    }else{
        $Category1 = new Category1();
        $Category1->setUser($user);
        $Category1->setData(count($sql2)>0?$sql2[0]->getData():[]);
        $entityManager->persist($Category1);
    }
    
    
    
    //dane usera w ktorym ma byc zapisywany szablon (kasowanie tresci)
    $sql = $entityManager->getRepository('App\Entity\Catt1')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
    //usuwanie zdjęć
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Catt1','dane',(int)$wartosc->getId(),(string)'',(array)[]);
    $imageSize2->go();
    //usuwanie bufora plikowego dla rekordu sql
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$wartosc->getId());
    $entityManager->remove($wartosc);
    }
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Catt1')->findBy(['user'=>$user2]);
    foreach ($sql2 as $klucz=>$wartosc){
    $C = new Catt1();
    $C->setUser($user);
    $C->setCategory($wartosc->getCategory());
    //$C->setDane($wartosc->getDane());
    $C->setDane($wartosc->getId());//zapis id pliku zawierajacego bufor rekordu sql
    $entityManager->persist($C);
    }
    
    
    /*
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\File1')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\File1')->findBy(['user'=>$user]);
    if (count($sql)!==0){
        $sql[0]->setData(count($sql2)>0?$sql2[0]->getData():[]);
    }else{
        $C = new File1();
        $C->setUser($user);
        $C->setData(count($sql2)>0?$sql2[0]->getData():[]);
        $entityManager->persist($C);
    }
    */
    
    
    
    /*//dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Home')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\Home')->findBy(['user'=>$user]);
    if (count($sql)!==0){
        $sql[0]->setData(count($sql2)>0?$sql2[0]->getData():'');
        $sql[0]->setSekcje(count($sql2)>0?$sql2[0]->getSekcje():[]);
    }else{
        $C = new Home();
        $C->setUser($user);
        $C->setData(count($sql2)>0?$sql2[0]->getData():'');
        $C->setSekcje(count($sql2)>0?$sql2[0]->getSekcje():[]);
        $entityManager->persist($C);
    }*/
    
    //dane usera w ktorym ma byc zapisywany szablon (kasowanie tresci)
    $sql = $entityManager->getRepository('App\Entity\Home')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Home','data',(int)$wartosc->getId(),(string)'',(array)[]);
    $imageSize2->go();
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Home','sekcje',(int)$wartosc->getId(),(string)'',(array)[]);
    $imageSize2->go();
    //usuwanie bufora plikowego dla rekordu sql
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$wartosc->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$wartosc->getId());
    //$entityManager->remove($wartosc);
    }
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Home')->findBy(['user'=>$user2]);
    foreach ($sql2 as $klucz=>$wartosc){//moze wystapic tylko jeden element tablicy
        if (count($sql)===0){//jesli brak rekordu sql
            $C = new Home();
            $C->setUser($user);
            //$C->setData(count($sql2)>0?$sql2[0]->getData():'');
            //$C->setSekcje(count($sql2)>0?$sql2[0]->getSekcje():[]);
            $C->setData($wartosc->getId());
            $C->setSekcje([(int)$wartosc->getId()]);
            $entityManager->persist($C);
        }else{//jesli jest rekord sql
            $sql[0]->setData($wartosc->getId());
            $sql[0]->setSekcje([(int)$wartosc->getId()]);
        }
    }
    
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Menu1')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\Menu1')->findBy(['user'=>$user]);
    if (count($sql)!==0){
        //$sql[0]->setMenu($sql2[0]->getMenu());
        $sql[0]->setMenu([$sql2[0]->getId()]);
        $sql[0]->setDisplay($sql2[0]->getDisplay());
        //$sql[0]->setNaglowek1($sql2[0]->getNaglowek1());
        //$sql[0]->setNaglowek2($sql2[0]->getNaglowek2());
        $sql[0]->setNaglowek1($sql2[0]->getId());
        $sql[0]->setNaglowek2($sql2[0]->getId());
        //$sql[0]->setJavascript($sql2[0]->getJavascript());
        //$sql[0]->setCss($sql2[0]->getCss());
        $sql[0]->setJavascript($sql2[0]->getId());
        $sql[0]->setCss($sql2[0]->getId());
    }else{
        $C = new Menu1();
        $C->setUser($user);
        //$C->setMenu($sql2[0]->getMenu());
        $C->setMenu([$sql2[0]->getId()]);
        $C->setDisplay($sql2[0]->getDisplay());
        //$C->setNaglowek1($sql2[0]->getNaglowek1());
        //$C->setNaglowek2($sql2[0]->getNaglowek2());
        $C->setNaglowek1($sql2[0]->getId());
        $C->setNaglowek2($sql2[0]->getId());
        //$C->setJavascript($sql2[0]->getJavascript());
        //$C->setCss($sql2[0]->getCss());
        $C->setJavascript($sql2[0]->getId());
        $C->setCss($sql2[0]->getId());
        $entityManager->persist($C);
    }
    
    

    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Naglowek1')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\Naglowek1')->findBy(['user'=>$user]);
    if (count($sql)!==0){
        $sql[0]->setNaglowek($sql2[0]->getNaglowek());
        $sql[0]->setSeo($sql2[0]->getSeo());
    }else{
        $C = new Naglowek1();
        $C->setUser($user);
        $C->setNaglowek($sql2[0]->getNaglowek());
        $C->setSeo($sql2[0]->getSeo());
        $entityManager->persist($C);
    }
    
    
    
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Stopka1')->findBy(['user'=>$user2]);
    //dane usera w ktorym ma byc zapisywany szablon
    $sql = $entityManager->getRepository('App\Entity\Stopka1')->findBy(['user'=>$user]);
    if (count($sql)!==0){
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Stopka1','data',(int)$sql[0]->getId(),(string)'',(array)[]);
    $imageSize2->go();
        $sql[0]->setData($sql2[0]->getId());
    }else{
        $C = new Stopka1();
        $C->setUser($user);
        $C->setData($sql2[0]->getId());
        $entityManager->persist($C);
    }
    
    
    //dane usera w ktorym ma byc zapisywany szablon (kasowanie tresci)
    $sql = $entityManager->getRepository('App\Entity\Szablon1')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
    $entityManager->remove($wartosc);
    }
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Szablon1')->findBy(['user'=>$user2]);
    foreach ($sql2 as $klucz=>$wartosc){
    $C = new Szablon1();
    $C->setUser($user);
    $C->setCategory($wartosc->getCategory());
    $C->setCategoryproduct($wartosc->getCategoryproduct());
    $C->setData($wartosc->getData());
    $entityManager->persist($C);
    }
    
    
    
    //dane usera w ktorym ma byc zapisywany szablon (kasowanie tresci)
    $sql = $entityManager->getRepository('App\Entity\Szablon2')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
    //usuwanie zdjęć
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Szablon2','data',(int)$wartosc->getId(),(string)'',(array)[]);
    $imageSize2->go();
    $imageSize2=clone($imageSize);
    $imageSize2->setValue('App\Entity\Szablon2','sekcje',(int)$wartosc->getId(),(string)'',(array)[]);
    $imageSize2->go();
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$wartosc->getId());
    @unlink($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$wartosc->getId());
    $entityManager->remove($wartosc);
    }
    //dane z usera z ktorego pobierany jest szablon
    $sql2 = $entityManager->getRepository('App\Entity\Szablon2')->findBy(['user'=>$user2]);
    foreach ($sql2 as $klucz=>$wartosc){
    $C = new Szablon2();
    $C->setUser($user);
    $C->setCategory($wartosc->getCategory());
    $C->setProduct($wartosc->getProduct());
    //$C->setData($wartosc->getData());
    //$C->setSekcje($wartosc->getSekcje());
    $C->setData($wartosc->getId());
    $C->setSekcje([(int)$wartosc->getId()]);
    $entityManager->persist($C);
    }
    
    
    $entityManager->flush();
    
    
    
    
    //kopiowanie plkow bufora bazy danych
    $sql = $entityManager->getRepository('App\Entity\Catt1')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$wartosc->getDane(),$this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$wartosc->getId());
        $wartosc->setDane('ÿ');
    }
    
    //kopiowanie plkow bufora bazy danych
    $sql = $entityManager->getRepository('App\Entity\Szablon2')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$wartosc->getData(),$this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$wartosc->getId());
        $wartosc->setData('ÿ');
        
        //jesli jest byufor sql dla rekordu
        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.$wartosc->getSekcje()[0])){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.$wartosc->getSekcje()[0],$this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$wartosc->getId());
        $wartosc->setSekcje(['ÿ']);
        }else{
        $wartosc->setSekcje([]);
        }
    }
    
    
    //kopiowanie plkow bufora bazy danych
    $sql = $entityManager->getRepository('App\Entity\Home')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){//bedzie tylko jeden element tablicy
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$wartosc->getData(),$this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$wartosc->getId());
        $wartosc->setData('ÿ');
        
        //jesli jest byufor sql dla rekordu
        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.$wartosc->getSekcje()[0])){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.$wartosc->getSekcje()[0],$this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$wartosc->getId());
        $wartosc->setSekcje(['ÿ']);
        }else{
        $wartosc->setSekcje([]);
        }
    }
    
    //kopiowanie plkow bufora bazy danych
    $sql = $entityManager->getRepository('App\Entity\Menu1')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$wartosc->getNaglowek1(),$this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$wartosc->getId());
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$wartosc->getNaglowek2(),$this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$wartosc->getId());
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$wartosc->getJavascript(),$this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$wartosc->getId());
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$wartosc->getCss(),$this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$wartosc->getId());
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$wartosc->getMenu()[0],$this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$wartosc->getId());
        $wartosc->setNaglowek1('ÿ');
        $wartosc->setNaglowek2('ÿ');
        $wartosc->setJavascript('ÿ');
        $wartosc->setCss('ÿ');
        $wartosc->setMenu(['ÿ']);
    }
    
    //kopiowanie plkow bufora bazy danych
    $sql = $entityManager->getRepository('App\Entity\Stopka1')->findBy(['user'=>$user]);
    foreach ($sql as $klucz=>$wartosc){//bedzie tylko jeden element tablicy
        
        //jesli jest byufor sql dla rekordu
        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.$wartosc->getData())){
        copy($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.$wartosc->getData(),$this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$wartosc->getId());
        $wartosc->setData('ÿ');
        }else{
        $wartosc->setData('');
        }
        
    }
    
    $entityManager->flush();
    
    

$response->setStatusCode(200);
$response->setData(array('id'=>$data['id']));
return $response;

    }
}
