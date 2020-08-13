<?php

namespace App\Form;

use App\Entity\Post;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\DateType;
use Symfony\Component\OptionsResolver\OptionsResolver;

class PostType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('title', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Blog Title:'])
            ->add('subtitle', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Subtitle:'])
            ->add('datePublished', DateType::class, ['help' => 'Required', 'widget' => 'single_text', 'format' => 'yyyy-MM-dd', 'required' => true])
            ->add('authorFn', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'First Name:'])
            ->add('authorLn', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Last Name:'])
            ->add('imageMain', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Teaser Image:'])
            ->add('imageMiddle', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Middle Image:'])
            ->add('imageBottom', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Bottom Image:'])
            ->add('excerpt', TextareaType::class, ['help' => 'Optional, max 500 characters', 'required' => false, 'label' => 'Teaser Text:'])
            ->add('introText', TextareaType::class, [ 'help' => 'Optional', 'required' => false, 'label' => 'Intro:'])
            ->add('mainText', TextareaType::class, [ 'help' => 'Optional', 'required' => false, 'label' => 'Main Text:'])
            ->add('outroText', TextareaType::class, [ 'help' => 'Optional', 'required' => false, 'label' => 'Outro:'])
            ->add('post_type', ChoiceType::class, [ 'help' => 'Required', 'required' => true, 'label' => 'Type:', 'choices' => ['news' => 'news', 'story' => 'story', 'strike' => 'strike']])
        ;
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Post::class,
        ]);
    }
}
