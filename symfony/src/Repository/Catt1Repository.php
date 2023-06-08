<?php

namespace App\Repository;

use App\Entity\Catt1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Catt1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Catt1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Catt1[]    findAll()
 * @method Catt1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Catt1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Catt1::class);
    }

    // /**
    //  * @return Catt1[] Returns an array of Catt1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('c.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Catt1
    {
        return $this->createQueryBuilder('c')
            ->andWhere('c.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
