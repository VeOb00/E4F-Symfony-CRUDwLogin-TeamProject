<?php

namespace App\Form;

use App\Entity\Signatory;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\HiddenType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class SignatoryType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('documentType')
            ->add('number')
            ->add('fName')
            ->add('lName')
            ->add('dob')
            ->add('placeOb')
            ->add('nationality')
            ->add('address')
            ->add('zipcode')
            ->add('city')
            ->add('country')
//            ->add('fkCause', HiddenType::class, ['attr' => ['value' => 1]])
            /**todo
             * pass the value - cause id
             */
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Signatory::class,
        ]);
    }
}
