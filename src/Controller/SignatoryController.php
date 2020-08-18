<?php

namespace App\Controller;

use App\Entity\Cause;
use App\Entity\Signatory;
use App\Form\SignatoryType;
use App\Repository\SignatoriesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

/**
 * @Route("/signatory")
 */
class SignatoryController extends AbstractController
{
    /**
     * @Route("/", name="cs_index", methods={"GET"})
     */
    public function indexSignature(): Response
    {
        $causes = $this->getDoctrine()
            ->getRepository(Cause::class)
            ->findAll();

        return $this->render('signatory/cs-index.html.twig', [
            'causes' => $causes,
        ]);
    }
    /**
     * @Route("/", name="signatory_index", methods={"GET"})
     */
    public function index(): Response
    {
        $signatories = $this->getDoctrine()
            ->getRepository(Signatory::class)
            ->findAll();

        return $this->render('signatory/index.html.twig', [
            'signatories' => $signatories,
        ]);
    }

    /**
     * @Route("/new", name="signatory_new", methods={"GET","POST"})
     */
    public function new(Request $request): Response
    {
        $signatory = new Signatory();
//        $cause = $this->getDoctrine()->getRepository(Cause::class)->find(id);
        /**todo
         * pass value to form builder
         */
        $form = $this->createForm(SignatoryType::class, $signatory);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
//            $entityManager->setCause($cause);
            $entityManager->persist($signatory);
            $entityManager->flush();

            return $this->redirectToRoute('signatory_index');
        }

        return $this->render('signatory/new.html.twig', [
            'signatory' => $signatory,
//            'cause' => $cause,
            'form' => $form->createView()
        ]);
    }

    /**
     * @Route("/{id}", name="cs_show", methods={"GET","POST"})
     */
    public function showSignatures(int $id, Cause $cause, Request $request, SignatoriesRepository $signatoriesRepository): Response
    {
        $signatories = $signatoriesRepository->findAllByCauseId($id);
        $signatory = new Signatory();
        $signatory->setFkCause($id);

        $form = $this->createForm(SignatoryType::class, $signatory);
        $form->handleRequest($request);

//        if ($form->isSubmitted() && $form->isValid()) {
//            $entityManager = $this->getDoctrine()->getManager();
//            $entityManager->persist($signatory);
//            $entityManager->flush();
//
//            return $this->redirectToRoute('sign');
//        }

        return $this->render('signatory/index.html.twig', [
            'cause' => $cause,
            'signatory' => $signatory,
            'form' => $form->createView(),
            'signatories' => $signatories,
        ]);

    }

//    /**
//     * @Route("/{id}", name="signatory_show", methods={"GET"})
//     */
//    public function show(Signatory $signatory): Response
//    {
//        return $this->render('signatory/show.html.twig', [
//            'signatory' => $signatory,
//        ]);
//    }

    /**
     * @Route("/{id}/edit", name="signatory_edit", methods={"GET","POST"})
     */
    public function edit(Request $request, Signatory $signatory): Response
    {
        $form = $this->createForm(SignatoryType::class, $signatory);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $this->getDoctrine()->getManager()->flush();

            return $this->redirectToRoute('signatory_index');
        }

        return $this->render('signatory/edit.html.twig', [
            'signatory' => $signatory,
            'form' => $form->createView(),
        ]);
    }

    /**
     * @Route("/{id}", name="signatory_delete", methods={"DELETE"})
     */
    public function delete(Request $request, Signatory $signatory): Response
    {
        if ($this->isCsrfTokenValid('delete'.$signatory->getId(), $request->request->get('_token'))) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->remove($signatory);
            $entityManager->flush();
        }

        return $this->redirectToRoute('cs_index');
    }
}
