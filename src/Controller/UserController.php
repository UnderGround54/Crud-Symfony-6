<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\UserPasswordType;
use App\Form\UserType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    /**
     * Edit information user
     *
     * @param User $user
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @param UserPasswordHasherInterface $hash
     * @return Response
     */
    #[Route('/utilisateur/edition/{id}', name: 'user.update', methods:['GET','POST'])]
    public function edit(User $user, Request $request, EntityManagerInterface $manager, UserPasswordHasherInterface $hash): Response
    {
        if(!$this->getUser()){
            return $this->redirectToRoute('login.connexion');
        }
        if($this->getUser() !== $user) {
             return $this->redirectToRoute('recipe.list');
        }

        $form = $this->createForm(UserType::class, $user);
        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid()){
            if ($hash->isPasswordValid($user,  $form->getData()->getPlainPassword())) {
                $user = $form->getData();
                $manager->persist($user); //comme commit enregister dans une local storage
                $manager->flush(); //push les données dans une localstorage

                $this->addFlash(
                    'Succes',
                    'Modification avec avec succes !'
                );

                return $this->redirectToRoute('recipe.list');
            }else{
                $this->addFlash(
                    'Warning',
                    'Le mot de passe est incorrect !'
                );
            }
        }
        return $this->render('/pages/user/update.html.twig', [
            'form' => $form->createView(),
        ]);
    }

    /**
     * Edit password user
     *
     * @param User $user
     * @param Request $request
     * @param UserPasswordHasherInterface $hash
     * @param EntityManagerInterface $manager
     * @return Response
     */
    #[Route('/utilisateur/edition_password/{id}', name:'password.update', methods:['GET','POST'])]
    public function updatePassword(User $user, Request $request, UserPasswordHasherInterface $hash, EntityManagerInterface $manager) :Response
    {
        $form = $this->createForm(UserPasswordType::class);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid()){
            // dd($form->getData());
            if($hash->isPasswordValid($user, $form->getData()['plainPassword'])){
                $user->setDateUpdate(new \DateTimeImmutable());
                $user->setPlainPassword($form->getData()['newPassword']);

                $manager->persist($user); //comme commit enregister dans une local storage
                $manager->flush(); //push les données dans une localstorage vers BD

                $this->addFlash(
                    'Succes',
                    'Modification de mot de passe avec avec succes !'
                );
                return $this->redirectToRoute('recipe.list');
            }else{
                $this->addFlash(
                    'Warning',
                    'Le mot de passe est incorrect !'
                );
            } 
        }
        return $this->render('pages/user/update_password.html.twig',[
            'form' => $form->createView(),
        ]);
    }
}
