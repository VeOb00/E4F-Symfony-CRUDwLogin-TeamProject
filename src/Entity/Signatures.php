<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Signatures
 *
 * @ORM\Table(name="signatures", indexes={@ORM\Index(name="fk_cause", columns={"fk_cause"}), @ORM\Index(name="fk_signatory", columns={"fk_signatory"})})
 * @ORM\Entity
 */
class Signatures
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
     * @var \Cause
     *
     * @ORM\ManyToOne(targetEntity="Cause")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_cause", referencedColumnName="id")
     * })
     */
    private $fkCause;

    /**
     * @var \Signatory
     *
     * @ORM\ManyToOne(targetEntity="Signatory")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_signatory", referencedColumnName="id")
     * })
     */
    private $fkSignatory;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getFkSignatory(): ?Signatory
    {
        return $this->fkSignatory;
    }

    public function setFkSignatory(?Signatory $fkSignatory): self
    {
        $this->fkSignatory = $fkSignatory;

        return $this;
    }


}
