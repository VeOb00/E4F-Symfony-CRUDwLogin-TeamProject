<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Business
 *
 * @ORM\Table(name="business")
 * @ORM\Entity
 */
class Business
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
     * @ORM\Column(name="name", type="string", length=250, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="branch", type="string", length=250, nullable=false)
     */
    private $branch;

    /**
     * @var int|null
     *
     * @ORM\Column(name="nr_employees", type="integer", nullable=true)
     */
    private $nrEmployees;

    /**
     * @var string|null
     *
     * @ORM\Column(name="str_name_nr", type="string", length=250, nullable=true)
     */
    private $strNameNr;

    /**
     * @var string|null
     *
     * @ORM\Column(name="city", type="string", length=50, nullable=true)
     */
    private $city;

    /**
     * @var int|null
     *
     * @ORM\Column(name="zipcode", type="integer", nullable=true)
     */
    private $zipcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="country", type="string", length=50, nullable=true)
     */
    private $country;

    /**
     * @var string|null
     *
     * @ORM\Column(name="e_mail", type="string", length=250, nullable=true)
     */
    private $eMail;

    /**
     * @var string|null
     *
     * @ORM\Column(name="webpage", type="string", length=250, nullable=true)
     */
    private $webpage;

    /**
     * @var string|null
     *
     * @ORM\Column(name="tel_nr", type="string", length=250, nullable=true)
     */
    private $telNr;

    /**
     * @var string|null
     *
     * @ORM\Column(name="logo", type="string", length=250, nullable=true)
     */
    private $logo;

    /**
     * @var string|null
     *
     * @ORM\Column(name="image", type="string", length=250, nullable=true)
     */
    private $image;

    /**
     * @var string|null
     *
     * @ORM\Column(name="description", type="text", length=16777215, nullable=true)
     */
    private $description;

    /**
     * @var string|null
     *
     * @ORM\Column(name="moto", type="string", length=500, nullable=true)
     */
    private $moto;

    /**
     * @var string|null
     *
     * @ORM\Column(name="gmaploc", type="string", length=1000, nullable=true)
     */
    private $gmaploc;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): self
    {
        $this->name = $name;

        return $this;
    }

    public function getBranch(): ?string
    {
        return $this->branch;
    }

    public function setBranch(string $branch): self
    {
        $this->branch = $branch;

        return $this;
    }

    public function getNrEmployees(): ?int
    {
        return $this->nrEmployees;
    }

    public function setNrEmployees(?int $nrEmployees): self
    {
        $this->nrEmployees = $nrEmployees;

        return $this;
    }

    public function getStrNameNr(): ?string
    {
        return $this->strNameNr;
    }

    public function setStrNameNr(?string $strNameNr): self
    {
        $this->strNameNr = $strNameNr;

        return $this;
    }

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getZipcode(): ?int
    {
        return $this->zipcode;
    }

    public function setZipcode(?int $zipcode): self
    {
        $this->zipcode = $zipcode;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(?string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getEMail(): ?string
    {
        return $this->eMail;
    }

    public function setEMail(?string $eMail): self
    {
        $this->eMail = $eMail;

        return $this;
    }

    public function getWebpage(): ?string
    {
        return $this->webpage;
    }

    public function setWebpage(?string $webpage): self
    {
        $this->webpage = $webpage;

        return $this;
    }

    public function getTelNr(): ?string
    {
        return $this->telNr;
    }

    public function setTelNr(?string $telNr): self
    {
        $this->telNr = $telNr;

        return $this;
    }

    public function getLogo(): ?string
    {
        return $this->logo;
    }

    public function setLogo(?string $logo): self
    {
        $this->logo = $logo;

        return $this;
    }

    public function getImage(): ?string
    {
        return $this->image;
    }

    public function setImage(?string $image): self
    {
        $this->image = $image;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getMoto(): ?string
    {
        return $this->moto;
    }

    public function setMoto(?string $moto): self
    {
        $this->moto = $moto;

        return $this;
    }

    public function getGmaploc(): ?string
    {
        return $this->gmaploc;
    }

    public function setGmaploc(?string $gmaploc): self
    {
        $this->gmaploc = $gmaploc;

        return $this;
    }


}
