<?php

namespace App\Controller;

use App\Entity\Contact;
use App\Form\ContactType;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bridge\Twig\Mime\TemplatedEmail;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Mailer\Exception\TransportExceptionInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\Mailer\MailerInterface;

class ContactController extends AbstractController
{
    /**
     * envoyer email
     * 
     * @param EntityManagerInterface $manager
     * @param Request $request
     * @param MailerInterface $mailer
     * @return Response
     */
    #[Route('/contact', name: 'contact')]
    public function index(EntityManagerInterface $manager, Request $request, MailerInterface $mailer): Response
    {
        $contact = new Contact();
        if($this->getUser()){
            $contact->setNom($this->getUser()->getNom())
                    ->setEmail($this->getUser()->getEmail());
        }
        
        $form = $this->createForm(ContactType::class, $contact);
        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid()){
            $contact =  $form->getData();

            $manager->persist($contact);
            $manager->flush();

            $email = (new TemplatedEmail())->from($contact->getEmail())
                        ->to('admin@recette.com')
                        ->subject($contact->getSubject())
                        ->htmlTemplate('emails/contact.html.twig')
                        ->context([
                            'contact' => $contact,
                        ]);
            try {
                $mailer->send($email);
            } catch (TransportExceptionInterface $e) {
                dd($e);
            }

            $this->addFlash(
                'Succes',
                'Votre message à été envoyer avec succes !'
            );
            return $this->redirectToRoute('contact');
        }
        return $this->render('pages/contact/index.html.twig', [
            'form' => $form->createView(),
        ]);
    }
}
