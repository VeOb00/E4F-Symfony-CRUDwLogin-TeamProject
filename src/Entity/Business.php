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


}
