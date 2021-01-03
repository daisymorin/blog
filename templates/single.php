<?php $this->title = "Article"; ?>

<?php include('header.php');?> 

    <div class="article">
        <h2><?php echo $article->getTitle(); ?></h2>
        <p>Publié le : <?php echo $article->getCreatedAt(); ?></p>
        <p><?php echo $article->getResumedetail(); ?></p>
   
    <div class="btn">
    <p class="bouton" ><a class="btnupdate" href="../public/index.php?route=editArticle&articleId=<?= $article->getId(); ?>">Modifier</a></p>
    <p class="bouton2" > <a  class="btndelete"href="../public/index.php?route=deleteArticle&articleId=<?= $article->getId(); ?>">Supprimer</a></p>
    <p class="bouton2"> <a  class="btnaccueil" href="../public/index.php">Retour à l'accueil</a></p>
    </div>
    </div>
    </body>
</html>