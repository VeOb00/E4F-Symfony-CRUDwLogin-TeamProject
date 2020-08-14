<?php

namespace App\DataFixtures;
<<<<<<< HEAD

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;

class AppFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
=======
use App\Entity\User;

use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {
        $user = new User();

        $user->setPassword($this->passwordEncoder->encodePassword(
            $user,
            'adminadmin'
        ));

        $user->setEmail("admin@gmail.com");
        $manager->persist($user);

>>>>>>> bda66aa48ed6a60ce0b4da0bab710a686bad36fc
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
