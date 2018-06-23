<?php

$respostaATT = "Olá tudo bem? <br>
        Vamos conversar sobre Star Wars?";
include '../scripts/funcao.php';
include '../controller/DB.php';
include '../controller/BuscasModulo1.php';
//include '../controller/BuscasModulo2.php';
//include '../controller/BuscasModulo2Soundex.php';
include '../controller/BuscaPalavraChave.php';
include '../controller/BuscaDefaut.php';


if (isset($_POST['nome'])) {
    $text = trim(nomes(strip_tags(htmlspecialchars(trim($_POST['nome'])))));

    function pergunta($text) {
//camada 1
        $saida = ' ';
        if (BuscaConcreta($text) != ' ') {
            $saida = BuscaConcreta($text);

            // ECHO "<SCRIPT>ALERT('1')</SCRIPT>";
//            
//        } else if (BuscaSimilarSoundex($text) != ' ') {
//            $saida = BuscaSimilarSoundex($text);
////            
////                     
//
//       }
//        else if (BuscaSimilar($text) != ' ') {
//            $saida = BuscaSimilar($text);
//             //           ECHO "<SCRIPT>ALERT('2')</SCRIPT>";
//
//            
//            
        } else if (BuscaKey($text, 0) != ' ') {
            $saida = BuscaKey($text);
//            
//                     
//        else if (AI($text) != ' ') {
//        RETURN ai($text);
        } ELSE {
            //         ECHO "<SCRIPT>ALERT('3')</SCRIPT>";

            $saida = BuscaDefaut($text, true);
        }
        return $saida;
    }

    $resposta1 = pergunta($text);
    $respostaATT = saldacao($resposta1);
}


if (isset($_POST['id_pegunta']) && isset($_POST['resp']) && isset($_POST['kayword']) && isset($_POST['Usuario'])) {

    if ($_POST['id_pegunta'] != '' && $_POST['resp'] != '' && $_POST['Usuario'] != '' && $_POST['kayword'] != '') {
 
        $id_pegunta = $_POST['id_pegunta']; //        id_pegunta' value='$idPregunta2'>   
        $resp = $_POST['resp']; //            <input type='hidden' name='resp' value='SIM'>                
        $kayword = $_POST['kayword']; //                  <input type='hidden' name='kayword' value='$NovaFrase
        $Usuario =  $_POST['Usuario'];

 $bi =$Usuario;
        $respostaATT = "$id_pegunta  $resp  $kayword";
    } else {
        $respostaATT = 'AO TENTAR BURGAR O SISTEMA VOCÊ SERÁ ELIMINADO';
        
    }
}
