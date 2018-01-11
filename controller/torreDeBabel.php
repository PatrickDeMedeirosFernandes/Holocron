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
        $saida = ' ';
        if (BuscaConcreta($text) != ' ') {
            $saida = BuscaConcreta($text);
        } else if (BuscaSimilar($text) != ' ') {
            $saida = BuscaSimilar($text);
        }
        //else if (AI($text) != ' ') {
        //RETURN ai($text);
        //}
        ELSE {
            $saida = BuscaDefaut($text);
        }
        return $saida;
    }
    $resposta1 = pergunta($text);
    $respostaATT = saldacao($resposta1);
    $torre = "<p class='chatlog'><B>Você: </B> " . $_POST['nome'] . "&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> " . $respostaATT . "&nbsp;</p>";
}