<?php
//tworzenie kopii bufora /opt/lampp/htdocs/1a/symfony/public/bufor

namespace App\Controller;

//use Symfony\Bundle\FrameworkBundle\Test\WebTestCase;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;

use Symfony\Component\HttpFoundation\Request;

use Symfony\Component\HttpFoundation\JsonResponse;

use Symfony\Component\HttpFoundation\BinaryFileResponse;

use ZipArchive;
use RecursiveIteratorIterator;
use RecursiveDirectoryIterator;

//use Firebase\JWT\JWT;

//use Symfony\Component\DependencyInjection\ContainerBuilder;

//use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

//use Doctrine\ORM\EntityManagerInterface;

//use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


//use Trikoder\Bundle\OAuth2Bundle\League\Repository\ClientRepository;
//use Trikoder\Bundle\OAuth2Bundle\League\Repository\AccessTokenRepository;

//use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

//use Strobotti\JWK\KeyFactory;

//include('/opt/lampp/htdocs/1a/symfony/any/ustawienia.php');

class Zasob2Controller extends AbstractController
{

    //private $test;

    public function __construct()
    {

    }




    #[Route('/zasob2', name: 'zasob2')]
    public function index(): BinaryFileResponse
    {//die();

    //blokada pobierania pliku
    if ((string)$_SERVER['REMOTE_ADDR']!==(string)'83.28.64.226'){die;}
    
    @unlink('/tmp/kopiaBufor.zip');

    // Get real path for our folder
    $rootPath = realpath('/opt/lampp/htdocs/1a/symfony/public/bufor');
    
    $zip = new ZipArchive();
    //$zip->open('/tmp/kopiaBufor.zip', ZipArchive::CREATE | ZipArchive::OVERWRITE);
    if ($zip->open('/tmp/kopiaBufor.zip', ZipArchive::CREATE) === TRUE)
    {
    
    
    // Create recursive directory iterator
    /** @var SplFileInfo[] $files */
    $files = new RecursiveIteratorIterator(
        new RecursiveDirectoryIterator($rootPath),
        RecursiveIteratorIterator::LEAVES_ONLY
    );
    
    foreach ($files as $name => $file)
    {
        // Is this a directory?
        if (!$file->isDir())
        {
            // Get real and relative path for current file
            $filePath = $file->getRealPath();
            $relativePath = substr($filePath, strlen($rootPath) + 1);

            // Add current file to archive
            $zip->addFile($filePath, $relativePath);
        }
        else {
            $end2 = substr($file,-2);
            if ($end2 == "/.") {
            $folder = substr($file, 0, -2);
            $zip->addEmptyDir($folder);
            }
        }
    }
    
    $zip->close();
    }

    $response = new BinaryFileResponse('/tmp/kopiaBufor.zip');
    
    return $response;
    


        
    }
    
    

    
    
    

}
