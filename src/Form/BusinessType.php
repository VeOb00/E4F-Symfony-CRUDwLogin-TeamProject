<?php

namespace App\Form;

use App\Entity\Business;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\CountryType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BusinessType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Business Name:'])
            ->add('branch', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Business Branch:'])
            ->add('nrEmployees', IntegerType::class, ['help' => 'Optional', 'required' => false])
            ->add('strNameNr', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Street name & Nr.:'])
            ->add('city', TextType::class, ['help' => 'Optional', 'required' => false])
            ->add('zipcode', IntegerType::class, ['help' => 'Optional', 'required' => false])
            ->add('country', CountryType::class, ['required' => false])
            ->add('eMail', EmailType::class, ['help' => 'Optional', 'required' => false, 'label' => 'E-mail address:'])
            ->add('webpage', UrlType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Website:'])
            ->add('telNr', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Contact Tel. Nr.:'])
            ->add('logo', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Company Logo:'])
            ->add('image', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Teaser:'])
            ->add('description', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'About the company:'])
            ->add('moto', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Motto:'])
            ->add('gmaploc', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Location:'])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Business::class,
        ]);
    }
}
