<?php

namespace App\Repository;

use App\Entity\Paydelivery;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Paydelivery|null find($id, $lockMode = null, $lockVersion = null)
 * @method Paydelivery|null findOneBy(array $criteria, array $orderBy = null)
 * @method Paydelivery[]    findAll()
 * @method Paydelivery[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PaydeliveryRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Paydelivery::class);
    }

    // /**
    //  * @return Paydelivery[] Returns an array of Paydelivery objects
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
    public function findOneBySomeField($value): ?Paydelivery
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
