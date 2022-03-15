<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\DateTimeType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\Extension\Core\Type\SubmitType;
use Symfony\Component\Validator\Constraints\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name',TextType::class,array("attr" => array("class"=>"form-control", "style"=>"margin-bottom:15px")))
            ->add('date',DateTimeType::class,array("attr"=>array("style"=>"margin-bottom:15px")))
            ->add('description',TextareaType::class,array("attr"=>array("class"=>"form-control","style"=>"margin-bottom:15px")))
           
            ->add('capacity',IntegerType::class,array("attr"=>array("style"=>"margin-bottom:15px ","class"=>"form-control")))

            ->add('eMail',TextType::class,array("attr"=>array("class"=>"form-control","style"=>"margin-bottom:15px")))

            ->add('phoneNr',IntegerType::class,array("attr"=>array("class"=>"form-control","style"=>"margin-bottom:15px")))
            ->add('adress',TextType::class,array("attr"=>array("class"=>"form-control","style"=>"margin-bottom:15px")))
            ->add('url',TextType::class,array("attr"=>array("class"=>"form-control","style"=>"margin-bottom:15px")))
            ->add('type',ChoiceType::class, array("choices" =>array("riding"=>"riding", "adventure"=>"adventure", "dance"=>"dance"),'attr'=>array("class"=>'form-control',"style"=>"margin-bottom:15px" )))
            ->add('picture',FileType::class,[
                'label' => 'Upload picture',
 //unmapped means that is not associated to any entity property
                'mapped' => false,
 //not mandatory to have a file
                'required' => false,
 
 
 //in the associated entity, so you can use the PHP constraint classes as validators
                'constraints' => [
                    new File([
                        'maxSize' => '2048k',
                        'mimeTypes' => [
                            'image/png',
                            'image/jpeg',
                            'image/jpg',
                        ],
                        'mimeTypesMessage' => 'Please upload a valid picture file' ,
                    ])
                ],
            ])

        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
