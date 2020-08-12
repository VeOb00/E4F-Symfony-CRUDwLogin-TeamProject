<?php

namespace App\Controller;

use App\Entity\Cause;
use App\Form\CauseType;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/cause")
 */
class CauseController extends AbstractController
{
    /**
     * @Route("/", name="cause_index", methods={"GET"})
     */
    public function index(): Response
    {
        $causes = $this->getDoctrine()
            ->getRepository(Cause::class)
            ->findAll();

        return $this->render('cause/index.html.twig', [
            'causes' => $causes,
        ]);
    }

    /**
     * @Route("/new", name="cause_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $cause = new Cause();
        $form = $this->createForm(CauseType::class, $cause);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($cause);
            $entityManager->flush();

            return $this->redirectToRoute('cause_index');
        }

        return $this->render('cause/new.html.twig', [
            'cause' => $cause,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="cause_show", methods={"GET"})
     */
    public function show(Cause $cause): Response
    {
        return $this->render('cause/show.html.twig', [
            'cause' => $cause,
        ]);
    }

    /**
     * @Route("/{id}/edit", name="cause_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Cause $cause): Response
    {
        $form = $this->createForm(CauseType::class, $cause);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('cause_index');
        }

        return $this->render('cause/edit.html.twig', [
            'cause' => $cause,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="cause_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Cause $cause): Response
    {
        if ($this->isCsrfTokenValid('delete'.$cause->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($cause);
            $entityManager->flush();
        }

        return $this->redirectToRoute('cause_index');
    }
}
