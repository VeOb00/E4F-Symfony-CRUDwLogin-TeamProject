<?php

namespace App\Entity;

use DateTime;
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

////    -------------------------------------------
    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="strike_date_time", type="datetime", nullable=true)
     */
    private $strikeDate;

    /**
     * @var string|null
     *
     * @ORM\Column(name="strike_str_name_nr", type="string", length=250, nullable=true)
     */
    private $strikeAddress;

    /**
     * @var string|null
     *
     * @ORM\Column(name="strike_city", type="string", length=50, nullable=true)
     */
    private $strikeCity;

    /**
     * @var integer|null
     *
     * @ORM\Column(name="strike_zipcode", type="integer", nullable=true)
     */
    private $strikeZipcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="strike_country", type="string", length=50, nullable=true)
     */
    private $strikeCountry;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_logo", type="string", length=250, nullable=true)
     */
    private $businessLogo;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_name", type="string", length=250, nullable=true)
     */
    private $businessName;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_branch", type="string", length=250, nullable=true)
     */
    private $businessBranch;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_str_name_nr", type="string", length=250, nullable=true)
     */
    private $businessAddress;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_city", type="string", length=50, nullable=true)
     */
    private $businessCity;

    /**
     * @var integer|null
     *
     * @ORM\Column(name="b_zipcode", type="integer", nullable=true)
     */
    private $businessZipcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_country", type="string", nullable=true)
     */
    private $businessCountry;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_e_mail", type="string", nullable=true)
     */
    private $businessEmail;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_webpage", type="string", nullable=true)
     */
    private $businessWebpage;

    /**
     * @var string|null
     *
     * @ORM\Column(name="b_gmaploc", type="string", nullable=true)
     */
    private $businessLocation;


//---------------------------------------
    public function __construct()
    {
        $this->strikeDate = new \DateTime();
    }




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

    public function getPostType(): ?string
    {
        return $this->postType;
    }

    public function setPostType(?string $postType): self
    {
        $this->postType = $postType;

        return $this;
    }


//    --------------------------------------

    public function getStrikeDate(): ?\DateTimeInterface
    {
        return $this->strikeDate;
    }

    public function setStrikeDate(\DateTimeInterface $strikeDate): self
    {
        $this->strikeDate = $strikeDate;

        return $this;
    }


    public function getStrikeAddress(): ?string
    {
        return $this->strikeAddress;
    }

    public function setStrikeAddress(?string $strikeAddress): self
    {
        $this->strikeAddress = $strikeAddress;

        return $this;
    }


    public function getStrikeCity(): ?string
    {
        return $this->strikeCity;
    }

    public function setStrikeCity(?string $strikeCity): self
    {
        $this->strikeCity = $strikeCity;

        return $this;
    }


    public function getStrikeZipcode(): ?int
    {
        return $this->strikeZipcode;
    }

    public function setStrikeZipcode(?int $strikeZipcode): self
    {
        $this->strikeZipcode = $strikeZipcode;

        return $this;
    }


    public function getStrikeCountry(): ?string
    {
        return $this->strikeCountry;
    }

    public function setStrikeCountry(?string $strikeCountry): self
    {
        $this->strikeCountry = $strikeCountry;

        return $this;
    }


    public function getBusinessLogo(): ?string
    {
        return $this->businessLogo;
    }

    public function setBusinessLogo(?string $businessLogo): self
    {
        $this->businessLogo = $businessLogo;

        return $this;
    }


    public function getBusinessName(): ?string
    {
        return $this->businessName;
    }

    public function setBusinessName(?string $businessName): self
    {
        $this->businessName = $businessName;

        return $this;
    }


    public function getBusinessBranch(): ?string
    {
        return $this->businessBranch;
    }

    public function setBusinessBranch(?string $businessBranch): self
    {
        $this->businessBranch = $businessBranch;

        return $this;
    }


    public function getBusinessAddress(): ?string
    {
        return $this->businessAddress;
    }

    public function setBusinessAddress(?string $businessAddress): self
    {
        $this->businessAddress = $businessAddress;

        return $this;
    }


    public function getBusinessCity(): ?string
    {
        return $this->businessCity;
    }

    public function setBusinessCity(?string $businessCity): self
    {
        $this->businessCity = $businessCity;

        return $this;
    }


    public function getBusinessZipcode(): ?int
    {
        return $this->businessZipcode;
    }

    public function setBusinessZipcode(?int $businessZipcode): self
    {
        $this->businessZipcode = $businessZipcode;

        return $this;
    }


    public function getBusinessCountry(): ?string
    {
        return $this->businessCountry;
    }

    public function setBusinessCountry(?string $businessCountry): self
    {
        $this->businessCountry = $businessCountry;

        return $this;
    }


    public function getBusinessEmail(): ?string
    {
        return $this->businessEmail;
    }

    public function setBusinessEmail(?string $businessEmail): self
    {
        $this->businessEmail = $businessEmail;

        return $this;
    }


    public function getBusinessWebpage(): ?string
    {
        return $this->businessWebpage;
    }

    public function setBusinessWebpage(?string $businessWebpage): self
    {
        $this->businessWebpage = $businessWebpage;

        return $this;
    }


    public function getBusinessLocation(): ?string
    {
        return $this->businessLocation;
    }

    public function setBusinessLocation(?string $businessLocation): self
    {
        $this->businessLocation = $businessLocation;

        return $this;
    }

}
