<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
//use Symfony\Component\HttpFoundation\Request;
use App\Entity\User;
//use Firebase\JWT\JWT;
//use Symfony\Component\Security\Core\User\UserProviderInterface;
//use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;
use Doctrine\Persistence\ManagerRegistry;

class sqlBuforController extends AbstractController
{

    private ApiAuthorizeController $apiauthorizecontroller;
    //private ManagerRegistry $doctrine;
    private string $sqlPassword='Assaaa12300000099887V';
    private int $id;
    private $doctrine;
    //private string $entity;//nazwa entity
    //private string $sqlRekord;//nazwa rekordu sql
    //private int|null $sqlId=null;//id rekord sql
    //private array $aktualne=[];
    //private array $poprzednie=[];
    //private array $endd=[];
    

    public function __construct(ApiAuthorizeController $apiauthorizecontroller/*, ManagerRegistry $doctrine*/)
    {

    $this->apiauthorizecontroller = $apiauthorizecontroller;

    
    }
    
    public function setId(int $id):void
    {
    
    $this->id=$id;
    $this->createTable();

    }
    
    private function createTable():void{
    
$conn = \Doctrine\DBAL\DriverManager::getConnection(['url' => 'mysql://root:'.$this->sqlPassword.'@localhost']);
$conn->query('CREATE DATABASE IF NOT EXISTS sql'.(string)$this->id.'');

$this->doctrine = \Doctrine\DBAL\DriverManager::getConnection(['url' => 'mysql://root:'.$this->sqlPassword.'@localhost/sql'.(string)$this->id.'']);

$this->doctrine->query('CREATE TABLE IF NOT EXISTS cat1 (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL UNIQUE,
title LONGTEXT NOT NULL,
description LONGTEXT NOT NULL,
description2 LONGTEXT NOT NULL,
recenzja LONGTEXT NOT NULL,
PRIMARY KEY (id))');
$this->doctrine->query('CREATE TABLE IF NOT EXISTS catt1 (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL UNIQUE,
dane LONGTEXT NOT NULL,
PRIMARY KEY (id))');
$this->doctrine->query('CREATE TABLE IF NOT EXISTS podstrony (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL UNIQUE,
title LONGTEXT NOT NULL,
data LONGTEXT NOT NULL,
sekcje LONGTEXT NOT NULL,
PRIMARY KEY (id))');
$this->doctrine->query('CREATE TABLE IF NOT EXISTS szablon2 (
id int(11) NOT NULL AUTO_INCREMENT, 
category int(11) NOT NULL,
product int(11) NOT NULL,
sekcje LONGTEXT NOT NULL,
PRIMARY KEY (id))');
    
    }
    
