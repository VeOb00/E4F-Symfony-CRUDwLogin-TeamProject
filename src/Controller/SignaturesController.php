<?php

namespace App\Controller;

use App\Entity\Signatures;
use App\Form\SignaturesType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/signatures")
 */
class SignaturesController extends AbstractController
{
    /**
     * @Route("/", name="signatures_index", methods={"GET"})
     */
    public function index(): Response
    {
        $signatures = $this->getDoctrine()
            ->getRepository(Signatures::class)
            ->findAll();

        return $this->render('signatures/index.html.twig', [
            'signatures' => $signatures,
        ]);
    }

    /**
     * @Route("/new", name="signatures_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $signature = new Signatures();
        $form = $this->createForm(SignaturesType::class, $signature);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($signature);
            $entityManager->flush();

            return $this->redirectToRoute('signatures_index');
        }

        return $this->render('signatures/new.html.twig', [
            'signature' => $signature,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="signatures_show", methods={"GET"})
     */
    public function show(Signatures $signature): Response
    {
        return $this->render('signatures/show.html.twig', [
            'signature' => $signature,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="signatures_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Signatures $signature): Response
    {
        $form = $this->createForm(SignaturesType::class, $signature);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('signatures_index');
        }

        return $this->render('signatures/edit.html.twig', [
            'signature' => $signature,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="signatures_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Signatures $signature): Response
    {
        if ($this->isCsrfTokenValid('delete'.$signature->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($signature);
            $entityManager->flush();
        }

        return $this->redirectToRoute('signatures_index');
    }
}
