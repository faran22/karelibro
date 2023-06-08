<?php

namespace App\Repository;

use App\Entity\Domain1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Domain1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Domain1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Domain1[]    findAll()
 * @method Domain1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Domain1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Domain1::class);
    }

    // /**
    //  * @return Domain1[] Returns an array of Domain1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('d.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Domain1
    {
        return $this->createQueryBuilder('d')
            ->andWhere('d.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
