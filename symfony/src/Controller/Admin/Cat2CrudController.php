<?php

namespace App\Controller\Admin;

use App\Entity\Cat2;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
//use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
//use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;
use EasyCorp\Bundle\EasyAdminBundle\Field\AssociationField;
use EasyCorp\Bundle\EasyAdminBundle\Field\DateTimeField;

//use EasyCorp\Bundle\EasyAdminBundle\Config\Assets;
//use EasyCorp\Bundle\EasyAdminBundle\Context\AdminContext;

//use Symfony\Component\Form\Extension\Core\Type\TextType;
//use Symfony\Component\Form\Extension\Core\Type\SubmitType;
//use Symfony\Component\Form\Extension\Core\Type\PasswordType;
//use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;

//use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;

//use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
//use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;

//use Symfony\Component\HttpFoundation\Response;


//use Doctrine\ORM\EntityManagerInterface;

//use EasyCorp\Bundle\EasyAdminBundle\Config\KeyValueStore;


//use Symfony\Component\HttpFoundation\Request;

//use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityUpdatedEvent;
//use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;

//use Symfony\Component\Form\FormFactoryInterface;
//use EasyCorp\Bundle\EasyAdminBundle\Form\Type\CrudFormType;
//use Symfony\Component\PropertyAccess\PropertyPath;

//use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

//use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

//use EasyCorp\Bundle\EasyAdminBundle\Event\AfterEntityUpdatedEvent;

//use Symfony\Component\Serializer\Serializer;

class Cat2CrudController extends AbstractCrudController
{


    //private $request;
    //private $symfonyFormFactory;
    //private $passwordEncoder;


    public function __construct(/*FormFactoryInterface $symfonyFormFactory, UserPasswordEncoderInterface $passwordEncoder*/)
    {
        //$this->request = Request::createFromGlobals();
        //$this->symfonyFormFactory = $symfonyFormFactory;
        //$this->passwordEncoder = $passwordEncoder;
    }

    
    public static function getEntityFqcn(): string
    {
        return Cat2::class;
    }



    public function configureFields(string $pageName): iterable
    {//echo('<pre>');print_r(get_class_methods($this));echo('</pre>');die();

    //echo '=='.$pageName.'==';
    return[
        IdField::new('id')->hideOnForm(),

        TextField::new('title'),
        TextField::new('description'),
        AssociationField::new('user'),
        DateTimeField::new('timecreation'),

    ];

    }

    


    


    
    
}
