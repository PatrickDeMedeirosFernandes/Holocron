<?php

include '../controller/funcao.php';
include '../controller/DB.php';
include '../controller/BuscasModulo1.php';

if (isset($_POST['nome'])) {


    $text = nomes(strip_tags(htmlspecialchars($_POST['nome'])));

//echo $text;


    function pergunta($text) {
//camada 1

        if (BuscaConcreta($text) != '') {
            return $text;
        }ELSE{
            return '';
        }











        return $text;
    }       


    $torre ="<p class='chatlog'><B>Você: </B> ". $text . "&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> ".   pergunta($text)."&nbsp;</p>";
}