<?php

namespace App\Form;

use App\Entity\Cause;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class CauseType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, ['required' => true, 'help' => 'Required'])
            ->add('subtitle', TextType::class, ['required' => false, 'help' => 'Optional'])
            ->add('excerpt', TextareaType::class, ['required' => false, 'help' => 'Optional, max. 1000 characters long.'])
            ->add('image', TextType::class, ['required' => false, 'help' => 'Recommended, please provide valid url link.'])
            ->add('description', TextareaType::class, ['required' => false, 'help' => 'Optional'])
            ->add('dateStart', DateType::class, ['required' => true, 'widget' => 'single_text', 'help' => 'Required'])
            ->add('dateEnd', DateType::class, ['required' => false, 'widget' => 'single_text', 'help' => 'Optional']);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Cause::class,
        ]);
    }
}
