<?php

namespace App\Entity;

use App\Repository\RecipeRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\DBAL\Types\Types;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Bridge\Doctrine\Validator\Constraints\UniqueEntity;
use Symfony\Component\Validator\Constraints as Assert;

#[ORM\Entity(repositoryClass: RecipeRepository::class)]
#[ORM\HasLifecycleCallbacks]
#[UniqueEntity('nom')]
class Recipe
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column()]
    private ?int $id;

    #[ORM\Column(length: 50)]
    #[Assert\Length(min: 2, max: 50)] //le nom est obligatoir pas plus de 50 pas moins de 2
    #[Assert\NotBlank()]
    private ?string $nom;

    #[ORM\Column(nullable: true)]
    #[Assert\Positive()]
    #[Assert\LessThan(1441)]
    private ?int $time;

    #[ORM\Column(nullable: true)]
    #[Assert\Positive()]
    #[Assert\LessThan(51)]
    private ?int $nbPersonne;

    #[ORM\Column(nullable: true)]
    #[Assert\Positive()]
    #[Assert\LessThan(6)]
    private ?int $difficulty;

    #[ORM\Column(type: Types::TEXT)]
    #[Assert\NotBlank()]
    private ?string $description;

    #[ORM\Column(nullable: true)]
    #[Assert\Positive()]
    #[Assert\LessThan(1001)]
    private ?float $prix;

    #[ORM\Column]
    private ?bool $isFavorie = null;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    #[Assert\NotNull()]
    private ?\DateTimeInterface $dateCreation;

    #[ORM\Column(type: Types::DATETIME_MUTABLE)]
    #[Assert\NotNull()]
    private ?\DateTimeInterface $dateUpdate;

    #[ORM\ManyToMany(targetEntity: Ingredient::class)]
    private Collection $ingredients;

    #[ORM\ManyToOne(inversedBy: 'recipes')]
    #[ORM\JoinColumn(nullable: false)]
    private ?User $user = null;

    public function __construct()
    {
        $this->ingredients = new ArrayCollection();
        $this->dateCreation = new \DateTimeImmutable();
        $this->dateUpdate = new \DateTimeImmutable();
    }

    #[ORM\PrePersist()]
    public function setDateUpdateValue()
    {
        $this->dateUpdate = new \DateTimeImmutable();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNom(): ?string
    {
        return $this->nom;
    }

    public function setNom(string $nom): self
    {
        $this->nom = $nom;

        return $this;
    }

    public function getTime(): ?int
    {
        return $this->time;
    }

    public function setTime(?int $time): self
    {
        $this->time = $time;

        return $this;
    }

    public function getNbPersonne(): ?int
    {
        return $this->nbPersonne;
    }

    public function setNbPersonne(?int $nbPersonne): self
    {
        $this->nbPersonne = $nbPersonne;

        return $this;
    }

    public function getDifficulty(): ?int
    {
        return $this->difficulty;
    }

    public function setDifficulty(?int $difficulty): self
    {
        $this->difficulty = $difficulty;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrix(): ?float
    {
        return $this->prix;
    }

    public function setPrix(?float $prix): self
    {
        $this->prix = $prix;

        return $this;
    }

    public function isIsFavorie(): ?bool
    {
        return $this->isFavorie;
    }

    public function setIsFavorie(bool $isFavorie): self
    {
        $this->isFavorie = $isFavorie;

        return $this;
    }

    public function getDateCreation(): ?\DateTimeInterface
    {
        return $this->dateCreation;
    }

    public function setDateCreation(\DateTimeInterface $dateCreation): self
    {
        $this->dateCreation = $dateCreation;

        return $this;
    }

    public function getDateUpdate(): ?\DateTimeInterface
    {
        return $this->dateUpdate;
    }

    public function setDateUpdate(\DateTimeInterface $dateUpdate): self
    {
        $this->dateUpdate = $dateUpdate;

        return $this;
    }

    /**
     * @return Collection<int, Ingredient>
     */
    public function getIngredients(): Collection
    {
        return $this->ingredients;
    }

    public function addIngredient(Ingredient $ingredient): self
    {
        if (!$this->ingredients->contains($ingredient)) {
            $this->ingredients[] = $ingredient;
        }

        return $this;
    }

    public function removeIngredient(Ingredient $ingredient): self
    {
        $this->ingredients->removeElement($ingredient);

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): self
    {
        $this->user = $user;

        return $this;
    }
}
