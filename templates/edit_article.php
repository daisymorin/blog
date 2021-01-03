<?php $this->title = "Modifier l'article"; ?>

<?php include('header.php');?> 

<div class="update">

    <form method="post" action="../public/index.php?route=editArticle&articleId=<?php echo $article->getId(); ?>">

        <p>
        <label for="title">Titre</label><br>
        <input type="text" id="title" name="title" value="<?php echo $article->getTitle(); ?>">
        </p>

        <p>
        <label for="content">Resumé</label><br>
        <textarea class="content2" id="content" name="content"><?php echo $article->getContent(); ?></textarea>
        </p>

        <p>
        <label for="resumeDetail">Résumé detaillé</label><br>
        <textarea id="resumeDetail" name="resumeDetail"><?php echo $article->getResumeDetail(); ?></textarea>
        </p>

        <input type="submit" value="Mettre à jour" id="submit" name="submit">

    </form>

    <p class="bouton3"> <a class="btnaccueil" href="../public/index.php">Retour à l'accueil</a></p>

</div>