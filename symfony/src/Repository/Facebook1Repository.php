<?php

namespace App\Repository;

use App\Entity\Facebook1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Facebook1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Facebook1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Facebook1[]    findAll()
 * @method Facebook1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Facebook1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Facebook1::class);
    }

    // /**
    //  * @return Facebook1[] Returns an array of Facebook1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('f.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Facebook1
    {
        return $this->createQueryBuilder('f')
            ->andWhere('f.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
