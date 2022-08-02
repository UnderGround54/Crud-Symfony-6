<?php

namespace App\Controller;

use App\Entity\Ingredient;
use App\Form\IngredientType;
use App\Repository\IngredientRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class IngredientController extends AbstractController
{
    /**
     * Cette fonction retourne tous les ingrédients
     *
     * @param IngredientRepository $repository
     * @param PaginatorInterface $paginator
     * @param Request $request
     * @return Response
     */
    #[Route('/ingredient', name: 'ingredient.list', methods: ['GET'])]
    #[IsGranted('ROLE_USER')]
    public function index(IngredientRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {       
        $ingredient = $paginator->paginate(
            $repository->findBy(['user' => $this->getUser()]), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );
        return $this->render('pages/ingredient/index.html.twig', [
            'ingredients' => $ingredient,
        ]);
    }

    /**
     * Cette fonction return l'ajout d'un ingredient
     *
     * @param Request $request
     * @param EntityManagerInterface $manager
     * @return Response
     */
    #[Route('ingredient/nouveau',name: 'ingredient.new', methods:['GET','POST'])]
    #[IsGranted('ROLE_USER')]
    public function new(Request $request, EntityManagerInterface $manager) : Response
    {
        $ingredient = new Ingredient();
        $form = $this->createForm(IngredientType::class, $ingredient);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $ingredient = $form->getData();
            $ingredient->setUser($this->getUser());

            $manager->persist($ingredient); //comme commit enregister dans une local storage
            $manager->flush(); //push les données dans une localstorage

            $this->addFlash(
                'Succes',
                'Votre ingrédient à été créer avec succes !'
            );

            return $this->redirectToRoute('ingredient.list'); // ingredient is the name of route / index
        }
        return $this->render('pages/ingredient/new.html.twig', [
            'form' => $form->createView()
        ]);
    }

    /**
     * Update Ingredient
     */
    #[Security("is_granted('ROLE_USER') and user === ingredient.getUser()")]
    #[Route('ingredient/edition/{id}', name: 'ingredient.update', methods: ['GET','POST'])]
    public function update(Ingredient $ingredient, Request $request, EntityManagerInterface $manager) : Response
    {
        $form = $this->createForm(IngredientType::class, $ingredient);
        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid()){
            $ingredient = $form->getData();
            $manager->persist($ingredient); //comme commit enregister dans une local storage
            $manager->flush(); //push les données dans une localstorage

            $this->addFlash(
                'Succes',
                'Votre ingrédient à été modifié avec succes !'
            );

            return $this->redirectToRoute('ingredient.list'); // ingredient is the name of route / index
        }
        return $this->render('pages/ingredient/update.html.twig', [
           'form' => $form->createView(),
        ]);
    }
    /**
     * Delete Ingredient
     */
    #[Security("is_granted('ROLE_USER') and user === ingredient.getUser()")]
    #[Route('ingredient/suppression/{id}', name: 'ingredient.delete', methods: ['GET'])]
    public function delete(EntityManagerInterface $manager, Ingredient $ingredient) : Response
    {
        if(!$ingredient)
        {
            $this->addFlash(
                'Warning',
                'ingrédient n\'a pas été trouvé'
            );
            return $this->redirectToRoute('ingredient.list'); // ingredient is the name of route / index
        }

        $manager->remove($ingredient);
        $manager->flush();

        $this->addFlash(
            'Succes',
            'Votre ingrédient à été supprimer avec succes !'
        );
        return $this->redirectToRoute('ingredient.list'); // ingredient is the name of route / index
    }
}
