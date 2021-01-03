<?php $this->title = "Accueil"; ?>

<?php include('header.php');?> 

        <?= $this->session->show('add_article'); ?>
        <?= $this->session->show('edit_article'); ?>
        <?= $this->session->show('delete_article'); ?>

        <p class="boutonadd" ><a class="btnadd"  href="../public/index.php?route=addArticle">Nouvel article</a></p>


        <?php
        foreach ($articles as $article) { 
        ?>

        <div class="articles">


            <h2><?php echo $article->getTitle(); ?></h2>
            <p><?php echo $article->getContent(); ?></p>
            <p>Publié le : <?php echo $article->getCreatedAt(); ?></p>
           <p class="bouton" > <a class="btna" href="../public/index.php?route=article&articleId=<?php echo $article->getId(); ?>">Lire la suite</a></p>
            
        </div>
        <?php
        
        }

        ?>
        
    </body>
</html>