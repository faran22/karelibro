<?php

namespace App\Controller\Admin;

use App\Entity\User;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractCrudController;

use EasyCorp\Bundle\EasyAdminBundle\Field\TextField;
use EasyCorp\Bundle\EasyAdminBundle\Field\CollectionField;
use EasyCorp\Bundle\EasyAdminBundle\Field\IdField;
use EasyCorp\Bundle\EasyAdminBundle\Field\EmailField;

//use Symfony\Component\Form\Extension\Core\Type\PasswordType;
//use EasyCorp\Bundle\EasyAdminBundle\Config\Assets;
use EasyCorp\Bundle\EasyAdminBundle\Context\AdminContext;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use EasyCorp\Bundle\EasyAdminBundle\Config\Crud;

use EasyCorp\Bundle\EasyAdminBundle\Field\FormField;

use EasyCorp\Bundle\EasyAdminBundle\Config\Action;
use EasyCorp\Bundle\EasyAdminBundle\Config\Actions;

//use Symfony\Component\HttpFoundation\Response;


use Doctrine\ORM\EntityManagerInterface;

use EasyCorp\Bundle\EasyAdminBundle\Config\KeyValueStore;


use Symfony\Component\HttpFoundation\Request;

//use EasyCorp\Bundle\EasyAdminBundle\Event\BeforeEntityUpdatedEvent;
use EasyCorp\Bundle\EasyAdminBundle\Router\AdminUrlGenerator;

use Symfony\Component\Form\FormFactoryInterface;
//use EasyCorp\Bundle\EasyAdminBundle\Form\Type\CrudFormType;
//use Symfony\Component\PropertyAccess\PropertyPath;

use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

use Symfony\Component\Form\Extension\Core\Type\RepeatedType;

//use EasyCorp\Bundle\EasyAdminBundle\Event\AfterEntityUpdatedEvent;

//use Symfony\Component\Serializer\Serializer;

class UserCrudController extends AbstractCrudController
{


    private $request;
    private $symfonyFormFactory;
    private $passwordEncoder;


    public function __construct(FormFactoryInterface $symfonyFormFactory, UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->request = Request::createFromGlobals();
        $this->symfonyFormFactory = $symfonyFormFactory;
        $this->passwordEncoder = $passwordEncoder;
    }

    
    public static function getEntityFqcn(): string
    {
        return User::class;
    }


    public function configureFields(string $pageName): iterable
    {//echo('<pre>');print_r(get_class_methods($this));echo('</pre>');die();

    //echo '=='.$pageName.'==';
    return[
        IdField::new('id')->hideOnForm(),

        // panels usually display only a title
        //FormField::addPanel('User Details'),
        TextField::new('username'),
        EmailField::new('email'),
        CollectionField::new('roles'),

        //FormField::addPanel('Password')
            //->setHelp('not required'),
        TextField::new('password')
            ->onlyWhenCreating()
            //->onlyOnDetail()
    ];

    }
    
    public function configureCrud(Crud $crud): Crud
    {
     //echo('<pre>');print_r(get_class_methods($crud));echo('</pre>');die();
        //$a = Crud::new()

                //Zamiana template twig dla różnych danych
            //->overrideTemplate('label/null', 'admin/labels/my_null_label.html.twig')
            //->overrideTemplates([
            //    'crud/index' => 'admin/pages/index.html.twig',
            //    'crud/field/textarea' => 'admin/fields/dynamic_textarea.html.twig',
            //])
            //;
            //->overrideTemplate('crud/field/id', 'test.html.twig')
            
                //Ustawianie własnego template dla form
            ////->addFormTheme('test-form.html.twig') //dowanie form theme 
            //->setFormThemes(['test-form.html.twig']) //nadpisywanie form theme
            
                //Opcje np target POST
            //->setFormOptions(['action' => 'https://onet.pl'])
            
            
        //;
        
        //print_r('<pre>');var_dump($a);print_r('</pre>');die();
        //return $a;
        
        $crud=Crud::new();
        if ($this->request->query->get('crudAction')==='renderPasswordChange'){
        
        $crud
        ->overrideTemplate('crud/edit', 'renderPasswordChange.html.twig')
        ;
        
        }
        
        return $crud;
        
    }
    
    public function configureActions(Actions $actions): Actions
    {
    //echo('<pre>');print_r(get_class_methods($actions));echo('</pre>');die();
     $viewInvoice = Action::new('PasswordChange')
            ->linkToCrudAction('renderPasswordChange');
            
    return $actions
            ->add(Crud::PAGE_INDEX, $viewInvoice)
        ;
    
    }
    
