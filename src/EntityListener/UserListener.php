<?php

namespace App\EntityListener;

use App\Entity\User;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;

 class UserListener
 {
    private UserPasswordHasherInterface $hash;

    public function __construct(UserPasswordHasherInterface $hash)
    {
        $this->hash = $hash;
    }
    public function prePersist(User $user)
    {
        $this->encodePassword($user);
    }

    /**
     * hash password
     *
     * @param User $user
     * @return void
     */
    public function encodePassword(User $user)
    {
        if ($user->getPlainPassword() === null) {
            return;
        }

        $user->setPassword(
            $this->hash->hashPassword(
                $user, 
                $user->getPlainPassword()
            )
        );
        $user->setPlainPassword(null);
    }
 }