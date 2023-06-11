<?php

namespace App\Entity;

use App\Repository\UserRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Security\Core\User\PasswordAuthenticatedUserInterface;
use Symfony\Component\Security\Core\User\UserInterface;

use ApiPlatform\Core\Annotation\ApiFilter;
use ApiPlatform\Core\Annotation\ApiProperty;
use ApiPlatform\Core\Annotation\ApiResource;
use ApiPlatform\Core\Annotation\ApiSubresource;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\OrderFilter;
use ApiPlatform\Core\Bridge\Doctrine\Orm\Filter\SearchFilter;
use ApiPlatform\Core\Serializer\Filter\PropertyFilter;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
//use Ramsey\Uuid\Doctrine\UuidGenerator;
//use Ramsey\Uuid\UuidInterface;
use Symfony\Component\Serializer\Annotation\Groups;
use Symfony\Component\Validator\Constraints as Assert;

use App\Filter\RegexpFilter;



/**
 * @ORM\Entity(repositoryClass=UserRepository::class)
 */
#[ApiResource(
#routePrefix: '/library',
collectionOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['user:collection:get']],
            'security'=>"is_granted('ROLE_USER')",
            //'security'=>"is_granted('ROLE_SUPER_ADMIN')",
            //"output" => false,
            //'status'=>202,
            //"messenger" => true,
        ],
        //'post'=>[
        //    'denormalization_context' => ['groups' => ['user:collection:post']],
        //    //'normalization_context' => ['groups' => ['']],
        //    'output' => false,
        //    //'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //    //'security_message'=>'Only admins...',
        //    //"output" => false,
        //    //"messenger" => true,
        //],
    ],
itemOperations: [
        'get' => [
            'normalization_context' => ['groups' => ['user:item:get','user:collection:get']],
            'security'=>"is_granted('ROLE_USER')",
        ],
        'put'=>[
            'denormalization_context' => ['groups' => ['user:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
        //bez patch w angular sa bledy
        'patch'=>[
            'denormalization_context' => ['groups' => ['user:item:patch','user:item:put']],
            //'normalization_context' => ['groups' => []],
            'output' => false,
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],
        /*'delete'=>[
            'denormalization_context' => ['groups' => ['user:item:delete']],
            'security_post_denormalize'=>"is_granted('ROLE_USER')",
        ],*/
        //'passwordChange' => [
        //    'method' => 'put',
        //    'path' => '/users/passwordchange/{id}',
        //    'denormalization_context' => ['groups' => ['user-password:item:put']],
        //    //'normalization_context' => ['groups' => []],
        //    'output' => false,
        //    'security_post_denormalize'=>"is_granted('ROLE_USER')",
        //],
    ],
attributes: [
        'pagination_enabled' => true,
        'pagination_items_per_page' => 1,
        'order' =>['username'=>'ASC'],
        //'security'=>"is_granted('ROLE_ADMIN')",
    ],
    #normalizationContext: ['groups' => ['read']],
    #denormalizationContext: ['groups' => ['put']],
)]
class User implements UserInterface, PasswordAuthenticatedUserInterface
{

    public function __toString(): string
    {
        return $this->username;
    }

    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=180, unique=true)
     */
    private $username;

    /**
     * @ORM\Column(type="json")
     */
    private $roles = [];
    
    /**
     * @ORM\Column(type="json")
     */
    private $personaldata = [];

    /**
     * @var string The hashed password
     * @ORM\Column(type="string")
     */
    private $password;

    /**
     * @ORM\Column(type="string", length=255, unique=false)
     */
    private $email;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $domain;
    
    /**
     * @ORM\Column(type="text", nullable=true)
     */
    #[Groups(groups: ['user:collection:get'])]
    private $connecteddomain;
    
    /**
     * @ORM\Column(type="integer", nullable=false)
     */
    private $size;
    
    /**
     * @ORM\Column(type="integer", nullable=false)
     */
    private $page;

    public function __construct()
    {
    
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @deprecated since Symfony 5.3, use getUserIdentifier instead
     */
    public function getUsername(): string
    {
        return (string) $this->username;
    }

    public function setUsername(string $username): self
    {
        $this->username = $username;

        return $this;
    }

    /**
     * A visual identifier that represents this user.
     *
     * @see UserInterface
     */
    public function getUserIdentifier(): string
    {
        return (string) $this->username;
    }

    /**
     * @see UserInterface
     */
    public function getRoles(): array
    {
        $roles = $this->roles;
        // guarantee every user at least has ROLE_USER
        $roles[] = 'ROLE_USER';
        //$roles[] = 'ROLE_';
        
        return array_unique($roles);
    }

    public function setRoles(array $roles): self
    {
        $this->roles = $roles;

        return $this;
    }

    /**
     * @see PasswordAuthenticatedUserInterface
     */
    public function getPassword(): string
    {
        return $this->password;
    }

    public function setPassword(string $password): self
    {
        $this->password = $password;

        return $this;
    }

    /**
     * Returning a salt is only needed, if you are not using a modern
     * hashing algorithm (e.g. bcrypt or sodium) in your security.yaml.
     *
     * @see UserInterface
     */
    public function getSalt(): ?string
    {
        return null;
    }

    /**
     * @see UserInterface
     */
    public function eraseCredentials()
    {
        // If you store any temporary, sensitive data on the user, clear it here
        // $this->plainPassword = null;
    }

    public function getEmail(): ?string
    {
        return $this->email;
    }

    public function setEmail(string $email): self
    {
        $this->email = $email;

        return $this;
    }

    public function getDomain(): ?string
    {
        return $this->domain;
    }

    public function setDomain(?string $domain): self
    {
        $this->domain = $domain;

        return $this;
    }
    
    public function getPersonaldata(): ?array
    {
        return $this->personaldata;
    }

    public function setPersonaldata(?array $personaldata): self
    {
        $this->personaldata = $personaldata;

        return $this;
    }
    
    public function getConnecteddomain(): ?string
    {
        return $this->connecteddomain;
    }

    public function setConnecteddomain(string|null $connecteddomain): self
    {
        $this->connecteddomain = $connecteddomain;

        return $this;
    }
    
    public function getSize(): int
    {
        return $this->size;
    }

    public function setSize(int $size): self
    {
        $this->size = $size;

        return $this;
    }
    
    public function getPage(): int
    {
        return $this->page;
    }

    public function setPage(int $page): self
    {
        $this->page = $page;

        return $this;
    }

}
