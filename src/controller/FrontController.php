<?php

namespace App\src\controller;

class FrontController extends Controller {

    public function home() {
        $articles = $this->articleDAO->getArticles();
        return $this->view->render('home', [
            'articles' => $articles
        ]);
    }
    
    public function article($articleId){
        $article = $this->articleDAO->getOneArticle($articleId);
        return $this->view->render('single', [
            'article' => $article
        ]);
    }
}