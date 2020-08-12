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


}
