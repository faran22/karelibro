<?php
namespace App\DataProvider;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryResultItemExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGenerator;
//use ApiPlatform\Core\DataProvider\ItemDataProviderInterface;
use ApiPlatform\Core\DataProvider\RestrictedDataProviderInterface;
use App\Entity\User;
use App\Entity\Cat1;
use App\Entity\Podstrony;
use App\Entity\Szablon2;
use App\Entity\Home;
use App\Entity\Menu1;
use App\Entity\Orders;
use App\Entity\File1;
use App\Entity\Stopka1;
use Doctrine\Persistence\ManagerRegistry;
use App\Entity\Paydelivery;

//use ApiPlatform\Core\Bridge\Doctrine\Common\Util\IdentifierManagerTrait;
//use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryItemExtensionInterface;
use ApiPlatform\Core\DataProvider\DenormalizedIdentifiersAwareItemDataProviderInterface;
use ApiPlatform\Core\Exception\RuntimeException;
use ApiPlatform\Core\Identifier\IdentifierConverterInterface;
//use ApiPlatform\Core\Metadata\Property\Factory\PropertyMetadataFactoryInterface;
//use ApiPlatform\Core\Metadata\Property\Factory\PropertyNameCollectionFactoryInterface;
use Doctrine\ORM\EntityManagerInterface;
use Doctrine\ORM\QueryBuilder;
use Doctrine\Persistence\Mapping\ClassMetadata;

use App\Controller\ApiAuthorizeController;
use function Symfony\Component\String\u;

use Symfony\Component\DependencyInjection\ParameterBag\ContainerBagInterface;

final class ApiPlatformItemProvider implements DenormalizedIdentifiersAwareItemDataProviderInterface, RestrictedDataProviderInterface
{
    private $itemExtensions;
    private $managerRegistry;
    private $apiauthorizecontroller;
    private $containerbag;

    public function __construct(ManagerRegistry $managerRegistry, ApiAuthorizeController $apiauthorizecontroller, iterable $itemExtensions, ContainerBagInterface $containerBag)
    {
      $this->managerRegistry = $managerRegistry;
      $this->itemExtensions = $itemExtensions;
      $this->apiauthorizecontroller = $apiauthorizecontroller;
      $this->containerbag = $containerBag;
    }

