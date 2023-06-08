<?php

namespace App\Repository;

use App\Entity\File1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method File1|null find($id, $lockMode = null, $lockVersion = null)
 * @method File1|null findOneBy(array $criteria, array $orderBy = null)
 * @method File1[]    findAll()
 * @method File1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class File1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, File1::class);
    }

    // /**
    //  * @return File1[] Returns an array of File1 objects
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
    public function findOneBySomeField($value): ?File1
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
