<?php

namespace App\Repository;

use App\Entity\Cat1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Cat1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Cat1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Cat1[]    findAll()
 * @method Cat1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Cat1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Cat1::class);
    }

    // /**
    //  * @return Cat1[] Returns an array of Cat1 objects
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
    public function findOneBySomeField($value): ?Cat1
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
