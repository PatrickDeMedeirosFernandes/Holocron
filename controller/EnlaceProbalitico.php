<?php

//include '../scripts/funcao.php';

function BuscaTermoPersonagem($NovaFrase) {
    include '../controller/DB.php';



    '<br>String pesquisada: ' . $NovaFrase . "<br>";
    //mostra resposta
    $sql89 = "SELECT `nome`,valor,dado,
      LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) as textDif
      FROM `personagem`  p
      inner JOIN valor v ON p.id_personagem = v.personagem_id_personagem 
      WHERE  LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) > 78 and valor = 'Resumo Sobre'"

    ;

    $result8 = mysqli_query($conn, $sql89);
    if (mysqli_num_rows($result8) > 0) {
        $linha8 = mysqli_fetch_assoc($result8);

        $nome = $linha8['nome'];
        $valor = $linha8['valor'];
        $dado = $linha8['dado'];
        $score = $linha8['textDif'];
        $SAIDA = $nome . " é " . $dado;
        return $SAIDA;
    } else {
        return $SAIDA = ' ';
    }
//    echo "<br>envia resposta \$resposta = $dado" .
//    //casdastra a pergunta
//    '<br>cadastra: ' . $txt .
//    '<br>score: ' . $score
//    ;

    return $SAIDA;
}

//======================================================================================================================
//======================================================================================================================
//======================================================================================================================
//======================================================================================================================
//======================================================================================================================
function buscaPorKeyWords() {
    //verificação e eliminação de stopwords
    $NovaFrase = trim(stopwords(rtrim(ltrim(trim($txt)))));
    
    include '../controller/DB.php';
    $sqlLevel = "SELECT k.keyword, r.resposta as resultado,pk.pergunta_key as pergunta,pk.idpergunta_keyworks as chave, 
        LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) as textDiff 
            FROM `keywords` k 
            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
            inner JOIN resposta r ON pk.resposta_id = r.id
            where k.valida = 1 and  LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) > 48
            ORDER BY `textDiff` DESC
        Limit 1 ;
       ";
    // echo '<br><br><Br>';
    $NovaFrase = Amais($NovaFrase);
//====
    $sqlFullText = "SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) AS score, 
    r.resposta as resultado
        FROM `keywords` k  
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
        inner JOIN resposta r ON pk.resposta_id = r.id 
        WHERE MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) and k.valida = 1
          order by k.keyword ;";
//=============================================================================
    $resultFullText = mysqli_query($conn, $sqlFullText);
    $resultLevel = mysqli_query($conn, $sqlLevel);
    //==========================================================================
    if (mysqli_num_rows($resultFullText) > 0 and mysqli_num_rows($resultLevel) > 0) {
        $linhalevel = mysqli_fetch_assoc($resultLevel);
        $linhaFull = mysqli_fetch_assoc($resultFullText);
//=============================================================================
        $keyword = $linhalevel['keyword'];
        $resposta = $linhalevel['resultado'];
        $proximidade = $linhalevel['textDiff'];
        $Pergunta = $linhalevel['pergunta'];
        $idPregunta = $linhalevel['chave'];
//=============================================================================
        $keyword2 = $linhaFull['keyword'];
        $resposta2 = $linhaFull['resultado'];
        $proximidade2 = $linhaFull['score'];
        $Pergunta2 = $linhaFull['pergunta'];
        $idPregunta2 = $linhaFull['chave'];
    } else {
        $keyword = '';
        $idPregunta = '';
        $resposta = '';
        $proximidade = '0';
        $Pergunta = '';
//=============================================================================
        $keyword2 = '';
        $idPregunta2 = '';
        $resposta2 = '';
        $proximidade2 = '0';
        $Pergunta2 = '';
    }
    //  echo "<br><Br><Br><Br>"
    // . "Analize probalitica<br>"
    //  . "Full Text; $proximidade2<br>"
    //  . "%: $proximidade<br>";
    if ($proximidade >= 100) {
        //    echo "<br><br><br>alpha   Palavras chave: $keyword<br>
        //    Resposta: $resposta<br>
        //    Proximidade: $proximidade<br>
        //    Pergunta: $Pergunta
        //    <br><br><br>         ";
        echo $resposta;
    } else if ($proximidade >= 85) {
        echo $resposta;
        //        echo "<br><br><br>1   Palavras chave: $keyword<br>
        //    Resposta: $resposta<br>
        //    Proximidade: $proximidade<br>
        //    Pergunta: $Pergunta
        //<br><br><br>         ";
    } else if ($proximidade2 >= 3.0 && $proximidade >= 70) {
        echo $resposta2;
        //        echo "2Palavras chave: $keyword2<br>
        //    Resposta: $resposta2<br>
        //    Proximidade: $proximidade2<br>
        //    Pergunta: $Pergunta2
        //            <br><br>        ";
    } else if (($Pergunta == $Pergunta2) && $proximidade >= 71 && $proximidade2 >= 2.2) {
//        echo "3Palavras chave: $keyword2<br>
//                    Resposta: $resposta2<br>
//                    Proximidade: $proximidade2<br>
//                    Pergunta: $Pergunta2
//                    <br><br>        ";
        echo $resposta2;
    } else if (($Pergunta == $Pergunta2) && $proximidade2 >= 8) {
//        echo "3,5 Palavras chave: $keyword2<br>
//                    Resposta: $resposta2<br>
//                    Proximidade: $proximidade2<br>
//                    Pergunta: $Pergunta2
//                            <br><br>        ";
        echo $resposta2;
    } else if (($Pergunta == $Pergunta2) && $proximidade2 > 1 && ($proximidade > 47 && $proximidade < 71)) {

        //        echo "3Palavras chave: $keyword2<br>
        //    Resposta: \$resposta2<br>
        //    Proximidade: \$proximidade2<br>
        //    Pergunta: $Pergunta2
        //            <br><br>
        //          ";      
        echo "<p>Você quis dizer:  $Pergunta2?</p>
                        <form method='post' action='controller/BuscaSimOuNao.php?d=1' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='$idPregunta2'>   
                            <input type='hidden' name='resp' value='SIM'>                
                            <input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='submit' name='submit' value='Sim'>
                        </form>

                        <form method = 'post' action = 'controller/BuscaSimOuNao.php?d=2' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='NULL'>
                            <input type='hidden' name='resp' value='NAO'>
                            <input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='submit' name='submit' value = 'Não'>
                        </form>";
    } else if ($proximidade == 0 || $proximidade2 == 0) {
        echo " ";
    } else if ($proximidade2 <= 0.09) {
        echo ' ';
    } else if ($proximidade <= 50) {
        echo ' ';
    } else {
        echo ' ';
    }
}
