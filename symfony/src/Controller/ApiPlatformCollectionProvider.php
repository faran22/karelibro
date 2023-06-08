<?php
namespace App\DataProvider;

use ApiPlatform\Core\DataProvider\ContextAwareCollectionDataProviderInterface;
use ApiPlatform\Core\DataProvider\RestrictedDataProviderInterface;
use App\Entity\User;
use App\Entity\Cat1;
use App\Entity\Catt1;
use App\Entity\Podstrony;
use App\Entity\Szablon2;
use App\Entity\Home;
use App\Entity\Menu1;
use App\Entity\Stopka1;
use App\Entity\Orders;
use App\Entity\File1;
use App\Entity\Paydelivery;

use ApiPlatform\Core\Exception\RuntimeException;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\Persistence\ManagerRegistry;
use Doctrine\Persistence\Mapping\ClassMetadata;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryResultCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGenerator;

use App\Controller\ApiAuthorizeController;

use function Symfony\Component\String\u;

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

final class ApiPlatformCollectionProvider implements ContextAwareCollectionDataProviderInterface, RestrictedDataProviderInterface
{

    private $managerRegistry;
    private $collectionExtensions;
    private $apiauthorizecontroller;
    //private $request;
    private $containerbag;
        
    /**
     * @param QueryCollectionExtensionInterface[] $collectionExtensions
     */
    public function __construct(ManagerRegistry $managerRegistry, ApiAuthorizeController $apiauthorizecontroller, iterable $collectionExtensions = [], ContainerBagInterface $containerBag)
    {//print_r(count($collectionExtensions));
    
        $this->managerRegistry = $managerRegistry;
        $this->collectionExtensions = $collectionExtensions;
        $this->apiauthorizecontroller = $apiauthorizecontroller;
        //$this->test=$test;
        $this->containerbag = $containerBag;
    
    }
    
    public function supports(string $resourceClass, string $operationName = null, array $context = []): bool
    {//echo($resourceClass);
        //if ($resourceClass==='App\Entity\Test'){return Test::class === $resourceClass;}
        //if ($resourceClass==='App\Entity\User'){return User::class === $resourceClass;}
        //return $resourceClass;
        //return User::class === $resourceClass;
        if ($resourceClass==='App\Entity\Cat1'){return Cat1::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Catt1'){return Catt1::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Podstrony'){return Podstrony::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Szablon2'){return Szablon2::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Home'){return Home::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Menu1'){return Menu1::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Orders'){return Orders::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Stopka1'){return Stopka1::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\File1'){return File1::class === $resourceClass;}
        else if ($resourceClass==='App\Entity\Paydelivery'){return Paydelivery::class === $resourceClass;}
        return false;
    }

