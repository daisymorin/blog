<?php $this->title = "Nouvel article"; ?>

<?php include('header.php');?> 


<div class= "insert">

    <form method="post" action="../public/index.php?route=addArticle">

    <p>
   <label for="title">Titre</label><br>
    <input type="text" id="title" name="title">
    </p>

    <p>
    <label for="content">Résumé</label><br>
    <textarea class="content2" id="content" name="content"></textarea>
    </p>

    <p>
    <label for="resumeDetail">Résumé Detaillé</label><br>
         <textarea id="resumeDetail" name="resumeDetail"></textarea>
    </p>

    <input type="submit" value="Envoyer" id="submit" name="submit">

    </form>

    <p class="bouton3"> <a class="btnaccueil" href="../public/index.php">Retour à l'accueil</a>

</div>

