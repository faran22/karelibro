<?php
namespace App\Controller;

use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryCollectionExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Extension\QueryItemExtensionInterface;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Util\QueryNameGeneratorInterface;
use App\Entity\User;
use Doctrine\ORM\QueryBuilder;
use Symfony\Component\Security\Core\Security;

use App\Controller\LoginAutoController;
use App\Controller\ApiAuthorizeController;

final class ApiPlatformUser implements QueryCollectionExtensionInterface, QueryItemExtensionInterface
{
    private $security;
    private $userLogin;
    private $apiauthorizecontroller;

    public function __construct(Security $security, LoginAutoController $loginautocontroller, ApiAuthorizeController $apiauthorizecontroller)
    {
        $this->security = $security;
        $this->userLogin=$loginautocontroller;
        $this->apiauthorizecontroller = $apiauthorizecontroller;
    }

    public function applyToCollection(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, string $operationName = null): void
    {//echo($resourceClass.'--'.$operationName);die();
    
            
    //print_r($queryBuilder->getDql());echo("\r\n\r\n");
    //print_r($resourceClass);echo("\r\n\r\n");
    //print_r($operationName);echo("\r\n\r\n");
    //print_r(get_class_methods($queryNameGenerator));
    
        $this->addWhere($queryBuilder, $resourceClass);
    }

    public function applyToItem(QueryBuilder $queryBuilder, QueryNameGeneratorInterface $queryNameGenerator, string $resourceClass, array $identifiers, string $operationName = null, array $context = []): void
    {//echo($operationName);print_r($context);print_r($identifiers);die();
    
    //print_r(get_class_methods($queryNameGenerator));echo("\r\n\r\n");
    
    //print_r($queryBuilder->getDql());echo("\r\n\r\n");
    $this->addWhere($queryBuilder, $resourceClass);
    
    }

    private function addWhere(QueryBuilder $queryBuilder, string $resourceClass): void
    {//echo("--$resourceClass--");//die();
    
    //login user
    $user=$this->apiauthorizecontroller->getUser();
    $this->userLogin->userSet($user);
    
    //if ($user!==null && $queryBuilder->getParameters()->count()>0){
    if ($user!==null){
    //print_r($user->getUsername());
    $rootAlias = $queryBuilder->getRootAliases()[0];
        if ($resourceClass==='App\Entity\User'){
            $queryBuilder->andWhere(sprintf('%s.username = :user', $rootAlias));
            $queryBuilder->setParameter('user', /*'admin',*/$user->getUsername());
        }else{
            $queryBuilder->andWhere(sprintf('%s.user = :user', $rootAlias));
            $queryBuilder->setParameter('user', /*'admin',*/$user->getId());
        }
    }
    //print_r($queryBuilder->getDql());echo("\r\n\r\n");
    
    /*
    if ($resourceClass==='App\Entity\User' && $queryBuilder->getParameters()->count()>0 && $user!==null){
    print_r($user->getUsername());
    $rootAlias = $queryBuilder->getRootAliases()[0];
    $queryBuilder->andWhere(sprintf('%s.username = :user', $rootAlias));
    $queryBuilder->setParameter('user', $user->getUsername());
    //echo('stop');die();
    }
    */
    //print_r($queryBuilder->getQuery()->getSQL());echo("\r\n\r\n");die();

    /*
    echo("--$resourceClass--");
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    print_r($queryBuilder->getQuery()->getParameters()->getIterator());echo("\r\n\r\n");
    print_r(get_class_methods($queryBuilder->getParameters()));echo("\r\n\r\n");
    die();
    */
    
    //post create
    //$queryBuilder->setParameter('id_id', 78);
    //print_r($queryBuilder->getParameters());echo("\r\n\r\n");die();
    //print_r($queryBuilder->getParameters()->count());echo("\r\n\r\n");//ilosc parametrów
    //print_r($queryBuilder->getQuery()->getSQL());echo("\r\n\r\n");//zapytanie sql
    
    //print_r($queryBuilder->getEntityManager()->getFilters()->getEnabledFilters());echo("\r\n\r\n");
    //print_r(get_class_methods($queryBuilder->getEntityManager()->getFilters()));echo("\r\n\r\n");
    //print_r($queryBuilder->getDql());echo("\r\n\r\n");die();
    
    //$rootAlias = $queryBuilder->getRootAliases()[0];
    //$queryBuilder->andWhere(sprintf('%s.username = :current_user', $rootAlias));
    //$queryBuilder->andWhere(sprintf('%s.user.domain = :current_user', $rootAlias));
    //$queryBuilder->setParameter('current_user', 'admin');
    //$queryBuilder->setParameter('current_user', '78');
    
    
    /*
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    $rootAlias = $queryBuilder->getRootAliases()[0];
    //$queryBuilder->select('o.title');
    $queryBuilder->andWhere(sprintf('%s.title = :current_user', $rootAlias));
    $queryBuilder->setParameter('current_user', 'string0');
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    */
    
    /*
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    $rootAlias = $queryBuilder->getRootAliases()[0];
    //$queryBuilder->select('o.title');
    $queryBuilder->andWhere(sprintf('%s.user = :current_user', $rootAlias));
    $queryBuilder->setParameter('current_user', '78');
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    */
    
    /*
    //example join table
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    $rootAlias = $queryBuilder->getRootAliases()[0];
    $queryBuilder->innerJoin('o.user', 'u')
    //->where('u.id = 78')
    ->where('u.username = \'admin\'')
    ;
    print_r($queryBuilder->getDql());echo("\r\n\r\n");
    */

    
    //print_r(get_class_methods($queryBuilder));
    
    }
}
