<?php

namespace App\Controller;

//use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;

use Firebase\JWT\JWT;

//use Symfony\Component\DependencyInjection\ContainerBuilder;

//use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

use Doctrine\ORM\EntityManagerInterface;

//use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


use Trikoder\Bundle\OAuth2Bundle\League\Repository\ClientRepository;
use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;

//use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

use Strobotti\JWK\KeyFactory;

//use FFMpeg;

include('/opt/lampp/htdocs/1a/symfony/any/ustawienia.php');

class Test1Controller extends AbstractController
{

    private $test;
    private sqlBuforController $sqlBufor;

    public function __construct(ClientRepository $test, sqlBuforController $sqlBufor)
    {
    $this->test=$test;
    $this->sqlBufor=$sqlBufor;
    }




    #[Route('/test1', name: 'test1')]
    public function index(): Response
    {//die();
    
    //touch('/opt/lampp/htdocs/1a/symfony/public/1212121222121');

    
    //$this->sqlBufor->setId((int)1);
    //$this->sqlBufor->addCat1(1,null,null,null,null);
    //$this->sqlBufor->addCatt1(1,null);
    //$this->sqlBufor->addPodstrony(1,null,null);
    
    $link = mysqli_connect(SQLadres, SQLuser, SQLpassword, SQLdatabase);
    if (!$link){return new Response(
            '<html><body>error</body></html>'
        );}

        
/*
$result = $link->query("SELECT id, title, description, description2 FROM cat1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - description: " . $row["description"]. " description2 " . $row["description2"]. "<br>";
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1description1/'.$row['id'],$row["description"]);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1description2/'.$row['id'],$row["description2"]);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1title/'.$row['id'],$row["title"]);
    
    $link->query("UPDATE cat1 SET title='ÿ', description='ÿ', description2='ÿ' WHERE id=".(int)$row["id"]."");
}
*/

/*
$result = $link->query("SELECT id, dane FROM catt1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - dane: " . $row["dane"]. "<br>";
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/catt1dane/'.$row['id'],$row["dane"]);
    
    $link->query("UPDATE catt1 SET dane='ÿ' WHERE id=".(int)$row["id"]."");
}
*/

/*
$result = $link->query("SELECT id, title, data, sekcje FROM podstrony");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - title: " . $row["title"]. "<br>";
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/podstronytitle/'.$row['id'],$row["title"]);
    $link->query("UPDATE podstrony SET title='ÿ' WHERE id=".(int)$row["id"]."");
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/podstronydata/'.$row['id'],$row["data"]);
    $link->query("UPDATE podstrony SET data='ÿ' WHERE id=".(int)$row["id"]."");
    
    $sekcje=(array)json_decode($row['sekcje'],true);
    //jesli istnieja dane w 'sekcje' && rozne od ÿ
    if (!empty($sekcje) && !(isset($sekcje[0]) && $sekcje[0]==='ÿ') ){//print_r($sekcje);
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/podstronysekcje/'.$row['id'],json_encode($sekcje));
    $link->query("UPDATE podstrony SET sekcje='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
    
}
*/

/*
$result = $link->query("SELECT id, data, sekcje FROM szablon2");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    if ($row["data"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/szablon2data/'.$row['id'],$row["data"]);
    $link->query("UPDATE szablon2 SET data='ÿ' WHERE id=".(int)$row["id"]."");
    }
    
    $sekcje=(array)json_decode($row['sekcje'],true);
    //jesli istnieja dane w 'sekcje' && rozne od ÿ
    if (!empty($sekcje) && !(isset($sekcje[0]) && $sekcje[0]==='ÿ') ){//print_r($sekcje);
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/szablon2sekcje/'.$row['id'],json_encode($sekcje));
    $link->query("UPDATE szablon2 SET sekcje='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
    
}
*/

/*
$result = $link->query("SELECT id, data, sekcje FROM home");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    if ($row["data"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/homedata/'.$row['id'],$row["data"]);
    $link->query("UPDATE home SET data='ÿ' WHERE id=".(int)$row["id"]."");
    }
    
    $sekcje=(array)json_decode($row['sekcje'],true);
    //jesli istnieja dane w 'sekcje' && rozne od ÿ
    if (!empty($sekcje) && !(isset($sekcje[0]) && $sekcje[0]==='ÿ') ){//print_r($sekcje);
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/homesekcje/'.$row['id'],json_encode($sekcje));
    $link->query("UPDATE home SET sekcje='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
    
}
*/

/*
$result = $link->query("SELECT id, naglowek1, naglowek2, javascript, css FROM menu1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    if ($row["naglowek1"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/menunaglowek1/'.$row['id'],$row["naglowek1"]);
    $link->query("UPDATE menu1 SET naglowek1='ÿ' WHERE id=".(int)$row["id"]."");
    }
    
    if ($row["naglowek2"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/menunaglowek2/'.$row['id'],$row["naglowek2"]);
    $link->query("UPDATE menu1 SET naglowek2='ÿ' WHERE id=".(int)$row["id"]."");
    }
    
    if ($row["javascript"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/menujavascript/'.$row['id'],$row["javascript"]);
    $link->query("UPDATE menu1 SET javascript='ÿ' WHERE id=".(int)$row["id"]."");
    }
    
    if ($row["css"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/menucss/'.$row['id'],$row["css"]);
    $link->query("UPDATE menu1 SET css='ÿ' WHERE id=".(int)$row["id"]."");
    }

    
}
*/

/*
$result = $link->query("SELECT id, zamowienie, data, error FROM orders");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/orderszamowienie/'.$row['id'],$row["zamowienie"]);
    //$link->query("UPDATE orders SET zamowienie='ÿ' WHERE id=".(int)$row["id"]."");

    
    $row["data"]=(array)json_decode($row["data"],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/ordersdata/'.$row['id'],json_encode($row["data"]));
    //$link->query("UPDATE orders SET data='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    $row["error"]=(array)json_decode($row["error"],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/orderserror/'.$row['id'],json_encode($row["error"]));
    //$link->query("UPDATE orders SET error='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");

    
}*/

/*
$result = $link->query("SELECT id, data FROM stopka1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    if ($row["data"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/stopka1data/'.$row['id'],$row["data"]);
    $link->query("UPDATE stopka1 SET data='ÿ' WHERE id=".(int)$row["id"]."");
    }
}
*/

/*
$result = $link->query("SELECT id, recenzja FROM cat1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - recenzja: " . $row["recenzja"]. "<br>";
    
if ($row["recenzja"]!=='ÿ'){
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1recenzja/'.$row['id'],$row["recenzja"]);
    $link->query("UPDATE cat1 SET recenzja='ÿ' WHERE id=".(int)$row["id"]."");
}
    
    }
*/

/*
$result = $link->query("SELECT id, picture FROM cat1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - picture: " . $row["picture"]. "<br>";
    
    //file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1picture/'.$row['id'],json_encode($row["picture"]));
    //$link->query("UPDATE cat1 SET picture='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    $t=(array)json_decode(file_get_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1picture/'.$row['id']));
    $t=(array)json_decode($t,true);
    print_r($t); echo '<br />';
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1picture/'.$row['id'],json_encode($t));
    
    }
*/

        /*$fp = fopen($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/93/size',"r");
        if (flock($fp, LOCK_EX)){
        
            $data=(array)json_decode(fgets($fp),true);
            echo('read>');print_r($data);
            
        
        }*/
        
        
/*
$result = $link->query("SELECT id, data FROM file1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    $row["data"]=(array)json_decode($row["data"],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/file1data/'.$row['id'],json_encode($row["data"]));
    $link->query("UPDATE file1 SET data='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    
    }*/
    
    
/*   
$result = $link->query("SELECT id, video FROM cat1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - data: " . $row["data"]. "<br>";
    
    $row["video"]=(array)json_decode($row["video"],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1video/'.$row['id'],json_encode($row["video"]));
    $link->query("UPDATE cat1 SET video='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    
    }
*/
  
/*
$result = $link->query("SELECT id, warianty, fieldsforbuyers FROM cat1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - picture: " . $row["picture"]. "<br>";
    
    $t=(array)json_decode($row['fieldsforbuyers'],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1fieldsforbuyers/'.$row['id'],json_encode($t));
    $link->query("UPDATE cat1 SET fieldsforbuyers='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    $t1=(array)json_decode($row['warianty'],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/cat1warianty/'.$row['id'],json_encode($t1));
    $link->query("UPDATE cat1 SET warianty='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
*/


/*        
$result = $link->query("SELECT id, data, fieldsforbuyers FROM paydelivery");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - picture: " . $row["picture"]. "<br>";
    
    $t=(array)json_decode($row['fieldsforbuyers'],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/paydeliveryfieldsforbuyers/'.$row['id'],json_encode($t));
    $link->query("UPDATE paydelivery SET fieldsforbuyers='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    $t1=(array)json_decode($row['data'],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/paydeliverydata/'.$row['id'],json_encode($t1));
    $link->query("UPDATE paydelivery SET data='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
*/

/*
$result = $link->query("SELECT id, menu FROM menu1");
while($row = $result->fetch_assoc()){
    //echo "id: " . $row["id"]. " - picture: " . $row["picture"]. "<br>";
    
    $t1=(array)json_decode($row['menu'],true);
    file_put_contents('/opt/lampp/htdocs/1a/symfony/public/bufor/menu1menu/'.$row['id'],json_encode($t1));
    $link->query("UPDATE menu1 SET menu='[\"\\\u00ff\"]' WHERE id=".(int)$row["id"]."");
    
    }
*/





/*
$output=null;$retval=null;
$file='43222194225b9177fd995037b48055e5';
exec('timeout 20s ffmpeg -i /opt/lampp/htdocs/1a/symfony/public/picture/'.$file.' -frames:v 1 /opt/lampp/htdocs/1a/symfony/public/picture/'.$file.'-videothumbnail.jpg -y', $output, $retval);
//rename('/opt/lampp/htdocs/1a/symfony/public/picture/'.$file.'-videothumbnail.jpg', '/opt/lampp/htdocs/1a/symfony/public/picture/'.$file.'-videothumbnail');
//exec('ls', $output, $retval);
echo "Returned with status $retval and output:\n";
print_r($output);
*/




/*
//$last_line = system('timeout 2s ffmpeg -i /opt/lampp/htdocs/1a/symfony/public/picture/cb681b5e2c127a87bf3036655a36a10d -vf "thumbnail" -frames:v 1 /opt/lampp/htdocs/1a/thumb2.jpg -y', $retval);
$last_line = system('ls', $retval);
echo '<hr />Last line of the output: ' . $last_line . '<hr />Return value: ' . $retval;
*/

/*
$connectionParams = [
    'dbname' => 'mydb',
    'user' => 'user',
    'password' => 'secret',
    'host' => 'localhost',
    'driver' => 'pdo_mysql',
];
$conn = \Doctrine\DBAL\DriverManager::getConnection($connectionParams);
*/


/*
//$result = $link->query("CREATE DATABASE testDB");
$conn = \Doctrine\DBAL\DriverManager::getConnection(['url' => 'mysql://root:Assaaa12300000099887V@localhost']);
$conn->query('CREATE DATABASE IF NOT EXISTS testDB');

$conn = \Doctrine\DBAL\DriverManager::getConnection(['url' => 'mysql://root:Assaaa12300000099887V@localhost/testDB']);
$conn->query('CREATE TABLE IF NOT EXISTS cat1 (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL,
title LONGTEXT NOT NULL,
description LONGTEXT NOT NULL,
description2 LONGTEXT NOT NULL,
recenzja LONGTEXT NOT NULL,
PRIMARY KEY (id))');
$conn->query('CREATE TABLE IF NOT EXISTS catt1 (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL,
dane LONGTEXT NOT NULL,
PRIMARY KEY (id))');
$conn->query('CREATE TABLE IF NOT EXISTS podstrony (
id int(11) NOT NULL AUTO_INCREMENT, 
id_parent int(11) NOT NULL,
title LONGTEXT NOT NULL,
data LONGTEXT NOT NULL,
PRIMARY KEY (id))');
 
echo('<pre>');
//print_r( get_class_methods($conn) );
//echo('-');print_r( $conn->getDatabase() );echo('-');
 //$qb = $conn->createQueryBuilder();
 print_r( get_class_methods($conn) );
 //$query=$qb->select('*')->from('user')->execute()->fetchAll();
 //print_r( get_class_methods($query) );
 //print_r($query);
echo('</pre>');
*/




        return new Response(
            '<html><body>Lucky number: '.@filemtime($this->getParameter('kernel.project_dir').'/public/bufor/buforpicture/67/d5d2432ed1ef81d80d67b10d9c832dd5').'</body></html>'
        );
    }
}
