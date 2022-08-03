<?php

namespace App\Controller;

use App\Entity\Recipe;
use App\Form\RecipeType;
use App\Repository\RecipeRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
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
    #[IsGranted('ROLE_USER')]
    #[Route('/recette', name: 'recipe.list', methods: ['GET'])]
    public function index(RecipeRepository $repository, PaginatorInterface $paginator, Request $request): Response
    {
        $recipe = $paginator->paginate(
            $repository->findBy(['user' => $this->getUser()]), /* query NOT result */
            $request->query->getInt('page', 1), /*page number*/
            10 /*limit per page*/
        );
        return $this->render('pages/recette/index.html.twig', [
            'recipes' => $recipe,
        ]);
    }

    #[Route('/recette/publique', name: 'recipe.pubic', methods: ['GET'])]
    public function recettePublic(PaginatorInterface $paginator, RecipeRepository $repository, Request $request) : Response
    {
        $recipes = $paginator->paginate(
            $repository->findBublicRecipe(null),
            $request->query->getInt('page', 1),
            10
        );
        return $this->render('pages/recette/recette_public.html.twig',[
            'recipes' => $recipes,
        ]);
    }

    /**
     * Voir un recette
     *
     * @param Recipe $recipe
     * @return Response
     */
    #[Security("is_granted('ROLE_USER') and recipe.getIsPublic() === true")]
    #[Route('/recette/{id}', name:'recipe.show', methods: ['GET'])]
    public function show(Recipe $recipe): Response
    {
        return $this->render('pages/recette/show.html.twig', [
            'recipe' => $recipe,
        ]);
    }

    #[IsGranted('ROLE_USER')]
    #[Route('/nouveau/recette', name:'recipe.new', methods: ['GET','POST'])]
    public function new(EntityManagerInterface $manager, Request $request) : Response
    {
        $recipe = new Recipe();
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $recipe = $form->getData();
            $recipe->setUser($this->getUser());

            $manager->persist($recipe); //comme commit enregister dans une local storage
            $manager->flush(); //push les données dans une localstorage

            $this->addFlash(
                'Succes',
                'Votre recette à été créer avec succes !'
            );

            return $this->redirectToRoute('recipe.list'); // recipe is the name of route / index
        }
        return $this->render('pages/recette/new.html.twig', [
            'form' => $form->createView(),
        ]);

    }
    /**
     * update recette
     */
    #[Security("is_granted('ROLE_USER') and user === recipe.getUser()")]
    #[Route('recette/edition/{id}', name: 'recipe.update', methods: ['GET','POST'])]
    public function update(Recipe $recipe, Request $request, EntityManagerInterface $manager) : Response
    {
        $form = $this->createForm(RecipeType::class, $recipe);
        $form->handleRequest($request);
        
        if($form->isSubmitted() && $form->isValid()){
            $recipe = $form->getData();
            $manager->persist($recipe); //comme commit enregister dans une local storage
            $manager->flush(); //push les données dans une localstorage

            $this->addFlash(
                'Succes',
                'Votre recette à été modifié avec succes !'
            );

            return $this->redirectToRoute('recipe.list'); // recette is the name of route / index
        }
        return $this->render('pages/recette/update.html.twig', [
           'form' => $form->createView(),
        ]);
    }
    /**
     * Delete recette
     */
    #[Security("is_granted('ROLE_USER') and user === recipe.getUser()")]
    #[Route('recette/suppression/{id}', name: 'recipe.delete', methods: ['GET'])]
    public function delete(EntityManagerInterface $manager, Recipe $recipe) : Response
    {
        if(!$recipe)
        {
            $this->addFlash(
                'Warning',
                'Recette n\'a pas été trouvé'
            );
            return $this->redirectToRoute('recipe.list'); // recipe is the name of route / index
        }

        $manager->remove($recipe);
        $manager->flush();

        $this->addFlash(
            'Succes',
            'Votre recette à été supprimer avec succes !'
        );
        return $this->redirectToRoute('recipe.list'); // recipe is the name of route / index
    }

}
