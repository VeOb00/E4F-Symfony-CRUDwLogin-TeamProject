<?php

namespace App\Form;

use App\Entity\Business;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\CountryType;
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
            ->add('nrEmployees', IntegerType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Nr. of Employees:'])
            ->add('strNameNr', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Street name & Nr.:'])
            ->add('city', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'City:'])
            ->add('zipcode', IntegerType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Zip-Code:'])
            ->add('country', CountryType::class, ['required' => false, 'label' => 'Country:'])
            ->add('eMail', EmailType::class, ['help' => 'Optional', 'required' => false, 'label' => 'E-mail address:'])
            ->add('webpage', UrlType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Website:'])
            ->add('telNr', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Contact Tel. Nr.:'])
            ->add('logo', UrlType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Company Logo url:'])
            ->add('image', UrlType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Teaser Image url:'])
            ->add('description', TextareaType::class, ['help' => 'Optional', 'required' => false, 'label' => 'About the company:'])
            ->add('moto', TextareaType::class, ['help' => 'Optional, max. 500 characters long.', 'required' => false, 'label' => 'Business Motto or Slogan:'])
            ->add('gmaploc', TextType::class, ['help' => 'Optional, src link form google maps iframe', 'required' => false, 'label' => 'Location:']);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Business::class,
        ]);
    }
}
