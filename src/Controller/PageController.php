<?php


namespace App\Controller;

use App\Entity\Business;
use App\Entity\Cause;
use App\Entity\Post;
use App\Entity\Signatory;
use App\Form\SignatoryType;
use App\Repository\PostRepository;
use App\Repository\SignatoriesRepository;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
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
     * @Route("/news", name="news", methods={"GET","POST"})
     */
    public function indexNews(PostRepository $postsRepository): Response
    {
        $type = 'news';
        $postNews = $postsRepository->findAllByType($type);
        $type = 'strike';
        $postStrike = $postsRepository->findAllByType($type);


        return $this->render('pages/news.html.twig', [
            'postNews' => $postNews,
            'postStrike' => $postStrike,
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
        $causes = $this->getDoctrine()
            ->getRepository(Cause::class)
            ->findAll();

        return $this->render('pages/signatures.html.twig', [
            'causes' => $causes,
        ]);
    }

    /**
     * @Route("sign/{id}", name="sign_show", methods={"GET","POST"})
     */
    public function showSignatures(int $id, Cause $cause, Request $request, SignatoriesRepository $signatoriesRepository): Response
    {
        $signatories = $signatoriesRepository->findAllByCauseId($id);
        $signatory = new Signatory();
        $signatory->setFkCause($id);

        $form = $this->createForm(SignatoryType::class, $signatory);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager = $this->getDoctrine()->getManager();
            $entityManager->persist($signatory);
            $entityManager->flush();

            return $this->redirectToRoute('sign');
        }

        return $this->render('pages/singlepages/showsignatures.html.twig', [
            'cause' => $cause,
            'signatory' => $signatory,
            'form' => $form->createView(),
            'signatories' => $signatories,
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


    /**
     * @Route("posts/{type}", name="post_type", methods={"GET"})
     */
    public function filterEvents(string $type, PostRepository $postsRepository): Response
    {

        $posts = $postsRepository->findAllByType($type);
        $postTypes = $postsRepository->findAllByType('type');

        return $this->render('pages/story.html.twig', [
            'posts' => $posts,
            'postTypes' => $postTypes
        ]);
    }

    /**
     * @Route("/posts/story/{id}", name="story_show", methods={"GET"})
     */
    public function showStory(Post $post): Response
    {
        return $this->render('pages/singlepages/showsinglesuccessstory.html.twig', [
            'post' => $post,
        ]);
    }
}