<?php

namespace App\Form;

use App\Entity\Post;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\CountryType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
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
            ->add('title', TextType::class, ['help' => 'Required', 'required' => true, 'label' => 'Title:'])
            ->add('subtitle', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Subtitle:'])
            ->add('datePublished', DateType::class, ['help' => 'Required', 'widget' => 'single_text', 'format' => 'yyyy-MM-dd', 'required' => true, 'label' => 'Publishing Date:  '])
            ->add('authorFn', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Author First Name:'])
            ->add('authorLn', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Author Last Name:'])
            ->add('imageMain', TextType::class, ['help' => 'Required, will be used as thumbnail and posts main heading image.', 'required' => true, 'label' => 'Image url:'])
            ->add('imageMiddle', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Image url:'])
            ->add('imageBottom', TextType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Image url:'])
            ->add('excerpt', TextareaType::class, ['help' => 'Optional, max 500 characters, not visible in main article', 'required' => false, 'label' => 'Excerpt or Teaser Text:'])
            ->add('introText', TextareaType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Intro Text:', 'trim'=>false])
            ->add('mainText', TextareaType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Main Text:'])
            ->add('outroText', TextareaType::class, ['help' => 'Optional', 'required' => false, 'label' => 'Outro:'])
            ->add('post_type', ChoiceType::class,
                ['help' => 'Required, please select type -news- for a news article, -strike- for a upcoming strike event, or the -story- to add a business success story and fill out the corresponding form sections. ',
                    'required' => true,
                    'label' => 'Post Type:',
                    'choices' => ['news' => 'news', 'story' => 'story', 'strike' => 'strike']])
            ->add('strikeDate', DateTimeType::class,
                ['help' => 'Fill out for strike information',
                    'required' => false,
                    'widget' => 'single_text',
                    'label' => 'Strike Starting Date and Time: '])
            ->add('strikeAddress', TextType::class,
                ['help' => 'Fill out for strike information',
                    'required' => false,
                    'label' => 'Meeting Street Name and Number: '])
            ->add('strikeCity', TextType::class,
                ['help' => 'Fill out for strike information',
                    'required' => false,
                    'label' => 'City: '])
            ->add('strikeZipcode', IntegerType::class,
                ['help' => 'Fill out for strike information',
                    'required' => false,
                    'label' => 'Zipcode: '])
            ->add('strikeCountry', CountryType::class,
                ['help' => 'Fill out for strike information',
                    'required' => false,
                    'label' => 'Country: '])
            ->add('businessLogo', TextType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Business Logo url: '])
            ->add('businessName', TextType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Name: '])
            ->add('businessBranch', TextType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Branch: '])
            ->add('businessAddress', TextType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Street Name and Number: '])
            ->add('businessCity', TextType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'City/Place: '])
            ->add('businessZipcode', IntegerType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Zipcode: '])
            ->add('businessCountry', CountryType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Country: '])
            ->add('businessEmail', EmailType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'e-mail Address: '])
            ->add('businessWebpage', UrlType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Webpage url: '])
            ->add('businessLocation', UrlType::class,
                ['help' => 'Optional, fill out for success story business information',
                    'required' => false,
                    'label' => 'Google Maps Iframe url: ']);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Post::class,
        ]);
    }
}
