<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Form\RecipeType;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class RecipeController extends AbstractController
{
    /**
     * Cette fonction retourne tous les recettes
     *
     * @param RecipeRepository $repository
     * @param PaginatorInterface $paginator
     * @param Request $request
     * @return Response
     */
    #[Route('/recipe', name: 'recipe.list', methods: ['GET'])]
    public function index(RecipeRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {
        $recipe = $paginator->paginate(
            $repository->findAll(), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );
        return $this->render('pages/recipe/index.html.twig', [
            'recipes' => $recipe,
        ]);
    }

    #[Route('/nouveau/recette', name:'recipe.new', methods: ['GET','POST'])]
    public function new(EntityManagerInterface $manager, Request $request) : Response
    {
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $recipe = $form->getData();
            $manager->persist($recipe); //comme commit enregister dans une local storage
            $manager->flush(); //push les données dans une localstorage

            $this->addFlash(
                'Succes',
                'Votre recette à été créer avec succes !'
            );

            return $this->redirectToRoute('recipe.list'); // ingredient is the name of route / index
        }
        return $this->render('pages/recipe/new.html.twig', [
            'form' => $form->createView(),
        ]);

    }
}