    public function getCollection(string $resourceClass, string $operationName = null, array $context = []): iterable
    {//echo('>>>>');echo($resourceClass);echo('>>>>');echo($operationName);echo('>>>>');print_r($context);echo('<<<<');
    
    
    
    //echo('rr');
    
    //return ['r'=>'zz'];
    
    
    
    
        /** @var EntityManagerInterface $manager */
        $manager = $this->managerRegistry->getManagerForClass($resourceClass);

        $repository = $manager->getRepository($resourceClass);
        if (!method_exists($repository, 'createQueryBuilder')) {
            throw new RuntimeException('The repository class must have a "createQueryBuilder" method.');
        }

        $queryBuilder = $repository->createQueryBuilder('o');
        $queryNameGenerator = new QueryNameGenerator();
        foreach ($this->collectionExtensions as $extension) {
            $extension->applyToCollection($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $context);

            if ($extension instanceof QueryResultCollectionExtensionInterface && $extension->supportsResult($resourceClass, $operationName, $context)) {
            
            //$queryBuilder->getQuery()->getResult()[0]->setWarianty(['tt','zz']);
            //print_r(get_class_methods($queryBuilder->getQuery()->getResult()[0]));
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            

            
            


            


            
            
            //bufor plikowy bazy danych
            if (isset($context['operation_type']) && $context['operation_type']==='collection' && isset($context['collection_operation_name']) && $context['collection_operation_name']==='get' && isset($context['resource_class'])){
            
            
            
                if ($context['resource_class']==='App\Entity\Cat1'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                                
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$value->getId())){$value->setTitle((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$value->getId())){$value->setDescription((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$value->getId())){$value->setDescription2((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$value->getId())){$value->setRecenzja(strlen(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$value->getId()))>0?file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$value->getId()):NULL);}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$value->getId())){$value->setPicture((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$value->getId()),true));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$value->getId())){$value->setVideo((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$value->getId()),true));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$value->getId())){$value->setFieldsforbuyers((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$value->getId()),true));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId())){$value->setWarianty((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$value->getId()),true));}
                
                    }
                
                }
                else if ($context['resource_class']==='App\Entity\Catt1'){//echo('jest 1');die();
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$value->getId())){$value->setDane((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/catt1dane/'.(string)$value->getId()));}
                    
                    }
                }
                else if ($context['resource_class']==='App\Entity\Podstrony'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$value->getId())){$value->setTitle((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$value->getId())){$value->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$value->getId())){$value->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$value->getId()),true));}

                        
                    }
                
                }
                else if ($context['resource_class']==='App\Entity\Szablon2'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$value->getId())){$value->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$value->getId())){$value->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$value->getId()),true));}
                    
                    }
                    
                }
                else if ($context['resource_class']==='App\Entity\Home'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$value->getId())){$value->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$value->getId())){$value->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$value->getId()),true));}
                    
                    }
                    
                }
                else if ($context['resource_class']==='App\Entity\Menu1'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$value->getId())){$value->setNaglowek1((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$value->getId())){$value->setNaglowek2((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$value->getId())){$value->setJavascript((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$value->getId())){$value->setCss((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$value->getId())){$value->setMenu((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$value->getId()),true));}
                    
                    }
                    
                }
                else if ($context['resource_class']==='App\Entity\Orders'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$value->getId())){$value->setZamowienie((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$value->getId()));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$value->getId())){$value->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$value->getId()),true));}
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$value->getId())){$value->setError((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$value->getId()),true));}
                        
                    }
                    
                }
                else if ($context['resource_class']==='App\Entity\Stopka1'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$value->getId())){$value->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$value->getId()));}
                        
                    }
                }
                else if ($context['resource_class']==='App\Entity\File1'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$value->getId())){$value->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$value->getId()),true));}
                        
                    }
                    
                }
                else if ($context['resource_class']==='App\Entity\Paydelivery'){
                
                    foreach ($queryBuilder->getQuery()->getResult() as $value){
                    
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$value->getId())){$value->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$value->getId()),true));}
                        
                        if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$value->getId())){$value->setFieldsforbuyers((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$value->getId()),true));}
                        
                    }
                    
                }
            
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            if (isset($context['operation_type']) && $context['operation_type']==='collection' && isset($context['collection_operation_name']) && $context['collection_operation_name']==='get' && isset($context['resource_class']) && $context['resource_class']==='App\Entity\Cat1' ){
            

            foreach ($queryBuilder->getQuery()->getResult() as $value) {
            


            $dowiazanie=$value->getDowiazanie();
            
            //jesli dziecko
            if ($dowiazanie!==null){
            

//wyszukiwanie rodzica z domena podana przez dziecko
$qb = $this->managerRegistry->getRepository('App\Entity\Cat1')->createQueryBuilder('o');
$tresc = $qb->where('o.id = :product')
//->andWhere('o.user = :user')
//->andwhere($qb->expr()->like('o.domain', ':domain'))
//->andWhere($qb->expr()->like('o.Product', ':product'))
//->setParameter('domain', '%*'.$dane['domain'].'*%')
//->setParameter('user', $parent[0]->getId())
->setParameter('product', (int)$dowiazanie)
->getQuery()
->getResult();

//$wariantyRodzic=$tresc[0]->getWarianty();
$wariantyRodzic=(array)json_decode(@file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$tresc[0]->getId()),true);

//jesli rodzic ma waianry i dziecko ma czastkowe zmodyfikone tresci waiantów to zamienianie treści
if (count($wariantyRodzic)>0 && count($value->getWarianty())>0){
$wariantyRodzic=array_replace_recursive($wariantyRodzic,$value->getWarianty());
}

//$value->setUuid(null);
//$value->setCount(122);
$value->setCount($tresc[0]->getCount());
$value->setPicture($tresc[0]->getPicture());
$value->setWarianty($wariantyRodzic);
$value->setDefaultpicture($tresc[0]->getDefaultpicture());

                    //jesli rodzic
            }else{
            
//wyszukiwanie dzieci dla tresci rodzic
$qb = $this->managerRegistry->getRepository('App\Entity\Cat1')->createQueryBuilder('o');
$dzieci = $qb->where('o.dowiazanie = :rodzic')
//->andWhere('o.user = :user')
//->andwhere($qb->expr()->like('o.domain', ':domain'))
//->andWhere($qb->expr()->like('o.Product', ':product'))
//->setParameter('domain', '%*'.$dane['domain'].'*%')
//->setParameter('user', $parent[0]->getId())
->setParameter('rodzic', (int)$value->getId())
->getQuery()
->getResult();



$dowiazania=array();
foreach ($dzieci as $value2) {
    array_push($dowiazania, ['id'=>$value2->getId(),'category'=>$value2->getCategory()]);
    //array_push($dowiazania, ['id'=>$value2->getId(),'category'=>$value2->getCategory()]);
}
if (count($dowiazania)>0){$value->setDowiazania($dowiazania);}
//$value->setDowiazania([11]);

            }
            

            }
            
            }
            
            
            
            
            
            
            
            
            
            

            
                return $extension->getResult($queryBuilder, $resourceClass, $operationName, $context);
            }
        }

        return $queryBuilder->getQuery()->getResult();
    
    
    
    
    //echo(');
    
    //print_r(get_class_methods($this->test));
    //print_r($this->apiauthorizecontroller->getUser());
    //if ($this->apiauthorizecontroller->getUser()===null){echo('NuLl');}
    //print_r($this->apiauthorizecontroller->getUser()->getUsername());
    //print_r($this->apiauthorizecontroller->getUser()->getRoles());
    //print_r(get_class_methods($this->apiauthorizecontroller->getUser()));
    
    //$identifiers=array();
    /*if (u($context['request_uri'])->slice(0, 8)=='/api/cat'){
        if (isset($context['filters']['user.username'])){unset($context['filters']['user.username']);}
        if ($this->apiauthorizecontroller->getUser()!==null){$context['filters']['user.username']=$this->apiauthorizecontroller->getUser()->getUsername();}
    }else{
    $identifiers['username']='admin';
    }*/
    
    //return ['abc','def'];

    /*
    $manager = $this->managerRegistry->getManagerForClass($resourceClass);

    $repository = $manager->getRepository($resourceClass);
    
    if (!method_exists($repository, 'createQueryBuilder')) {
            throw new RuntimeException('The repository class must have a "createQueryBuilder" method.');
    }
     
        $queryBuilder = $repository->createQueryBuilder('u');
        
        //return $queryBuilder->getQuery()->getResult();
        */
    
    /*
        //$queryBuilder->where('u.password = :identifier')
        //->select('u.email')
        //->setParameter('identifier', 'password');
        $doctrineClassMetadata = $manager->getClassMetadata($resourceClass);
        $alias = $queryBuilder->getRootAliases()[0];
        $placeholder = ':id_password';
                $expression = $queryBuilder->expr()->eq(
                    "{$alias}.password",
                    $placeholder
                );
        $queryBuilder->andWhere($expression);
        $queryBuilder->setParameter($placeholder, 'password', $doctrineClassMetadata->getTypeOfField('password'));
        //$queryBuilder->select($alias.'.email,'.$alias.'.password');
    */
    
        /*$doctrineClassMetadata = $manager->getClassMetadata($resourceClass);
        $alias = $queryBuilder->getRootAliases()[0];
        foreach ($identifiers as $identifier => $value){
        
            $placeholder = ':id_'.$identifier;
            $expression = $queryBuilder->expr()->eq(
                "{$alias}.{$identifier}",
                $placeholder
            );
            
            $queryBuilder->andWhere($expression);
            $queryBuilder->setParameter($placeholder, $value, $doctrineClassMetadata->getTypeOfField($identifier));

        }*/
        
        //print_r($queryBuilder->getDql());
        //print_r(get_class_methods($repository));

    /*$queryNameGenerator = new QueryNameGenerator();
        foreach ($this->collectionExtensions as $extension) {
            $extension->applyToCollection($queryBuilder, $queryNameGenerator, $resourceClass, $operationName, $context);

            if ($extension instanceof QueryResultCollectionExtensionInterface && $extension->supportsResult($resourceClass, $operationName, $context)) {
            //print_r($extension->getResult($queryBuilder, $resourceClass, $operationName, $context));die();
                return $extension->getResult($queryBuilder, $resourceClass, $operationName, $context);
            }
    }
    
        
        return $queryBuilder->getQuery()->getResult();
        */
        
    }
}
