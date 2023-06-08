<?php

namespace App\Entity;

use App\Entity\User;

use App\Repository\Allegro1Repository;
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
 * @ORM\Entity(repositoryClass=Allegro1Repository::class)
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
class Allegro1
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * ORM\OneToOne(targetEntity=user::class, inversedBy="allegro1", cascade={"persist", "remove"})
     * @ORM\OneToOne(targetEntity=user::class, inversedBy="allegro1")
     * @ORM\JoinColumn(nullable=false)
     */
    #[Groups(groups: ['category1:collection:post','category1:collection:get'])]
    #[ApiFilter(SearchFilter::class, properties: ['user.domain' => 'partial'])]
    private $user;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['category1:collection:get'])]
    private $access_token;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $refresh_token;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $access_token_expires;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $scope;

    /**
     * @ORM\Column(type="datetime", nullable=true)
     */
    private $timecreation;

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
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $redirecturi;

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

    public function getAccessToken(): ?string
    {
        return $this->access_token;
    }

    public function setAccessToken(?string $access_token): self
    {
        $this->access_token = $access_token;

        return $this;
    }

    public function getRefreshToken(): ?string
    {
        return $this->refresh_token;
    }

    public function setRefreshToken(?string $refresh_token): self
    {
        $this->refresh_token = $refresh_token;

        return $this;
    }

    public function getAccessTokenExpires(): ?\DateTimeInterface
    {
        return $this->access_token_expires;
    }

    public function setAccessTokenExpires(?\DateTimeInterface $access_token_expires): self
    {
        $this->access_token_expires = $access_token_expires;

        return $this;
    }

    public function getScope(): ?string
    {
        return $this->scope;
    }

    public function setScope(?string $scope): self
    {
        $this->scope = $scope;

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

    public function getClientid(): ?string
    {
        return $this->clientid;
    }

    public function setClientid(?string $clientid): self
    {
        $this->clientid = $clientid;

        return $this;
    }

    public function getClientsecret(): ?string
    {
        return $this->clientsecret;
    }

    public function setClientsecret(?string $clientsecret): self
    {
        $this->clientsecret = $clientsecret;

        return $this;
    }

    public function getRedirecturi(): ?string
    {
        return $this->redirecturi;
    }

    public function setRedirecturi(?string $redirecturi): self
    {
        $this->redirecturi = $redirecturi;

        return $this;
    }
}
