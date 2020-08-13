<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Signatory
 *
 * @ORM\Table(name="signatory")
 * @ORM\Entity
 */
class Signatory
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
     * @ORM\Column(name="document_type", type="string", length=50, nullable=false)
     */
    private $documentType;

    /**
     * @var string
     *
     * @ORM\Column(name="number", type="string", length=50, nullable=false)
     */
    private $number;

    /**
     * @var string
     *
     * @ORM\Column(name="f_name", type="string", length=50, nullable=false)
     */
    private $fName;

    /**
     * @var string|null
     *
     * @ORM\Column(name="l_name", type="string", length=50, nullable=true)
     */
    private $lName;

    /**
     * @var \DateTime|null
     *
     * @ORM\Column(name="dob", type="date", nullable=true)
     */
    private $dob;

    /**
     * @var string|null
     *
     * @ORM\Column(name="place_ob", type="string", length=50, nullable=true)
     */
    private $placeOb;

    /**
     * @var string|null
     *
     * @ORM\Column(name="nationality", type="string", length=250, nullable=true)
     */
    private $nationality;

    /**
     * @var string|null
     *
     * @ORM\Column(name="address", type="string", length=250, nullable=true)
     */
    private $address;

    /**
     * @var int|null
     *
     * @ORM\Column(name="zipcode", type="integer", nullable=true)
     */
    private $zipcode;

    /**
     * @var string|null
     *
     * @ORM\Column(name="city", type="string", length=50, nullable=true)
     */
    private $city;

    /**
     * @var string
     *
     * @ORM\Column(name="country", type="string", length=50, nullable=false)
     */
    private $country;

    /**
     * @var \Cause
     *
     * @ORM\ManyToOne(targetEntity="Cause")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_cause", referencedColumnName="id")
     * })
     */
    private $fkCause;



    public function getId(): ?int
    {
        return $this->id;
    }

    public function getDocumentType(): ?string
    {
        return $this->documentType;
    }

    public function setDocumentType(string $documentType): self
    {
        $this->documentType = $documentType;

        return $this;
    }

    public function getNumber(): ?string
    {
        return $this->number;
    }

    public function setNumber(string $number): self
    {
        $this->number = $number;

        return $this;
    }

    public function getFName(): ?string
    {
        return $this->fName;
    }

    public function setFName(string $fName): self
    {
        $this->fName = $fName;

        return $this;
    }

    public function getLName(): ?string
    {
        return $this->lName;
    }

    public function setLName(?string $lName): self
    {
        $this->lName = $lName;

        return $this;
    }

    public function getDob(): ?\DateTimeInterface
    {
        return $this->dob;
    }

    public function setDob(?\DateTimeInterface $dob): self
    {
        $this->dob = $dob;

        return $this;
    }

    public function getPlaceOb(): ?string
    {
        return $this->placeOb;
    }

    public function setPlaceOb(?string $placeOb): self
    {
        $this->placeOb = $placeOb;

        return $this;
    }

    public function getNationality(): ?string
    {
        return $this->nationality;
    }

    public function setNationality(?string $nationality): self
    {
        $this->nationality = $nationality;

        return $this;
    }

    public function getAddress(): ?string
    {
        return $this->address;
    }

    public function setAddress(?string $address): self
    {
        $this->address = $address;

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

    public function getCity(): ?string
    {
        return $this->city;
    }

    public function setCity(?string $city): self
    {
        $this->city = $city;

        return $this;
    }

    public function getCountry(): ?string
    {
        return $this->country;
    }

    public function setCountry(string $country): self
    {
        $this->country = $country;

        return $this;
    }

    public function getFkCause(): ?Cause
    {
        return $this->fkCause;
    }

    public function setFkCause(?Cause $fkCause): self
    {
        $this->fkCause = $fkCause;

        return $this;
    }
}
