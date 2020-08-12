<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Stories
 *
 * @ORM\Table(name="stories", indexes={@ORM\Index(name="fk_post", columns={"fk_post"}), @ORM\Index(name="fk_business", columns={"fk_business"})})
 * @ORM\Entity
 */
class Stories
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer", nullable=false)
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Post
     *
     * @ORM\ManyToOne(targetEntity="Post")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_post", referencedColumnName="id")
     * })
     */
    private $fkPost;

    /**
     * @var \Business
     *
     * @ORM\ManyToOne(targetEntity="Business")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_business", referencedColumnName="id")
     * })
     */
    private $fkBusiness;


}
