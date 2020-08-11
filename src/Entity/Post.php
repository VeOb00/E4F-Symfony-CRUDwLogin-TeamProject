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

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getSubtitle(): ?string
    {
        return $this->subtitle;
    }

    public function setSubtitle(?string $subtitle): self
    {
        $this->subtitle = $subtitle;

        return $this;
    }

    public function getDatePublished(): ?\DateTimeInterface
    {
        return $this->datePublished;
    }

    public function setDatePublished(\DateTimeInterface $datePublished): self
    {
        $this->datePublished = $datePublished;

        return $this;
    }

    public function getAuthorFn(): ?string
    {
        return $this->authorFn;
    }

    public function setAuthorFn(?string $authorFn): self
    {
        $this->authorFn = $authorFn;

        return $this;
    }

    public function getAuthorLn(): ?string
    {
        return $this->authorLn;
    }

    public function setAuthorLn(?string $authorLn): self
    {
        $this->authorLn = $authorLn;

        return $this;
    }

    public function getImageMain(): ?string
    {
        return $this->imageMain;
    }

    public function setImageMain(string $imageMain): self
    {
        $this->imageMain = $imageMain;

        return $this;
    }

    public function getImageMiddle(): ?string
    {
        return $this->imageMiddle;
    }

    public function setImageMiddle(?string $imageMiddle): self
    {
        $this->imageMiddle = $imageMiddle;

        return $this;
    }

    public function getImageBottom(): ?string
    {
        return $this->imageBottom;
    }

    public function setImageBottom(?string $imageBottom): self
    {
        $this->imageBottom = $imageBottom;

        return $this;
    }

    public function getExcerpt(): ?string
    {
        return $this->excerpt;
    }

    public function setExcerpt(?string $excerpt): self
    {
        $this->excerpt = $excerpt;

        return $this;
    }

    public function getIntroText(): ?string
    {
        return $this->introText;
    }

    public function setIntroText(?string $introText): self
    {
        $this->introText = $introText;

        return $this;
    }

    public function getMainText(): ?string
    {
        return $this->mainText;
    }

    public function setMainText(?string $mainText): self
    {
        $this->mainText = $mainText;

        return $this;
    }

    public function getOutroText(): ?string
    {
        return $this->outroText;
    }

    public function setOutroText(?string $outroText): self
    {
        $this->outroText = $outroText;

        return $this;
    }


}
