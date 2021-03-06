<?php

namespace App\Controller\Userpanel;

use App\Entity\User;
use App\Repository\UserRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use App\Repository\Admin\SettingRepository;
use App\Controller\Admin\UserController;



class UserpanelController extends AbstractController
{
    /**
     * @Route("/", name="userpanel")
     */
    public function index()
    {
        return $this->redirectToRoute('userpanel_show');

    }
        /**
     * @Route("/show", name="userpanel_show", methods="GET")
     */
    public function show()
    {
        return $this->render('userpanel/show.html.twig');

    }


    /**
     * @Route("/userpanel/edit", name="userpanel_edit", methods="GET|POST")
     */
    public function edit(Request $request)
    {
        $usersession=$this->getUser();

        $user=$this->getDoctrine()
            ->getRepository(User::class)
            ->find($usersession->getid());

        if($request->isMethod('POST'))
        {
            $submittedToken = $request->request->get('token');
            if($this->isCsrfTokenValid('user-form', $submittedToken)){
            $user->setName($request->get("name"));
            $user->setPassword($request->get("password"));
            $user->setAddress($request->get("address"));
            $user->setCity($request->get("city"));
            $user->setPhone($request->get("phone"));
            $this->getDoctrine()->getManager()->flush();
            $this->addFlash('success','Başarıyla güncellenmiştir..');
            return $this->redirectToRoute('userpanel_show');
            }
        }
        return $this->render('userpanel/edit.html.twig', ['user'=> $user]);

    }



}

