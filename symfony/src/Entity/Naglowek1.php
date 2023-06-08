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

use App\Repository\Naglowek1Repository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=Naglowek1Repository::class)
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
            //'security'=>"is_granted('ROLE_ADMIN')",
        ],
        /*'post'=>[
            'denormalization_context' => ['groups' => ['category1:collection:post','category1:collection:get']],
            //'normalization_context' => ['groups' => ['']],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],*/
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['category1:item:get','category1:collection:get']],
            //'security'=>"is_granted('ROLE_ADMIN')",
        ],
        'put'=>[
            'denormalization_context' => ['groups' => ['category1:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
        'patch'=>[
            'denormalization_context' => ['groups' => ['category1:item:patch','category1:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
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
class Naglowek1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=user::class, inversedBy="naglowek1s")
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="json")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $naglowek = [];
    
    /**
     * @ORM\Column(type="json")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $seo = [];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getUser(): ?user
    {
        return $this->user;
    }

    public function setUser(?user $user): self
    {
        $this->user = $user;

        return $this;
    }

    public function getNaglowek(): ?array
    {
        return $this->naglowek;
    }

    public function setNaglowek(array $naglowek): self
    {
        $this->naglowek = $naglowek;

        return $this;
    }
    
    public function getSeo(): ?array
    {
        return $this->seo;
    }

    public function setSeo(array $seo): self
    {
        $this->seo = $seo;

        return $this;
    }
}
