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

use App\Repository\Catt1Repository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=Catt1Repository::class)
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
        /*'post'=>[
            'denormalization_context' => ['groups' => ['category1:collection:post',]],
            //'normalization_context' => ['groups' => ['']],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],*/
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['category1:item:get']],
            'security'=>"is_granted('ROLE_USER')",
        ],
        /*'put'=>[
            'denormalization_context' => ['groups' => ['category1:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],*/
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
        'order' =>['id'=>'DESC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Catt1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer", nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class)]
    private $category;
    
    /**
     * @ORM\ManyToOne(targetEntity=user::class)
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put','category1:collection:post'])]
    private $dane;

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

    public function getDane(): ?string
    {
        return $this->dane;
    }

    public function setDane(?string $dane): self
    {
        $this->dane = $dane;

        return $this;
    }
    
    public function getCategory(): ?int
    {
        return $this->category;
    }

    public function setCategory(int $category): self
    {
        $this->category = $category;

        return $this;
    }
    
}
