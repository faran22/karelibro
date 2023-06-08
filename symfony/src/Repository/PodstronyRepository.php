<?php

namespace App\Repository;

use App\Entity\Podstrony;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Podstrony|null find($id, $lockMode = null, $lockVersion = null)
 * @method Podstrony|null findOneBy(array $criteria, array $orderBy = null)
 * @method Podstrony[]    findAll()
 * @method Podstrony[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PodstronyRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Podstrony::class);
    }

    // /**
    //  * @return Podstrony[] Returns an array of Podstrony objects
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
    public function findOneBySomeField($value): ?Podstrony
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
