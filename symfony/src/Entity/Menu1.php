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

use App\Repository\Menu1Repository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=Menu1Repository::class)
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
class Menu1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=user::class, inversedBy="menu1s")
     * @@ORM\OneToOne(targetEntity=user::class, inversedBy="menu1s")
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="json", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $menu = [];
    
    /**
     * @ORM\Column(type="json", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $display = [];
    
    /**
     * @ORM\Column(type="text", nullable=false)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $naglowek1;
    
    /**
     * @ORM\Column(type="text", nullable=false)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $naglowek2;
    
    /**
     * @ORM\Column(type="text", nullable=false)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $javascript;
    
    /**
     * @ORM\Column(type="text", nullable=false)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $css;

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

    public function getMenu(): ?array
    {
        return $this->menu;
    }

    public function setMenu(?array $menu): self
    {
        $this->menu = $menu;

        return $this;
    }
    
    public function getDisplay(): ?array
    {
        return $this->display;
    }

    public function setDisplay(?array $display): self
    {
        $this->display = $display;

        return $this;
    }
    
    public function getNaglowek1(): ?string
    {
        return $this->naglowek1;
    }

    public function setNaglowek1(string $naglowek1): self
    {
        $this->naglowek1 = $naglowek1;

        return $this;
    }
    
    public function getNaglowek2(): ?string
    {
        return $this->naglowek2;
    }

    public function setNaglowek2(string $naglowek2): self
    {
        $this->naglowek2 = $naglowek2;

        return $this;
    }
    
    public function getJavascript(): ?string
    {
        return $this->javascript;
    }

    public function setJavascript(string $javascript): self
    {
        $this->javascript = $javascript;

        return $this;
    }
    
    public function getCss(): ?string
    {
        return $this->css;
    }

    public function setCss(string $css): self
    {
        $this->css = $css;

        return $this;
    }
}
