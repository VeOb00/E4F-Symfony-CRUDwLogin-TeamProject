<?php

namespace App\Form;

use App\Entity\Signatory;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SignatoryType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('documentType', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Passport, ID or Drivers Licence:'])
            ->add('number', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Identification number:'])
            ->add('fName', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'First Name:'])
            ->add('lName', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Last Name:'])
            ->add('dob', DateType::class, ['help' => 'Optional', 'widget' => 'single_text', 'format' => 'yyyy-MM-dd', 'required' => false, 'label' => 'Date of Birth:'])
            ->add('placeOb', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Place of Birth:'])
            ->add('nationality', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Nationality:'])
            ->add('address', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Address:'])
            ->add('zipcode', IntegerType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Zip-Code:'])
            ->add('city', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'City:'])
            ->add('country', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Country:'])
            ->add('fkCause', HiddenType::class)
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Signatory::class,
        ]);
    }
}
