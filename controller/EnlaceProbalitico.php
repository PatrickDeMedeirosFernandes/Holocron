<?php

//include '../scripts/funcao.php';

function BuscaTermoPersonagem($txt) {
    include '../controller/DB.php';
    $NovaFrase = $txt;
//mostra resposta
    $sql89 = "SELECT `nome`,dado,
      LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) as textDif
      FROM `personagem`  p
      inner JOIN valor v ON p.id_personagem = v.personagem_id_personagem 
      WHERE  LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) > 78 and valor = 'Resumo Sobre'";
    $result8 = mysqli_query($conn, $sql89);
    if (mysqli_num_rows($result8) > 0) {
        $linha8 = mysqli_fetch_assoc($result8);
        $nome = $linha8['nome'];
        $dado = $linha8['dado'];
        $SAIDA = $nome . ' é ' . $dado;
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
function buscaPorKeyWords($txt, $txt2) {

    include '../controller/DB.php';
    $NovaFrase = $txt;
    $text = $txt2;
    $ComMais = Amais($NovaFrase);
    $ip = get_client_ip();

    //echo $ComMais . "<br><Br>";
//verificação e eliminação de stopwords
//    $sqlLevel = "SELECT k.keyword, r.resposta as resultado,pk.pergunta_key as pergunta,pk.idpergunta_keyworks as chave, 
//        LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) as textDiff 
//            FROM `keywords` k 
//            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
//            inner JOIN resposta r ON pk.resposta_id = r.id
//            where k.valida = 1 and  LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) > 48
//            ORDER BY `textDiff` DESC
//        Limit 1 ;
//       ";
//===
    $sqlFullText = "SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, MATCH (keyword) AGAINST ('$ComMais' IN BOOLEAN MODE) AS score, 
    r.resposta as resultado
        FROM `keywords` k  
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
        inner JOIN resposta r ON pk.resposta_id = r.id 
        WHERE MATCH (keyword) AGAINST ('($ComMais)' IN BOOLEAN MODE) and k.valida = 1;";
    
//=============================================================================
    $resultFullText = mysqli_query($conn, $sqlFullText);
    //$resultLevel = mysqli_query($conn, $sqlLevel);
//==========================================================================
    if (mysqli_num_rows($resultFullText) > 0) {
    //    $linhalevel = mysqli_fetch_assoc($resultLevel);
        $linhaFull = mysqli_fetch_assoc($resultFullText);
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

    if ( $proximidade2 == 0) {
        return ' ';
    } else if ($proximidade2 <= 0.09) {
        return ' ';
    } else if ($proximidade2 >= 3.0) {

        $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" .
                trim(stopwords((strip_tags(($NovaFrase)))))
                .
                "',1,'$ip',$idPregunta2);";
        //echo $sql3;
        //echo "<br>";
        $resulttt = mysqli_query($conn, $sql3);
        //echo $proximidade;
        return $resposta2;
    }else if ( $proximidade2 > 1 ) {
        return "<p>Você quis dizer:  $Pergunta2?</p>
                        <form method='post' action='' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='$idPregunta2'>   
                            <input type='hidden' name='resp' value='SIM'>  
                            <input type='hidden' name='Usuario' value='$text'>  
                            <input type='hidden' name='resposta' value='$resposta2'>

<input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='submit' name='submit' value='Sim'>
                        </form>
                        <form method = 'post' action='' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='NULL'>
                            <input type='hidden' name='resp' value='NAO'>
                            <input type='hidden' name='Usuario' value='$text'>  
                            <input type='hidden' name='resposta' value='$resposta2'>

<input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='submit' name='submit' value = 'Não'>
                        </form>";
    } else if ($proximidade2 > 0) {
        return "<p>Você quis dizer:  $Pergunta2?</p>
                        <form method='post' action='' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='$idPregunta2'>   
                            <input type='hidden' name='resp' value='SIM'>                
                            <input type='hidden' name='Usuario' value='$text'>  
                                                            <input type='hidden' name='resposta' value='$resposta2'>

                            <input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='submit' name='submit' value='Sim'>
                        </form>
                        <form method = 'post' action='' style='float:left'>
                            <input type='hidden' name='id_pegunta' value='NULL'>
                            <input type='hidden' name='resp' value='NAO'>
                            <input type='hidden' name='Usuario' value='$text'>  
                            <input type='hidden' name='kayword' value='$NovaFrase'>
                            <input type='hidden' name='resposta' value='$resposta2'>
                            
<input type='submit' name='submit' value = 'Não'>
                        </form>";
    } else {
        return ' ';
    }
}
