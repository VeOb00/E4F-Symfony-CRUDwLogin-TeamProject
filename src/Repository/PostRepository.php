<?php


namespace App\Repository;


use App\Entity\Post;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

class PostRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Post::class);
    }
    /**
     * @return Post[]
     */
    public function findAllByType($type): array
    {
        $entityManager = $this->getEntityManager();

        $query = $entityManager->createQuery(
            'SELECT p
            FROM  App\Entity\Post p
            WHERE p.postType = :type
            ORDER BY p.datePublished DESC'
        )->setParameter('type', $type);

        // returns an array of Product objects
        return $query->getResult();
    }

}