    public function addCat1(int $idParent, string|null $title, string|null $description, string|null $description2, string|null $recenzja){

if ($title!==null){$title=html_entity_decode($title);}
if ($description!==null){$description=html_entity_decode($description);}
if ($description2!==null){$description2=html_entity_decode($description2);}
if ($recenzja!==null){$recenzja=html_entity_decode($recenzja);}

//sprawdzanie czy istnieje zmieniany rekord w tabeli
 $qb = $this->doctrine->createQueryBuilder();
 $query=(array)$qb
 ->select('*')
 ->from('cat1','u')
 ->setParameter('parameter1', $idParent)
 ->where("u.id_parent = :parameter1")
 ->execute()
 ->fetchAll();
 //print_r($query);
 
//jelsi usuwanie rekordu
if ($title===null && $description===null && $description2===null && $recenzja===null){

if (count($query)===1){$this->doctrine->query('DELETE FROM cat1 WHERE id_parent='.(int)$idParent.'');}

}
//jesli dodawanie rekordu
else if (count($query)===0){

    $qb = $this->doctrine->createQueryBuilder();
    $qb->insert('cat1')
 ->setParameter('title', $title===null?'':$title)
 ->setParameter('description', $description===null?'':preg_replace('/\s+/', ' ',strip_tags($description)))
 ->setParameter('description2', $description2===null?'':preg_replace('/\s+/', ' ',strip_tags($description2)))
 ->setParameter('recenzja', $recenzja===null?'':preg_replace('/\s+/', ' ',strip_tags($recenzja)))
 ->setParameter('id', $idParent)
   ->values (array(
        'id_parent'=>':id',
        'title' => ':title',
        'description'=>':description',
        'description2'=>':description2',
        'recenzja'=>':recenzja'
   ))
   ->execute();

}
//jesli modyfikowanie rekordu
else if (count($query)!==0){

 $qb = $this->doctrine->createQueryBuilder();
 $query=$qb
 ->update('cat1', 'u')
 ->set('u.title', ':title')
 ->set('u.description', ':description')
 ->set('u.description2', ':description2')
 ->set('u.recenzja', ':recenzja')
 ->where('u.id_parent = :id')
 ->setParameter('title', $title===null?$query[0]['title']:$title)
 ->setParameter('description', $description===null?$query[0]['description']:preg_replace('/\s+/', ' ',strip_tags($description)))
 ->setParameter('description2', $description2===null?$query[0]['description2']:preg_replace('/\s+/', ' ',strip_tags($description2)))
 ->setParameter('recenzja', $recenzja===null?$query[0]['recenzja']:preg_replace('/\s+/', ' ',strip_tags($recenzja)))
 ->setParameter('id', $idParent)
 ->execute()
;

}
 
    }
    
    
    
    
    
