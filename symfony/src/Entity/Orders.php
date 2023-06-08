<?php

namespace App\Entity;

use App\Entity\User;

use App\Repository\OrdersRepository;
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
 * @ORM\Entity(repositoryClass=OrdersRepository::class)
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
        'post'=>[
            'denormalization_context' => ['groups' => ['category1:collection:post',]],
            'normalization_context' => ['groups' => ['category1:collection:post:receive']],
            //'output' => false,
            //'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['category1:item:get']],
            //'security'=>"is_granted('ROLE_USER')",
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
        'delete'=>[
            'denormalization_context' => ['groups' => ['category1:item:delete']],
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
    ],
attributes: [
        'pagination_enabled' => true,
        'pagination_items_per_page' => 10,
        'order' =>['creation'=>'DESC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Orders
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    #[Groups(groups: ['category1:collection:post:receive','category1:collection:get','category1:item:get'])]
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=user::class)
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get','category1:item:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="json")
     */
    ##[Groups(groups: ['category1:item:get','category1:collection:get','category1:item:put','category1:collection:post'])]
    #[Groups(groups: ['category1:collection:get','category1:item:put','category1:collection:post'])]
    private $data = [];

    /**
     * @ORM\Column(type="datetime")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:get'])]
    private $creation;

    /**
     * @ORM\Column(type="smallint")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:get','category1:collection:post:receive'])]
    #[ApiFilter(SearchFilter::class)]
    private $status;
    
    /**
     * @ORM\Column(type="json", nullable=true)
     */
    #[Groups(groups: ['category1:collection:post:receive','category1:item:get'])]
    private $error = [];
    
    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:post:receive','category1:item:get'])]
    private $zamowienie;
    
    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $uniq;
    
    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $paymentid;

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

    public function getData(): ?array
    {
        return $this->data;
    }

    public function setData(array $data): self
    {
        $this->data = $data;

        return $this;
    }

    public function getCreation(): ?\DateTimeInterface
    {
        return $this->creation;
    }

    public function setCreation(\DateTimeInterface $creation): self
    {
        $this->creation = $creation;

        return $this;
    }

    public function getStatus(): ?int
    {
        return $this->status;
    }

    public function setStatus(int $status): self
    {
        $this->status = $status;

        return $this;
    }
    
    public function getError(): ?array
    {
        return $this->error;
    }

    public function setError(array|null $error): self
    {
        $this->error = $error;

        return $this;
    }
    
    public function getZamowienie(): ?string
    {
        return $this->zamowienie;
    }

    public function setZamowienie(string|null $zamowienie): self
    {
        $this->zamowienie = $zamowienie;

        return $this;
    }
    
    public function getUniq(): ?string
    {
        return $this->uniq;
    }

    public function setUniq(string|null $uniq): self
    {
        $this->uniq = $uniq;

        return $this;
    }
    
    public function getPaymentid(): ?string
    {
        return $this->paymentid;
    }

    public function setPaymentid(string|null $paymentid): self
    {
        $this->paymentid = $paymentid;

        return $this;
    }
    
}
