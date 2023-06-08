<?php

namespace App\Repository;

use App\Entity\Stopka1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Stopka1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Stopka1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Stopka1[]    findAll()
 * @method Stopka1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Stopka1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Stopka1::class);
    }

    // /**
    //  * @return Stopka1[] Returns an array of Stopka1 objects
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
    public function findOneBySomeField($value): ?Stopka1
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
