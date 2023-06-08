<?php

namespace App\Entity;

use App\Entity\User;

use App\Repository\CashbillRepository;
use Doctrine\ORM\Mapping as ORM;

use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Annotation\ApiProperty;
use ApiPlatform\Core\Annotation\ApiResource;
use ApiPlatform\Core\Annotation\ApiSubresource;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Core\Serializer\Filter\PropertyFilter;

use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=CashbillRepository::class)
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
            'security'=>"is_granted('ROLE_USER')",
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
        'put'=>[
            'denormalization_context' => ['groups' => ['category1:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
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
        //'pagination_enabled' => true,
        //'pagination_items_per_page' => 1,
        //'order' =>['timecreation'=>'ASC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Cashbill
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @@ORM\OneToOne(targetEntity=user::class, cascade={"persist", "remove"})
     * @ORM\OneToOne(targetEntity=user::class)
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="string", length=255)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $identyfikator;

    /**
     * @ORM\Column(type="string", length=255)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $klucz;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUser(): ?user
    {
        return $this->user;
    }

    public function setUser(user $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getIdentyfikator(): ?string
    {
        return $this->identyfikator;
    }

    public function setIdentyfikator(string $identyfikator): self
    {
        $this->identyfikator = $identyfikator;

        return $this;
    }

    public function getKlucz(): ?string
    {
        return $this->klucz;
    }

    public function setKlucz(string $klucz): self
    {
        $this->klucz = $klucz;

        return $this;
    }
}