    public function supports(string $resourceClass, string $operationName = null, array $context = []): bool
    {
        //return User::class === $resourceClass;
        if ($resourceClass==='App\Entity\Cat1'){return Cat1::class === $resourceClass;}
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

    public function getItem(string $resourceClass, $id, string $operationName = null, array $context = [])
    {//echo($resourceClass);echo('>>>>');print_r($id);echo('>>>>');echo($operationName);echo('>>>>');print_r($context);echo('<<<<');
    
    
    
    
    
    
    //return ['b','n'];
    
    
    
    
    
    

        /** @var EntityManagerInterface $manager */
        $manager = $this->managerRegistry->getManagerForClass($resourceClass);

        if ((\is_int($id) || \is_string($id)) && !($context[IdentifierConverterInterface::HAS_IDENTIFIER_CONVERTER] ?? false)) {
            $id = $this->normalizeIdentifiers($id, $manager, $resourceClass);
        }
        if (!\is_array($id)) {
            throw new \InvalidArgumentException(sprintf('$id must be array when "%s" key is set to true in the $context', IdentifierConverterInterface::HAS_IDENTIFIER_CONVERTER));
        }
        $identifiers = $id;

        $fetchData = $context['fetch_data'] ?? true;
        if (!$fetchData) {
            return $manager->getReference($resourceClass, $identifiers);
        }

        $repository = $manager->getRepository($resourceClass);
        if (!method_exists($repository, 'createQueryBuilder')) {
            throw new RuntimeException('The repository class must have a "createQueryBuilder" method.');
        }

        $queryBuilder = $repository->createQueryBuilder('o');
        $queryNameGenerator = new QueryNameGenerator();
        $doctrineClassMetadata = $manager->getClassMetadata($resourceClass);

        $this->addWhereForIdentifiers($identifiers, $queryBuilder, $doctrineClassMetadata);

        foreach ($this->itemExtensions as $extension) {
            $extension->applyToItem($queryBuilder, $queryNameGenerator, $resourceClass, $identifiers, $operationName, $context);

            if ($extension instanceof QueryResultItemExtensionInterface && $extension->supportsResult($resourceClass, $operationName, $context)) {

            
                return $extension->getResult($queryBuilder, $resourceClass, $operationName, $context);

                
            }
        }

        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        $data=$queryBuilder->getQuery()->getOneOrNullResult();
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        


            
            
            

        
            //bufor plikowy bazy danych
            if (isset($context['operation_type']) && $context['operation_type']==='item' && isset($context['item_operation_name']) && $context['item_operation_name']==='get' && isset($context['resource_class'])){
            
            
                if ($context['resource_class']==='App\Entity\Cat1'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$data->getId())){$data->setTitle((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1title/'.(string)$data->getId()));}
                        
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$data->getId())){$data->setDescription((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description1/'.(string)$data->getId()));}
                        
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$data->getId())){$data->setDescription2((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1description2/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$data->getId())){$data->setRecenzja(strlen(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$data->getId()))>0?file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1recenzja/'.(string)$data->getId()):NULL);}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$data->getId())){$data->setPicture((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1picture/'.(string)$data->getId()),true));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$data->getId())){$data->setVideo((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1video/'.(string)$data->getId()),true));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$data->getId())){$data->setFieldsforbuyers((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1fieldsforbuyers/'.(string)$data->getId()),true));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$data->getId())){$data->setWarianty((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/cat1warianty/'.(string)$data->getId()),true));}
                
                }
                else if ($context['resource_class']==='App\Entity\Podstrony'){//echo('jest 2');die();
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$data->getId())){$data->setTitle((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronytitle/'.(string)$data->getId()));}
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$data->getId())){$data->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronydata/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$data->getId())){$data->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/podstronysekcje/'.(string)$data->getId()),true));}
                
                }
                else if ($context['resource_class']==='App\Entity\Szablon2'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$data->getId())){$data->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2data/'.(string)$data->getId()));}
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$data->getId())){$data->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/szablon2sekcje/'.(string)$data->getId()),true));}
                    
                }
                else if ($context['resource_class']==='App\Entity\Home'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$data->getId())){$data->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/homedata/'.(string)$data->getId()));}
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$data->getId())){$data->setSekcje((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/homesekcje/'.(string)$data->getId()),true));}
                    
                }
                else if ($context['resource_class']==='App\Entity\Menu1'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$data->getId())){$data->setNaglowek1((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek1/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$data->getId())){$data->setNaglowek2((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menunaglowek2/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$data->getId())){$data->setJavascript((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menujavascript/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$data->getId())){$data->setCss((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menucss/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$data->getId())){$data->setMenu((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/menu1menu/'.(string)$data->getId()),true));}
                
                    
                }
                else if ($context['resource_class']==='App\Entity\Orders'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$data->getId())){$data->setZamowienie((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderszamowienie/'.(string)$data->getId()));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$data->getId())){$data->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/ordersdata/'.(string)$data->getId()),true));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$data->getId())){$data->setError((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/orderserror/'.(string)$data->getId()),true));}
                    
                    
                }
                else if ($context['resource_class']==='App\Entity\Stopka1'){
                
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$data->getId())){$data->setData((string)file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/stopka1data/'.(string)$data->getId()));}
                    
                }
                else if ($context['resource_class']==='App\Entity\File1'){
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$data->getId())){$data->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/file1data/'.(string)$data->getId()),true));}
                    
                }
                else if ($context['resource_class']==='App\Entity\Paydelivery'){
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$data->getId())){$data->setData((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliverydata/'.(string)$data->getId()),true));}
                    
                    if (file_exists($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$data->getId())){$data->setFieldsforbuyers((array)json_decode(file_get_contents($this->containerbag->get('kernel.project_dir').'/public/bufor/paydeliveryfieldsforbuyers/'.(string)$data->getId()),true));}
                    
                }
            
            
            
            
            
            }
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
            if (isset($context['operation_type']) && $context['operation_type']==='item' && isset($context['item_operation_name']) && $context['item_operation_name']==='get' && isset($context['resource_class']) && $context['resource_class']==='App\Entity\Cat1' ){
            
            $dowiazanie=$data->getDowiazanie();
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
if (count($wariantyRodzic)>0 && count($data->getWarianty())>0){
$wariantyRodzic=array_replace_recursive($wariantyRodzic,$data->getWarianty());
}


$data->setWarianty($wariantyRodzic);
$data->setCount($tresc[0]->getCount());
$data->setPicture($tresc[0]->getPicture());
$data->setDefaultpicture($tresc[0]->getDefaultpicture());

            }
            
            }
        
        
        //print_r($context);
        //print_r(get_class_methods($queryBuilder->getQuery()->getOneOrNullResult()));
        
        return $data;
    
    
    
    
    
    
    
    
    
    
    
    

    
    //print_r(get_class_methods($this->apiauthorizecontroller->getUser()));
    //print_r($this->apiauthorizecontroller->getUser()->getId());
    
    
    /*if (u($context['request_uri'])->slice(0, 8)=='/api/cat'){
    if ($this->apiauthorizecontroller->getUser()!==null){$id['id']=$this->apiauthorizecontroller->getUser()->getId();}else{unset($id['id']);}
    }else{
    $identifiers['username']='admin';
    }*/
    
    //echo($resourceClass);echo('>>>>');print_r($id);echo('>>>>');echo($operationName);echo('>>>>');print_r($context);echo('<<<<');
    
    /*
    $identifiers=array();
        
        $manager = $this->managerRegistry->getManagerForClass($resourceClass);

        if ((\is_int($id) || \is_string($id)) && !($context[IdentifierConverterInterface::HAS_IDENTIFIER_CONVERTER] ?? false)) {
            $id = $this->normalizeIdentifiers($id, $manager, $resourceClass);
        }

        if (!\is_array($id)) {
            throw new \InvalidArgumentException(sprintf('$id must be array when "%s" key is set to true in the $context', IdentifierConverterInterface::HAS_IDENTIFIER_CONVERTER));
        }
        $identifiers = $id;

        $fetchData = $context['fetch_data'] ?? true;
        if (!$fetchData) {
            return $manager->getReference($resourceClass, $identifiers);
        }

        $repository = $manager->getRepository($resourceClass);
        if (!method_exists($repository, 'createQueryBuilder')) {
            throw new RuntimeException('The repository class must have a "createQueryBuilder" method.');
        }

        $queryBuilder = $repository->createQueryBuilder('o');
    
        $queryNameGenerator = new QueryNameGenerator();
        $doctrineClassMetadata = $manager->getClassMetadata($resourceClass);

        $this->addWhereForIdentifiers($identifiers, $queryBuilder, $doctrineClassMetadata);

        foreach ($this->itemExtensions as $extension) {
            $extension->applyToItem($queryBuilder, $queryNameGenerator, $resourceClass, $identifiers, $operationName, $context);

            if ($extension instanceof QueryResultItemExtensionInterface && $extension->supportsResult($resourceClass, $operationName, $context)) {
                return $extension->getResult($queryBuilder, $resourceClass, $operationName, $context);
            }
        }

        return $queryBuilder->getQuery()->getOneOrNullResult();
        */
    }
    

    
    
    private function addWhereForIdentifiers(array $identifiers, QueryBuilder $queryBuilder, ClassMetadata $classMetadata)
    {
    
    
    
    
    
    
    
    
    
    
    
    
    
            $alias = $queryBuilder->getRootAliases()[0];
        foreach ($identifiers as $identifier => $value) {
            $placeholder = ':id_'.$identifier;
            $expression = $queryBuilder->expr()->eq(
                "{$alias}.{$identifier}",
                $placeholder
            );

            $queryBuilder->andWhere($expression);

            $queryBuilder->setParameter($placeholder, $value, $classMetadata->getTypeOfField($identifier));
        }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
        $alias = $queryBuilder->getRootAliases()[0];
        foreach ($identifiers as $identifier => $value) {
        
            $placeholder = ':id_'.$identifier;
            $expression = $queryBuilder->expr()->eq(
                "{$alias}.{$identifier}",
                $placeholder
            );
            
            $queryBuilder->andWhere($expression);
            $queryBuilder->setParameter($placeholder, $value, $classMetadata->getTypeOfField($identifier));

        }
        //$queryBuilder->select($alias.'.email, '.$alias.'.password ');
        //$queryBuilder->select($alias.'.password');
            
        //print_r($queryBuilder->getDql());
        */
        
    }
    
    
}
