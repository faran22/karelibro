<?php

namespace App\Repository;

use App\Entity\Szablon2;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Szablon2|null find($id, $lockMode = null, $lockVersion = null)
 * @method Szablon2|null findOneBy(array $criteria, array $orderBy = null)
 * @method Szablon2[]    findAll()
 * @method Szablon2[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Szablon2Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Szablon2::class);
    }

    // /**
    //  * @return Szablon2[] Returns an array of Szablon2 objects
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
    public function findOneBySomeField($value): ?Szablon2
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
