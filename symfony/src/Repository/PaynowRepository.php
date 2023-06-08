<?php

namespace App\Repository;

use App\Entity\Paynow;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Paynow|null find($id, $lockMode = null, $lockVersion = null)
 * @method Paynow|null findOneBy(array $criteria, array $orderBy = null)
 * @method Paynow[]    findAll()
 * @method Paynow[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PaynowRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Paynow::class);
    }

    // /**
    //  * @return Paynow[] Returns an array of Paynow objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('p.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Paynow
    {
        return $this->createQueryBuilder('p')
            ->andWhere('p.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