    public function addCatt1(int $idParent, string|null $dane){

if ($dane!==null){$dane=html_entity_decode($dane);}

//sprawdzanie czy istnieje zmieniany rekord w tabeli
 $qb = $this->doctrine->createQueryBuilder();
 $query=(array)$qb
 ->select('*')
 ->from('catt1','u')
 ->setParameter('parameter1', $idParent)
 ->where("u.id_parent = :parameter1")
 ->execute()
 ->fetchAll();
 //print_r($query);
 
//jelsi usuwanie rekordu
if ($dane===null){

if (count($query)===1){$this->doctrine->query('DELETE FROM catt1 WHERE id_parent='.(int)$idParent.'');}

}
//jesli dodawanie rekordu
else if (count($query)===0){

    $qb = $this->doctrine->createQueryBuilder();
    $qb->insert('catt1')
 ->setParameter('dane', $dane===null?'':preg_replace('/\s+/', ' ',strip_tags($dane)))
// ->setParameter('sekcje', $sekcje===null?'':preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('id', $idParent)
   ->values (array(
        'id_parent'=>':id',
        'dane' => ':dane',
//        'sekcje' => ':sekcje',
   ))
   ->execute();

}
//jesli modyfikowanie rekordu
else if (count($query)!==0){

 $qb = $this->doctrine->createQueryBuilder();
 $query=$qb
 ->update('catt1', 'u')
 ->set('u.dane', ':dane')
// ->set('u.sekcje', ':sekcje')
 ->where('u.id_parent = :id')
 ->setParameter('dane', $dane===null?$query[0]['dane']:preg_replace('/\s+/', ' ',strip_tags($dane)))
// ->setParameter('sekcje', $sekcje===null?$query[0]['sekcje']:preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('id', $idParent)
 ->execute()
;

}
 
    }
    
    
    
    
    public function addPodstrony(int $idParent, string|null $title, string|null $data, string|null $sekcje){

if ($title!==null){$title=html_entity_decode($title);}
if ($data!==null){$data=html_entity_decode($data);}
if ($sekcje!==null){$sekcje=html_entity_decode($sekcje);}

//sprawdzanie czy istnieje zmieniany rekord w tabeli
 $qb = $this->doctrine->createQueryBuilder();
 $query=(array)$qb
 ->select('*')
 ->from('podstrony','u')
 ->setParameter('parameter1', $idParent)
 ->where("u.id_parent = :parameter1")
 ->execute()
 ->fetchAll();
 //print_r($query);
 
//jelsi usuwanie rekordu
if ($title===null && $data===null && $sekcje===null){

if (count($query)===1){$this->doctrine->query('DELETE FROM podstrony WHERE id_parent='.(int)$idParent.'');}

}
//jesli dodawanie rekordu
else if (count($query)===0){

    $qb = $this->doctrine->createQueryBuilder();
    $qb->insert('podstrony')
 ->setParameter('title', $title===null?'':$title)
 ->setParameter('data', $data===null?'':preg_replace('/\s+/', ' ',strip_tags($data)))
 ->setParameter('sekcje', $sekcje===null?'':preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('id', $idParent)
   ->values (array(
        'id_parent'=>':id',
        'title' => ':title',
        'data'=>':data',
        'sekcje'=>':sekcje',
   ))
   ->execute();

}
//jesli modyfikowanie rekordu
else if (count($query)!==0){

 $qb = $this->doctrine->createQueryBuilder();
 $query=$qb
 ->update('podstrony', 'u')
 ->set('u.title', ':title')
 ->set('u.data', ':data')
 ->set('u.sekcje', ':sekcje')
 ->where('u.id_parent = :id')
 ->setParameter('title', $title===null?$query[0]['title']:$title)
 ->setParameter('data', $data===null?$query[0]['data']:preg_replace('/\s+/', ' ',strip_tags($data)))
 ->setParameter('sekcje', $sekcje===null?$query[0]['sekcje']:preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('id', $idParent)
 ->execute()
;

}
 
    }
    
    
    
    
    
    
    
    
    
    public function addSzablon2(int $category, int $product, string|null $sekcje){

if ($sekcje!==null){$sekcje=html_entity_decode($sekcje);}

//sprawdzanie czy istnieje zmieniany rekord w tabeli
 $qb = $this->doctrine->createQueryBuilder();
 $query=(array)$qb
 ->select('*')
 ->from('szablon2','u')
 ->setParameter('category', $category)
 ->setParameter('product', $product)
 ->where("u.category = :category")
 ->andWhere("u.product = :product")
 ->execute()
 ->fetchAll();
 //print_r($query);
 
//jelsi usuwanie rekordu
if ($sekcje===null){

if (count($query)===1){$this->doctrine->query('DELETE FROM szablon2 WHERE id='.(int)$query[0]['id'].'');}

}
//jesli dodawanie rekordu
else if (count($query)===0){

    $qb = $this->doctrine->createQueryBuilder();
    $qb->insert('szablon2')
 //->setParameter('data', $data===null?'':preg_replace('/\s+/', ' ',strip_tags($data)))
 ->setParameter('sekcje', $sekcje===null?'':preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('category', $category)
 ->setParameter('product', $product)
 //->setParameter('id', $id)
   ->values (array(
        //'id'=>':id',
        //'data' => ':data',
        'sekcje'=>':sekcje',
        'category'=>':category',
        'product'=>':product'
   ))
   ->execute();

}
//jesli modyfikowanie rekordu
else if (count($query)!==0){

 $qb = $this->doctrine->createQueryBuilder();
 $query=$qb
 ->update('szablon2', 'u')
 //->set('u.data', ':data')
 ->set('u.sekcje', ':sekcje')
 //->set('u.category', ':category')
 //->set('u.product', ':product')
 ->where('u.category = :category')
 ->andWhere('u.product = :product')
 //->setParameter('data', $data===null?$query[0]['data']:$data)
 ->setParameter('sekcje', $sekcje===null?$query[0]['sekcje']:preg_replace('/\s+/', ' ',strip_tags($sekcje)))
 ->setParameter('category', $category)
 ->setParameter('product', $product)
 //->setParameter('id', $id)
 ->execute()
;

}
 
    }
    
    
    
}
