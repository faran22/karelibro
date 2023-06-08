<?php

namespace App\Repository;

use App\Entity\Allegro1;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Allegro1|null find($id, $lockMode = null, $lockVersion = null)
 * @method Allegro1|null findOneBy(array $criteria, array $orderBy = null)
 * @method Allegro1[]    findAll()
 * @method Allegro1[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class Allegro1Repository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Allegro1::class);
    }

    // /**
    //  * @return Allegro1[] Returns an array of Allegro1 objects
    //  */
    /*
    public function findByExampleField($value)
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->orderBy('a.id', 'ASC')
            ->setMaxResults(10)
            ->getQuery()
            ->getResult()
        ;
    }
    */

    /*
    public function findOneBySomeField($value): ?Allegro1
    {
        return $this->createQueryBuilder('a')
            ->andWhere('a.exampleField = :val')
            ->setParameter('val', $value)
            ->getQuery()
            ->getOneOrNullResult()
        ;
    }
    */
}
