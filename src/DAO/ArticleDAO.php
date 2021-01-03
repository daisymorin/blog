<?php

namespace App\src\DAO;

use App\config\Parameter;
use App\src\model\Article;


class ArticleDAO extends DAO{

    private function buildObject($row)
    {
        $article = new Article();
        $article->setId($row['id_articles']);
        $article->setTitle($row['nameArticles']);
        $article->setContent($row['resumeArticles']);
        $article->setResumedetail($row['resumeDetaille']);
        $article->setCreatedAt($row['dateArticles']);
        return $article;
    }

    // Affiches les articles
    public function getArticles() {
    
        $sql = "SELECT * FROM Articles 
                 ORDER BY id_articles DESC";
        $result = $this->createQuery($sql);
       
        $articles = [];
        foreach ($result as $row){
            $articleId = $row['id_articles'];
            $articles[$articleId] = $this->buildObject($row);
        }
       
        $result->closeCursor();
        return $articles;
    }

    // Affiche un seule article
   public function getOneArticle($articleId) {
         $sql = "SELECT  * FROM Articles 
                 WHERE id_articles = ?";
         $result = $this->createQuery($sql, [$articleId]);
         $article = $result->fetch();
        $result->closeCursor();
        return $this->buildObject($article);
   }

   // Ajoute un article
   public function addArticle(Parameter $post){

        //Permet de récupérer les variables $title, $content, $resumeDetail
        //extract($article);
         $sql = "INSERT INTO Articles (nameArticles, resumeArticles, resumeDetaille, dateArticles) 
                VALUES (?, ?, ?, NOW())";
         $this->createQuery($sql, [$post->get('title'), $post->get('content'), $post->get('resumeDetail')]);
         
   }

   // Modifie un article
   public function editArticle(Parameter $post, $articleId){
        $sql = "UPDATE Articles SET nameArticles=:title, resumeArticles=:content, resumeDetaille=:resumeDetail
                 WHERE id_articles=:articleId";
        
        $this->createQuery($sql, [
            'title' => $post->get('title'),
            'content' => $post->get('content'),
            'resumeDetail' => $post->get('resumeDetail'),
            'articleId' => $articleId
        ]);

   }

   // Supprime un article
   public function deleteArticle($articleId) {
       $sql = "DELETE FROM Articles WHERE id_articles = ?";
       $this->createQuery($sql, [$articleId]);
   }
}