    public function renderPasswordChange(AdminContext $context)
    {
    //echo('<pre>');print_r(get_class_methods($context));echo('</pre>');die();

        //example 0
        //$form = $this->createFormBuilder(null)
        //->add('username', TextType::class)
        //->add('password', TextType::class)
        //->add('password2', TextType::class)
        //->add('save', SubmitType::class)
        //->getForm();
        //$form->handleRequest($request);
        //if ($form->isSubmitted() && $form->isValid()){
        //print_r($form->getData());die();
        //return $this->redirectToRoute('homepage');
        //}
        //print_r(get_class_methods($form));die();
        //return $this->render('createuser/index.html.twig', [
        //'form' => $form->createView(),
        //]);
        
        
    //example 1
        //$task = new User();
        //$task->setUsername('A');
        //$form = $this->createFormBuilder($task)
        //->add('username', TextType::class,[
        //    'help' => 'The ZIP/Postal code for your credit card\'s billing address.',
        //    'label' => 'To Be Completed Before',
        //    'required'   => false,
        //    'empty_data' => 'John Doe',
        //'attr' => [
        //'maxlength' => 2,
        //'style'=>'background-color: red',
        //'placeholder' => 'Name',
        //],
        //    'label_attr' => [
        //    'class' => 'classname',
        //    'style'=>'background-color: #d1d1d1',
        //    ],
        //'row_attr' => ['class' => 'text-editor', 'id' => '...'],
        //    ])
        //->add('password', TextareaType::class)
        //->add('roles', CollectionType::class, [
        //'entry_type'   => ChoiceType::class,'label' => 'Etykieta0',
        //'entry_options'  => [
        //'label' => 'Etykieta1',
        //'choices'  => [
        //    'Nashville' => 'nashville',
        //    'Paris'     => 'paris',
        //    'Berlin'    => 'berlin',
        //    'London'    => 'london',
        //],],])
        //->add('save', SubmitType::class, ['label' => 'Create Post','attr'  => ['class' => 'btn btn-default pull-right', 'id'=>'1234']])
        //->getForm();
        //print_r(get_class_methods($form));die();//print_r(get_class_methods($form));die();
        //$form->handleRequest($request);
        //if ($form->isSubmitted() && $form->isValid()){
        //print_r($task = $form->getData());die();
        //return $this->redirectToRoute('homepage');
        //}
        //return $this->render('createuser/index.html.twig', [
        //'form' => $form->createView(),
        //]);
            
    
    //example 2
         //$form = $this->createForm(UserType::class);
         //print_r(get_class_methods($form));die();
         //$form->handleRequest($request);
         //if ($form->isSubmitted() && $form->isValid()){
         //print_r($task = $form->getData());die();
         //return $this->redirectToRoute('homepage');
         //}
         //return $this->render('createuser/index.html.twig', [
         //   'form' => $form->createView(),
         //]);
         
         
    //example 3
        //$task = new User();
        //$task->setUsername('TestWrite');
        //$form = $this->createForm(UserType::class, $task, [
        //    'action' => $this->generateUrl('createuser'),
        //    'method' => 'POST',
        //]);
        //$form->handleRequest($request);
        //if ($form->isSubmitted() && $form->isValid()){
        //print_r($task = $form->getData());die();
        //return $this->redirectToRoute('homepage');
        //}
        //return $this->render('createuser/index.html.twig', [
        //    'form' => $form->createView(),
        //]);
        
    //example 4
        //$task = new User();
        //$form = $this->createFormBuilder($task,['attr' => ['class' => 'row g-3']])
        //->add('username', TextType::class,[
        //'row_attr' => ['class' => 'col-md-4'],
        //'label_attr' => ['class'=>'form-label'],
        //'attr' => ['class'=>'form-control','id'=>'validationDefault01']
        //])
        //->add('password', PasswordType::class,[
        //'row_attr' => ['class' => 'col-md-4'],
        //'label_attr' => ['class'=>'form-label'],
        //'attr' => ['class'=>'form-control','id'=>'validationDefault02'],
        //])
        //->add('email', EmailType::class,[
        //'row_attr' => ['class' => 'col-md-4'],
        //'label_attr' => ['class'=>'form-label'],
        //'attr' => ['class'=>'form-control','id'=>'validationDefaultUsername'],
        //])
        //->add('roles', CollectionType::class, [
        //'row_attr' => ['class' => 'col-md-3'],
        //'label_attr' => ['class'=>'form-label'],
        //    'entry_type'   => ChoiceType::class,
        //    //'label' => 'Etykieta0',
        //        'entry_options'  => [
        //        'label' => false,
        //        'attr' => ['class'=>'form-select','id'=>'validationDefault04'],
        //            'choices'  => [
        //            'User' => 'ROLE_USER',
        //            'Admin' => 'ROLE_ADMIN',
        //],],])
        //->add('save', SubmitType::class, ['label' => 'Create','attr'  => ['class'=>'btn btn-primary']])
        //->getForm();
    
        //echo('<pre>');print_r($context->getEntity()->getInstance()->getUsername());echo('</pre>');
        //print_r(get_class_methods($context->getEntity()->getInstance()));die();
        
        $task=new User();
        $editForm = $this->createFormBuilder($task,['attr' => ['id' => 'edit-Admin-form']])
        //->add('password', PasswordType::class,['always_empty'=>1,'row_attr' => ['class' => 'col-md-6 col-xxl-5',],])
        //->add('password0', PasswordType::class,['always_empty'=>1,'required'=>1,'label'=>'Password','mapped'=>false,'row_attr' => ['class' => 'col-md-6 col-xxl-5'],],)
        //->add('username', TextType::class,['required'=>1,'mapped'=>0,'disabled'=>1,'attr' => ['value'=>isset($context->getRequest()->request->all()['form']['username'])&&!empty($context->getRequest()->request->all()['form']['username'])?$context->getRequest()->request->all()['form']['username']:$context->getEntity()->getInstance()->getUsername(),],])
        ->add('username', TextType::class,['required'=>1,'mapped'=>1,'attr' => ['value'=>$context->getEntity()->getInstance()->getUsername(),'readonly'=>'readonly'],])
        ->add('password', RepeatedType::class, ['type' => PasswordType::class,'options'=>['row_attr' => ['class' => 'col-md-6 col-xxl-5',]],'first_options'  => ['label' => 'Password',],'second_options' => ['label' => 'Repeat Password',],])
        ->add('SaveChange0', SubmitType::class,['label'=>'Save Change','attr' => ['class'=>'btn-primary','value'=>'saveAndContinue','form'=>'edit-Admin-form'],])
        //->add('SaveChange1', SubmitType::class,['label'=>'Save and continue editing','attr' => ['class'=>'btn-secondary','value'=>'saveAndReturn','form'=>'edit-Admin-form'],])
        ->getForm();


        
        $editForm->handleRequest($context->getRequest());
        if ($editForm->isSubmitted() && $editForm->isValid()){
        
        //$submitButtonName = $context->getRequest()->request->all();print_r($submitButtonName);die();
        //$submitButtonName = $context->getRequest()->request->all()['form']['save'];
        
        $password = $this->passwordEncoder->encodePassword($task, $task->getPassword());
        $context->getEntity()->getInstance()->setPassword($password);
        $entityManager = $this->getDoctrine()->getManager();
        $entityManager->persist($context->getEntity()->getInstance());
        $entityManager->flush();
        
        
        /*
        $url = $this->get(AdminUrlGenerator::class)
                    ->setAction('renderPasswordChange')
                    ->setEntityId($context->getEntity()->getPrimaryKeyValue())
                    ->generateUrl();
        return $this->redirect($url);
        */
        
        $this->addFlash('success','Success');
        $url = empty($context->getReferrer())
        ? $this->get(AdminUrlGenerator::class)->setAction(Action::INDEX)->generateUrl()
        : $context->getReferrer();
        return $this->redirect($url);

        }
        else if ($editForm->isSubmitted()){$this->addFlash('warning','Password is incorrect');}

        $responseParameters = $this->configureResponseParameters(KeyValueStore::new([
        'pageName' => 'renderPasswordChange',
        'templateName' => 'crud/edit',
        'edit_form' => $editForm,
        'array' => ['title'=>'Password Change'],
        'entity' => $context->getEntity(),
        ]));

        //echo('<pre>');print_r($context->getEntity());echo('</pre>');
        return $responseParameters;
        
    }
    
