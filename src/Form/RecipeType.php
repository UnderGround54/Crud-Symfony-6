<?php

namespace App\Form;

use App\Entity\Ingredient;
use App\Entity\Recipe;
use App\Repository\IngredientRepository;
use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\CheckboxType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\MoneyType;
use Symfony\Component\Form\Extension\Core\Type\RangeType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Security\Core\Authentication\Token\Storage\TokenStorageInterface;
use Symfony\Component\Validator\Constraints as Assert;
use Vich\UploaderBundle\Form\Type\VichImageType;

class RecipeType extends AbstractType
{
    private $token;

    public function __construct(TokenStorageInterface $token)
    {
        $this->token = $token;   
    }
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('nom', TextType::class, [
                'attr' => [
                    'class' => 'form-control',
                    'minlength' => '2',
                    'maxlength' =>'50'
                ],
                'label' => 'Nom',
                'label_attr' => [
                    'class' => 'form-label mt-4'
                ],
                'constraints' => [
                    new Assert\Length(['min' =>2, 'max' => 50]),
                    New Assert\NotBlank()
                ]
            ])
            ->add('time', IntegerType::class,[
                'attr' => [
                    'class' => 'form-control',
                    'min' => 1,
                    'max' => 1040
                ],
                'label' => 'Temps (en minutes)',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    New Assert\LessThan(1441)
                ]
            ])
            ->add('nbPersonne',IntegerType::class ,[
                'attr' => [
                    'class' => 'form-control',
                    'min' => 1,
                    'max' => 50
                ],
                'label' => 'Nombre de personnes',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    New Assert\LessThan(51)
                ]
            ])
            ->add('difficulty',RangeType::class,[
                'attr' => [
                    'class' => 'form-range',
                    'min' => 1,
                    'max' => 5
                ],
                'label' => 'Difficulté',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\Positive(),
                    New Assert\LessThan(1441)
                ]
            ])
            ->add('description', TextareaType::class,[
                'attr' => [
                    'class' => 'form-control',
                    'min' => 5,
                    'max' => 1000
                ],
                'label' => 'Description',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
                'constraints' => [
                    new Assert\NotBlank()
                ]
            ])
            ->add('prix', MoneyType::class, [
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => 'Prix',
                'label_attr' => [
                    'class' => 'form-label mt-4'
                ],
                'constraints' => [
                    new Assert\Positive(),
                    New Assert\LessThan(1001)
                ]
            ])
            ->add('isFavorie', CheckboxType::class,[
                'attr' => [
                    'class' => 'form-check-input'
                ],
                'label' => 'Favoris ?',
                'label_attr' => [
                    'class' => 'form-label',
                ],
                'constraints' => [
                    new Assert\NotNull()
                ]
            ])
            ->add('ingredients', EntityType::class, [
                'class' => Ingredient::class,
                'query_builder' => function (IngredientRepository $ingredient){
                    return $ingredient->createQueryBuilder('i')
                                    ->where('i.user = :user')
                                    ->orderBy('i.nom','ASC')
                                    ->setParameter('user', $this->token->getToken()->getUser());
                },
                'choice_label' => 'nom',
                'multiple' => 'true',
                'expanded' => 'true',
                'label' => 'Les ingrédients',
                'label_attr' => [
                    'class' => 'form-label mt-4',
                ],
            ])->add('imageFile', VichImageType::class, [
                'attr' => [
                    'class' => 'form-control'
                ],
                'label' => 'Image de la recette',
                'label_attr' => [
                    'class' => 'form-label'
                ]
            ])
            ->add('submit', SubmitType::class, [
                'attr' => [
                    'class' => 'btn btn-primary mt-4'
                ],
                'label' => 'Créer ma recette'
            ]) // Il faut ajouter submit
            // ->add('dateCreation')
            // ->add('dateUpdate') générer automatiquement
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Recipe::class,
        ]);
    }
}
