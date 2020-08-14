<?php


namespace App\Repository;


use App\Entity\Signatory;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class SignatoriesRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Signatory::class);
    }

    public function findAllByCauseId(Int $causeId): array {
        return $this->getEntityManager()
            ->createQuery(
               "select s from App\Entity\Signatory s where s.fkCause = :causeId"
            )
            ->setParameter("causeId", $causeId)
            ->getResult();
    }

}