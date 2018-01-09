<?php

include '../controller/funcao.php';
include '../controller/DB.php';
include '../controller/BuscasModulo1.php';
include '../controller/BuscasModulo2.php';
include '../controller/BuscaDefaut.php';
if (isset($_POST['nome'])) {
    $text = nomes(strip_tags(htmlspecialchars($_POST['nome'])));
    function pergunta($text) {
//camada 1
        if (BuscaConcreta($text) != ' ') {
            return BuscaConcreta($text);
            
            
        }elseif (BuscaSimilar($text) != ' ') {
            return BuscaSimilar($text);
        }
        
        
        ELSE {
            return BuscaDefaut($text);
        }
        return $text;
    }

    $resposta1 = pergunta($text);
    $respostaATT = saldacao($resposta1);
    $torre = "<p class='chatlog'><B>Você: </B> " . $_POST['nome'] . "&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> " . $respostaATT . "&nbsp;</p>";
}