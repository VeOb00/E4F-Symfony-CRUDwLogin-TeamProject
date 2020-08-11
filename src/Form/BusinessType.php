<?php

namespace App\Form;

use App\Entity\Business;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BusinessType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('name')
            ->add('branch')
            ->add('nrEmployees')
            ->add('strNameNr')
            ->add('city')
            ->add('zipcode')
            ->add('country')
            ->add('eMail')
            ->add('webpage')
            ->add('telNr')
            ->add('logo')
            ->add('image')
            ->add('description')
            ->add('moto')
            ->add('gmaploc')
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Business::class,
        ]);
    }
}
