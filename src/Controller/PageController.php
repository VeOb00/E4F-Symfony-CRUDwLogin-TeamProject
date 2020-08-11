<?php


namespace App\Controller;

use App\Entity\Business;
use App\Entity\Post;
use App\Entity\Signatures;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;


class PageController extends AbstractController
{
    /**
     * @Route("/", name="homepage", methods={"GET"})
     */
    public function showHome(): Response
    {
        $posts = $this->getDoctrine()
            ->getRepository(Post::class)
            ->findAll();

        return $this->render('pages/index.html.twig', [
            'posts' => $posts,
        ]);
    }

    /**
     * @Route("/news", name="news", methods={"GET"})
     */
    public function indexNews(): Response
    {
        $posts = $this->getDoctrine()
            ->getRepository(Post::class)
            ->findAll();

        return $this->render('pages/news.html.twig', [
            'posts' => $posts,
        ]);
    }

    /**
     * @Route("news/{id}", name="news_show", methods={"GET"})
     */
    public function showPost(Post $post): Response
    {
        return $this->render('pages/singlepages/showpost.html.twig', [
            'post' => $post,
        ]);
    }

    /**
     * @Route("/members", name="members", methods={"GET"})
     */
    public function indexBusiness(): Response
    {
        $businesses = $this->getDoctrine()
            ->getRepository(Business::class)
            ->findAll();

        return $this->render('pages/members.html.twig', [
            'businesses' => $businesses,
        ]);
    }

    /**
     * @Route("members/{id}", name="members_show", methods={"GET"})
     */
    public function showBusiness(Business $business): Response
    {
        return $this->render('pages/singlepages/showbusiness.html.twig', [
            'business' => $business,
        ]);
    }

    /**
     * @Route("/sign", name="sign", methods={"GET"})
     */
    public function indexSignature(): Response
    {
        $signatures = $this->getDoctrine()
            ->getRepository(Signatures::class)
            ->findAll();

        return $this->render('pages/signatures.html.twig', [
            'signatures' => $signatures,
        ]);
    }

    /**
     * @Route("/tips", name="tips", methods={"GET"})
     */
    public function showTips(): Response
    {
        return $this->render('pages/tips.html.twig');
    }

    /**
     * @Route("/about_us", name="about", methods={"GET"})
     */
    public function showAbout(): Response
    {
        return $this->render('pages/about.html.twig');
    }

    /**
     * @Route("/admin_panel", name="admin", methods={"GET"})
     */
    public function showAdmin(): Response
    {
        return $this->render('pages/admin.html.twig');
    }



}