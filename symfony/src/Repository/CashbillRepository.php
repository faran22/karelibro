<?php

namespace App\Repository;

use App\Entity\Cashbill;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Cashbill|null find($id, $lockMode = null, $lockVersion = null)
 * @method Cashbill|null findOneBy(array $criteria, array $orderBy = null)
 * @method Cashbill[]    findAll()
 * @method Cashbill[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class CashbillRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Cashbill::class);
    }

    // /**
    //  * @return Cashbill[] Returns an array of Cashbill objects
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
    public function findOneBySomeField($value): ?Cashbill
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
