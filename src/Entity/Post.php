<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Post
 *
 * @ORM\Table(name="post")
 * @ORM\Entity
 */
class Post
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
     * @var string
     *
     * @ORM\Column(name="title", type="string", length=250, nullable=false)
     */
    private $title;

    /**
     * @var string|null
     *
     * @ORM\Column(name="subtitle", type="string", length=250, nullable=true)
     */
    private $subtitle;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="date_published", type="date", nullable=false)
     */
    private $datePublished;

    /**
     * @var string|null
     *
     * @ORM\Column(name="author_fn", type="string", length=50, nullable=true)
     */
    private $authorFn;

    /**
     * @var string|null
     *
     * @ORM\Column(name="author_ln", type="string", length=50, nullable=true)
     */
    private $authorLn;

    /**
     * @var string
     *
     * @ORM\Column(name="image_main", type="string", length=250, nullable=false)
     */
    private $imageMain;

    /**
     * @var string|null
     *
     * @ORM\Column(name="image_middle", type="string", length=250, nullable=true)
     */
    private $imageMiddle;

    /**
     * @var string|null
     *
     * @ORM\Column(name="image_bottom", type="string", length=250, nullable=true)
     */
    private $imageBottom;

    /**
     * @var string|null
     *
     * @ORM\Column(name="excerpt", type="string", length=500, nullable=true)
     */
    private $excerpt;

    /**
     * @var string|null
     *
     * @ORM\Column(name="intro_text", type="text", length=16777215, nullable=true)
     */
    private $introText;

    /**
     * @var string|null
     *
     * @ORM\Column(name="main_text", type="text", length=16777215, nullable=true)
     */
    private $mainText;

    /**
     * @var string|null
     *
     * @ORM\Column(name="outro_text", type="text", length=16777215, nullable=true)
     */
    private $outroText;

    /**
     * @var string|null
     *
     * @ORM\Column(name="post_type", type="string", length=50, nullable=true)
     */
    private $postType;


}
