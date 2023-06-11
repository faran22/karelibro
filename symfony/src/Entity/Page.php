<?php

namespace App\Entity;

use App\Repository\PageRepository;
use Doctrine\ORM\Mapping as ORM;

use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Annotation\ApiProperty;
use ApiPlatform\Core\Annotation\ApiResource;
use ApiPlatform\Core\Annotation\ApiSubresource;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Core\Serializer\Filter\PropertyFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\BooleanFilter;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;


/**
 * @ORM\Entity(repositoryClass=PageRepository::class)
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
        //'post'=>[
        //    'denormalization_context' => ['groups' => ['category1:collection:post','category1:collection:get']],
        //    //'normalization_context' => ['groups' => ['']],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //    //'controller'=>EntityValidatorController::class,
        //],
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['category1:item:get','category1:collection:get']],
            //'security'=>"is_granted('ROLE_ADMIN')",
        ],
        //'put'=>[
        //    'denormalization_context' => ['groups' => ['category1:item:put']],
        //    //'normalization_context' => ['groups' => []],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
        ////bez patch w angular sa bledy
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
        'pagination_items_per_page' => 9,//ta sama paginacja musi byc w pliku GettrescController
        'order' =>['id'=>'DESC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Page
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="integer")
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    #[ApiFilter(SearchFilter::class)]
    private $category;

    /**
     * @ORM\Column(type="integer", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    #[ApiFilter(SearchFilter::class)]
    private $subcategory;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $title;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $description;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get','category1:item:put'])]
    private $content;

    public function getId(): ?int
    {
        return $this->id;
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

    public function getSubcategory(): ?int
    {
        return $this->subcategory;
    }

    public function setSubcategory(?int $subcategory): self
    {
        $this->subcategory = $subcategory;

        return $this;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(?string $title): self
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

    public function getContent(): ?string
    {
        return $this->content;
    }

    public function setContent(?string $content): self
    {
        $this->content = $content;

        return $this;
    }
}
