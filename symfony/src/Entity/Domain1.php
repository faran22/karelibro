<?php

namespace App\Entity;

use App\Entity\User;

use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Annotation\ApiProperty;
use ApiPlatform\Core\Annotation\ApiResource;
use ApiPlatform\Core\Annotation\ApiSubresource;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Core\Serializer\Filter\PropertyFilter;

use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

use App\Repository\Domain1Repository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=Domain1Repository::class)
 */
#[ApiResource(
#routePrefix: '/library',
collectionOperations: [
/*
normalization_context - dane odczytywane
denormalization_context - dane wysyłane
*/

        'get' => [
            'normalization_context' => ['groups' => ['category1:collection:get']],
            //'security'=>"is_granted('ROLE_USER')",
        ],
        //'post'=>[
        //    'denormalization_context' => ['groups' => ['category1:collection:post',]],
        //    //'normalization_context' => ['groups' => ['']],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['category1:item:get']],
            'security'=>"is_granted('ROLE_USER')",
        ],
        //'put'=>[
        //    'denormalization_context' => ['groups' => ['category1:item:put']],
        //    //'normalization_context' => ['groups' => []],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
        //'patch'=>[
        //    'denormalization_context' => ['groups' => ['category1:item:patch','category1:item:put']],
        //    //'normalization_context' => ['groups' => []],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
        //'delete'=>[
        //    'denormalization_context' => ['groups' => ['category1:item:delete']],
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
    ],
attributes: [
        'pagination_enabled' => true,
        'pagination_items_per_page' => 1,
        //'order' =>['timecreation'=>'ASC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Domain1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255, unique=false)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $nazwa;

    /**
     * @ORM\Column(type="datetime")
     */
    private $dodanie;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $sslpobieranie;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $sslwaznosc;

    /**
     * @ORM\ManyToOne(targetEntity=User::class)
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getNazwa(): ?string
    {
        return $this->nazwa;
    }

    public function setNazwa(string $nazwa): self
    {
        $this->nazwa = $nazwa;

        return $this;
    }

    public function getDodanie(): ?\DateTimeInterface
    {
        return $this->dodanie;
    }

    public function setDodanie(\DateTimeInterface $dodanie): self
    {
        $this->dodanie = $dodanie;

        return $this;
    }

    public function getSslpobieranie(): ?\DateTimeInterface
    {
        return $this->sslpobieranie;
    }

    public function setSslpobieranie(?\DateTimeInterface $sslpobieranie): self
    {
        $this->sslpobieranie = $sslpobieranie;

        return $this;
    }

    public function getSslwaznosc(): ?\DateTimeInterface
    {
        return $this->sslwaznosc;
    }

    public function setSslwaznosc(?\DateTimeInterface $sslwaznosc): self
    {
        $this->sslwaznosc = $sslwaznosc;

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
