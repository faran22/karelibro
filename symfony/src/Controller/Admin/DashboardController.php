<?php

namespace App\Controller\Admin;

use EasyCorp\Bundle\EasyAdminBundle\Config\Dashboard;
use EasyCorp\Bundle\EasyAdminBundle\Config\MenuItem;
use EasyCorp\Bundle\EasyAdminBundle\Controller\AbstractDashboardController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Entity\User;
use App\Entity\Cat1;
use App\Entity\Cat2;
use EasyCorp\Bundle\EasyAdminBundle\Router\CrudUrlGenerator;

class DashboardController extends AbstractDashboardController
{
    /**
     * @Route("/admin", name="admin")
     */
    public function index(): Response
    {
        return parent::index();
        //$routeBuilder = $this->get(CrudUrlGenerator::class)->build();
        //$url = $routeBuilder->setController(ConferenceCrudController::class)->generateUrl();
        //return $this->redirect($url);
    }

    public function configureDashboard(): Dashboard
    {
        //$trr=Dashboard::new()->setTitle('Symfony');
        $trr=Dashboard::new();
        //$trr->setTitle('Symfony');
        //print_r( get_class_methods($trr) );
        return $trr;
    }

    public function configureMenuItems(): iterable
    {
    //$a=new MenuItem();print_r(get_class_methods($a));die();
        //yield MenuItem::linktoDashboard('Dashboard', 'fa fa-home');
         yield MenuItem::linktoRoute('Home', 'fas fa-home', 'homepage');
         //yield MenuItem::linkToCrud('Conferences', 'fas fa-map-marker-alt', Conference::class);
         //yield MenuItem::linkToCrud('Comments', 'fas fa-comments', Comment::class);
         yield MenuItem::linkToCrud('User', 'fas fa-comments', User::class);
         yield MenuItem::linkToCrud('Category 1', 'fas fa-comments', Cat1::class);
         yield MenuItem::linkToCrud('Category 2', 'fas fa-comments', Cat2::class);
         //yield MenuItem::linkToUrl('Szkraby.com', 'fas fa-comments', 'https://szkraby.com');
         //yield MenuItem::subMenu('subMenu');
         //yield MenuItem::linkToLogout('Logout', 'fa fa-exit');
         //yield MenuItem::linkToCrud('The Label', 'fas fa-list', EntityClass::class);
    }
}
