<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\RegistrationType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;

class SecurityController extends AbstractController
{
    /**
     * formulaire de login user
     *
     * @param AuthenticationUtils $authenticationUtils
     * @return Response
     */
    #[Route('/connexion', name: 'login.connexion', methods:['GET','POST'])]
    public function login(AuthenticationUtils $authenticationUtils): Response
    {
        // $lastUsername = $authenticationUtils->getLastUsername();
        // $error = $authenticationUtils->getLastAuthenticationError();

        return $this->render('pages/security/login.html.twig', [
            'last_username' => $authenticationUtils->getLastUsername(),
            'error' => $authenticationUtils->getLastAuthenticationError()
        ]);
    }

    /**
     * Inscription de nouveau utilisateur
     *
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @return Response
     */
    #[Route('/inscription', name: 'login.inscription', methods: ['GET','POST'])]
    public function registration(Request $request, EntityManagerInterface $manager): Response
    {
        $user = New User();
        $user->setRoles(['ROLE_USER']);
        $form = $this->createForm(RegistrationType::class, $user);

        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()) {

            $this->addFlash(
                'Succes',
                'Votre compte a bien été créer !'
            );

            $user = $form->getData();
            $manager->persist($user);
            $manager->flush();
            return $this->redirectToRoute('login.connexion');
        }
        return $this->render('pages/security/registration.html.twig',[
            'form' => $form->createView(),
        ]);
    }

    /**
     * Deconnexion
     *
     * @return void
     */
    #[Route('/deconnexion', name: 'login.deconnexion')]
    public function logout()
    {
        
    }

}
