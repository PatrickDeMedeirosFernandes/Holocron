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
//        if (BuscaConcreta($text) != ' ') {
//            $saida = BuscaConcreta($text);

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
        //} 
        //else
            if (BuscaKey($text, 0) != ' ') {
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


if (isset($_POST['id_pegunta']) && isset($_POST['resp']) && isset($_POST['kayword']) && isset($_POST['Usuario']) && isset($_POST['resposta'])) {

    if ($_POST['id_pegunta'] != '' && $_POST['resp'] != '' && $_POST['Usuario'] != '' && $_POST['kayword'] != '' && $_POST['resposta'] != '') {

        $id_pegunta = $_POST['id_pegunta']; //        id_pegunta' value='$idPregunta2'>   
        $resp = $_POST['resp']; //            <input type='hidden' name='resp' value='SIM'>                
        $kayword = $_POST['kayword']; //                  <input type='hidden' name='kayword' value='$NovaFrase
        $Usuario = $_POST['Usuario'];//frase do usuario
        $resposta = $_POST['resposta'];//resposta para o usuario
        $ip = get_client_ip();

        if ($resp == 'SIM') {
            $bi = $Usuario;
            $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" .
                    trim(stopwords((strip_tags(($kayword)))))
                    .
                    "',1,'$ip',$id_pegunta);";
            //      echo $sql3;
            // echo "<br>";
            $result = mysqli_query($conn, $sql3);
            $respostaATT = "$resposta";
       
        } else if ($resp == 'NAO') {
            
            
            
            
            
            
            $bi = $Usuario;
            $respostaATT = "NÃO SEI O Q FAZER, NÃO TENHO RESPOSTA PRA ISSO";
        } else {
            $bi = $Usuario;
            $respostaATT = "Ainda não sei a sua pergunta.";
        }
    } else {
        $respostaATT = 'AO TENTAR BURGAR O SISTEMA VOCÊ SERÁ ELIMINADO';
    }
}
