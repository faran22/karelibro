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

//use App\Controller\EntityValidatorController;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\BooleanFilter;

use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

use App\Repository\Cat1Repository;
use Doctrine\ORM\Mapping as ORM;


/**
 * @ORM\Entity(repositoryClass=Cat1Repository::class)
 */
#[ApiResource(
#routePrefix: '/library',
collectionOperations: [
/*
normalization_context - dane odczytywane
denormalization_context - dane wysyłane
*/

        'get' => [
            'normalization_context' => ['groups' => ['category1:collection:get','collection:get']],
            //'controller'=>EntityValidatorController::class,
            //'security'=>"is_granted('ROLE_ADMIN')",
        ],
        'post'=>[
            'denormalization_context' => ['groups' => ['category1:collection:post','category1:collection:get']],
            //'normalization_context' => ['groups' => ['']],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
            //'controller'=>EntityValidatorController::class,
        ],
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
        //bez patch w angular sa bledy
        'patch'=>[
            'denormalization_context' => ['groups' => ['category1:item:patch','category1:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
        'delete'=>[
            'denormalization_context' => ['groups' => ['category1:item:delete']],
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
    ],
attributes: [
        'pagination_enabled' => true,
        'pagination_items_per_page' => 9,//ta sama paginacja musi byc w pliku GettrescController
        'order' =>['timecreation'=>'DESC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Cat1
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
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    #[ApiFilter(SearchFilter::class)]
    private $category;

    /**
     * @ORM\Column(type="text")
     */
     #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $title;

    /**
     * @ORM\Column(type="text", nullable=false)
     */
     #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $description;
    
    /**
     * @ORM\Column(type="text", nullable=false)
     */
     #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $description2;

    /**
     * @ORM\Column(type="datetime")
     */
     #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $timecreation;

    /**
     * @ORM\ManyToOne(targetEntity=user::class, inversedBy="cat1s")
     * @ORM\JoinColumn(nullable=false)
     */
                                               /* example: /api/users/78 */
     #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
     #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

     /**
      * @ORM\Column(type="json", nullable=true)
      */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
     private $picture = [];

     /**
      * @ORM\Column(type="json", nullable=true)
      */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
     private $video = [];
     
     /**
      * @ORM\Column(type="float", nullable=true)
      */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
     private $count;

     /**
      * @ORM\Column(type="float", nullable=true)
      */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
     private $price;

      /**
       * @ORM\Column(type="boolean")
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      #[ApiFilter(BooleanFilter::class)]
      private $wyswietlanie;

      /**
       * @ORM\Column(type="json")
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $warianty = [];
      
      /**
       * @ORM\Column(type="text", nullable=true)
       */
       #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $defaultpicture;
      
      /**
       * @ORM\Column(type="json")
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $fieldsforbuyers = [];
      
      /**
       * @ORM\Column(type="json")
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $any = [];
      
      /**
       * @ORM\Column(type="text", nullable=true)
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $recenzja;
      
      /**
       * @ORM\Column(type="text", nullable=true)
       */
      #[Groups(groups: ['category1:collection:get','category1:item:put'])]
      private $uuid;
      
    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    #[Groups(groups: ['collection:get','category1:item:get'])]
    private $dowiazanie;
    
    /**
     * @ORM\Column(type="json", nullable=true)
     */
    #[Groups(groups: ['collection:get','category1:item:get'])]
    private $dowiazania=null;
    
    
    /**
     * @ORM\Column(type="json")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:get','category1:item:put'])]
    private $facebookposts = [];

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }
    
    public function getDescription2(): ?string
    {
        return $this->description2;
    }

    public function setDescription2(?string $description2): self
    {
        $this->description2 = $description2;

        return $this;
    }

    public function getTimecreation(): ?\DateTimeInterface
    {
        return $this->timecreation;
    }

    public function setTimecreation(\DateTimeInterface $timecreation): self
    {
        $this->timecreation = $timecreation;

        return $this;
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

    public function getPicture(): ?array
    {
        return $this->picture;
    }

    public function setPicture(?array $picture): self
    {
        $this->picture = $picture;

        return $this;
    }
    
    public function getVideo(): ?array
    {
        return $this->video;
    }

    public function setVideo(?array $video): self
    {
        $this->video = $video;

        return $this;
    }

    public function getCount(): ?float
    {
        return $this->count;
    }

    public function setCount(float|null $count): self
    {
        $this->count = $count;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float|null $price): self
    {
        $this->price = $price;

        return $this;
    }

    public function getWyswietlanie(): ?bool
    {
        return $this->wyswietlanie;
    }

    public function setWyswietlanie(bool $wyswietlanie): self
    {
        $this->wyswietlanie = $wyswietlanie;

        return $this;
    }

    public function getWarianty(): ?array
    {
        return $this->warianty;
    }

    public function setWarianty(array $warianty): self
    {
        $this->warianty = $warianty;

        return $this;
    }
    
    public function getDefaultpicture(): ?string
    {
        return $this->defaultpicture;
    }

    public function setDefaultpicture(string|null $defaultpicture): self
    {
        $this->defaultpicture = $defaultpicture;

        return $this;
    }
    
    public function getFieldsforbuyers(): ?array
    {
        return $this->fieldsforbuyers;
    }

    public function setFieldsforbuyers(array $fieldsforbuyers): self
    {
        $this->fieldsforbuyers = $fieldsforbuyers;

        return $this;
    }
    
    public function getAny(): ?array
    {
        return $this->any;
    }

    public function setAny(array $any): self
    {
        $this->any = $any;

        return $this;
    }
    
    public function getRecenzja(): ?string
    {
        return $this->recenzja;
    }

    public function setRecenzja(string|null $recenzja): self
    {
        $this->recenzja = $recenzja;

        return $this;
    }
    
    public function getUuid(): ?string
    {
        return $this->uuid;
    }

    public function setUuid(string|null $uuid): self
    {
        $this->uuid = $uuid;

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
    
    public function getDowiazanie(): ?int
    {
        return $this->dowiazanie;
    }

    public function setDowiazanie(int|null $dowiazanie): self
    {
        $this->dowiazanie = $dowiazanie;

        return $this;
    }
    
    public function getDowiazania(): ?array
    {
        return $this->dowiazania;
    }

    public function setDowiazania(array|null $dowiazania): self
    {
        $this->dowiazania = $dowiazania;

        return $this;
    }
    
    public function getFacebookposts(): array
    {
        return $this->facebookposts;
    }

    public function setFacebookposts(array $facebookposts): self
    {
        $this->facebookposts = $facebookposts;

        return $this;
    }
    
}
