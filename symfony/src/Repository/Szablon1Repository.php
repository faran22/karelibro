<?php

namespace App\Repository;

use App\Entity\Szablon1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Szablon1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Szablon1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Szablon1[]    findAll()
 * @method Szablon1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Szablon1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Szablon1::class);
    }

    // /**
    //  * @return Szablon1[] Returns an array of Szablon1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('s.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Szablon1
    {
        return $this->createQueryBuilder('s')
            ->andWhere('s.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
