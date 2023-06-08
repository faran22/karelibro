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

use App\Repository\Facebook1Repository;
use Doctrine\ORM\Mapping as ORM;

/**
 * @ORM\Entity(repositoryClass=Facebook1Repository::class)
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
        //'pagination_enabled' => true,
        //'pagination_items_per_page' => 1,
        //'order' =>['timecreation'=>'ASC'],
        //'security'=>"is_granted('ROLE_USER')",
    ],
)]
class Facebook1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * ORM\OneToOne(targetEntity=user::class, cascade={"persist", "remove"})
     * @ORM\OneToOne(targetEntity=user::class)
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    #[Groups(groups: ['category1:collection:post','category1:item:put'])]
    private $clientid;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    #[Groups(groups: ['category1:collection:post','category1:item:put'])]
    private $clientsecret;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $accesstoken;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $accountid;

    /**
     * @ORM\Column(type="json", nullable=true)
     */
    private $scope = [];

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $pageid;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $pageaccesstoken;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $appsecretproof;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $timecreation;

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

    public function getClientid(): ?string
    {
        return $this->clientid;
    }

    public function setClientid(string $clientid): self
    {
        $this->clientid = $clientid;

        return $this;
    }

    public function getClientsecret(): ?string
    {
        return $this->clientsecret;
    }

    public function setClientsecret(string $clientsecret): self
    {
        $this->clientsecret = $clientsecret;

        return $this;
    }

    public function getAccesstoken(): ?string
    {
        return $this->accesstoken;
    }

    public function setAccesstoken(?string $accesstoken): self
    {
        $this->accesstoken = $accesstoken;

        return $this;
    }

    public function getAccountid(): ?string
    {
        return $this->accountid;
    }

    public function setAccountid(?string $accountid): self
    {
        $this->accountid = $accountid;

        return $this;
    }

    public function getScope(): ?array
    {
        return $this->scope;
    }

    public function setScope(?array $scope): self
    {
        $this->scope = $scope;

        return $this;
    }

    public function getPageid(): ?string
    {
        return $this->pageid;
    }

    public function setPageid(?string $pageid): self
    {
        $this->pageid = $pageid;

        return $this;
    }

    public function getPageaccesstoken(): ?string
    {
        return $this->pageaccesstoken;
    }

    public function setPageaccesstoken(?string $pageaccesstoken): self
    {
        $this->pageaccesstoken = $pageaccesstoken;

        return $this;
    }

    public function getAppsecretproof(): ?string
    {
        return $this->appsecretproof;
    }

    public function setAppsecretproof(?string $appsecretproof): self
    {
        $this->appsecretproof = $appsecretproof;

        return $this;
    }

    public function getTimecreation(): ?\DateTimeInterface
    {
        return $this->timecreation;
    }

    public function setTimecreation(?\DateTimeInterface $timecreation): self
    {
        $this->timecreation = $timecreation;

        return $this;
    }
}