    //create user
    public function persistEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {//print_r(get_class_methods($entityInstance));die();
    
    if ($this->request->query->get('crudAction')==='new'){
    $password = $this->passwordEncoder->encodePassword($entityInstance, $entityInstance->getPassword());
    $entityInstance->setPassword($password);
    }
        try{
        $entityManager->persist($entityInstance);
        $entityManager->flush();
        $this->addFlash('success','Success');
        }
        catch(DBALException $e){$this->addFlash('warning','Warning: '.$e->getMessage());}
        catch(\Exception $e){$this->addFlash('warning','Warning: '.$e->getMessage());}
    }
    
    //update user
    public function updateEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
    /*
    $adminId = $this->getDoctrine()
            ->getRepository(User::class)
            ->findBy(['username'=>'admin']);
    */
    //admin change lock
    $query = $entityManager->createQuery(
            'SELECT p.id
            FROM App\Entity\User p
            WHERE p.username = :value'
            //ORDER BY p.id ASC
    )
    ->setParameter('value', 'admin');
    $adminId=$query->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY);
    $currentUserId=$entityInstance->getId();
    $currentUsername=$entityInstance->getUsername();
    //jesli zmieniane dane uzytkownika admin && zmieniany jest username
    if ($adminId['0']['id']===$currentUserId && $currentUsername!=='admin'){$this->addFlash('warning','Data cannot be changed');return;}
    
        try{
        $entityManager->persist($entityInstance);
        $entityManager->flush();
        $this->addFlash('success','Success');
        }
        catch(DBALException $e){$this->addFlash('warning','Warning: '.$e->getMessage());}
        catch(\Exception $e){$this->addFlash('warning','Warning: '.$e->getMessage());}
        
    }

    //delete user
    public function deleteEntity(EntityManagerInterface $entityManager, $entityInstance): void
    {
        if ($entityInstance->getUsername()!=='admin'){
        $entityManager->remove($entityInstance);
        $entityManager->flush();
        $this->addFlash('success','Success');
        return;
        }
        $this->addFlash('warning','Warning');
    }
    
    
}
