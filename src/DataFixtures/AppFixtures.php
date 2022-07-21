<?php

namespace App\DataFixtures;

use App\Entity\Ingredient;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        for ($i=1; $i <= 40; $i++) { 
            $ingredient = new Ingredient();
            $ingredient->setNom('Ingredient #'.$i)
                    ->setPrix(mt_rand(1, 100));
            $manager->persist($ingredient);
        }
        
        $manager->flush();
    }
}
