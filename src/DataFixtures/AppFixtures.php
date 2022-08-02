<?php

namespace App\DataFixtures;

use App\Entity\Ingredient;
use App\Entity\Recipe;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {

        $faker = Factory::create("fr_FR");

        // Create fake users
        $users = [];
        for ($l=0; $l < 10; $l++) { 
            $user = new User();
            $user->setNom($faker->name())
                ->setPseudo(mt_rand(0,1) === 1 ? $faker->firstName(): null)
                ->setEmail($faker->email())
                ->setRoles(['ROLE_USER'])
                ->setPlainPassword('password');

            $users[] = $user;
            $manager->persist($user);
        }
        // Create fake Ingredients
        $ingredients = [];
        for ($i=1; $i <= 40; $i++) { 
            $ingredient = new Ingredient();
            $ingredient->setNom('Ingredient #'.$i)
                    ->setUser($users[mt_rand(0, count($users)-1)])
                    ->setPrix(mt_rand(1, 100));
            $ingredients[] = $ingredient;        
            $manager->persist($ingredient);
        }
        
        // Create fake Recette
        for ($j=0; $j < 30; $j++) { 
            $recipe = new Recipe();
            $recipe->setNom($faker->word())
                    ->setTime(mt_rand(0,1) == 1 ? mt_rand(1,1440) : null)
                    ->setNbPersonne(mt_rand(0,1) == 1 ? mt_rand(1,49) : null)
                    ->setDifficulty(mt_rand(0,1) == 1 ? mt_rand(1,5) : null)
                    ->setDescription($faker->text(300))
                    ->setPrix(mt_rand(0,1) == 1 ? mt_rand(1,1000) : null)
                    ->setUser($users[mt_rand(0, count($users)-1)])
                    ->setIsFavorie(mt_rand(0,1) == 1 ? true : false)
                    ->setIsPublic(mt_rand(0, 1) == 1 ? true : false);
                    // la date de création est déja créer par la constructeur
            for ($k=0; $k <mt_rand(5,15); $k++) { 
                $recipe->addIngredient($ingredients[mt_rand(0, count($ingredients) - 1)]);
            }
            $manager->persist($recipe);
        }
        // create fake relation
        $manager->flush();
    }
}
