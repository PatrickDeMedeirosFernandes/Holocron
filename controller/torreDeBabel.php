<?php

$respostaATT = "Olá tudo bem? <br>
        Vamos conversar sobre Star Wars?";
include '../scripts/funcao.php';
include '../controller/DB.php';
include '../controller/BuscasModulo1.php';
include '../controller/BuscasModulo2.php';
include '../controller/BuscasModulo2Soundex.php';
include '../controller/BuscaDefaut.php';
if (isset($_POST['nome'])) {
    $text = nomes(strip_tags(htmlspecialchars($_POST['nome'])));

    function pergunta($text) {
//camada 1
        $saida = ' ';
        if (BuscaConcreta($text) != ' ') {
            $saida = BuscaConcreta($text);
            

        } else if (BuscaSimilarSoundex($text) != ' ') {
            $saida = BuscaSimilarSoundex($text);
            
                     

       }
        else if (BuscaSimilar($text, 1) != ' ') {
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
}
?> 
