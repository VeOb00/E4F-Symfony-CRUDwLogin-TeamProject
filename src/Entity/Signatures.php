<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Signatures
 *
 * @ORM\Table(name="signatures", indexes={@ORM\Index(name="fk_post", columns={"fk_post"}), @ORM\Index(name="fk_signatory", columns={"fk_signatory"})})
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
     * @var \Post
     *
     * @ORM\ManyToOne(targetEntity="Post")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="fk_post", referencedColumnName="id")
     * })
     */
    private $fkPost;

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

    public function getFkPost(): ?Post
    {
        return $this->fkPost;
    }

    public function setFkPost(?Post $fkPost): self
    {
        $this->fkPost = $fkPost;

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
