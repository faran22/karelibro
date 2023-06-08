<?php

namespace App\Repository;

use App\Entity\Naglowek1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Naglowek1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Naglowek1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Naglowek1[]    findAll()
 * @method Naglowek1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Naglowek1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Naglowek1::class);
    }

    // /**
    //  * @return Naglowek1[] Returns an array of Naglowek1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('n')
            ->andWhere('n.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('n.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Naglowek1
    {
        return $this->createQueryBuilder('n')
            ->andWhere('n.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
