<?php

//include '../scripts/funcao.php';

function BuscaTermoPersonagem($txt, $call = 0) {
    $call2 = $call;
    include '../controller/DB.php';
    $NovaFrase = $txt;
//mostra resposta
    $sql89 = "      
SELECT `nome`,dado,
      SOUNDEX('Darth Vader') as textDif, SOUNDEX(`nome`) as txt 
      FROM `personagem`  p
      inner JOIN valor v ON p.id_personagem = v.personagem_id_personagem 
      WHERE SOUNDEX(`nome`) = SOUNDEX('$NovaFrase')
      and valor = 'Resumo Sobre'";
    //echo $sql89;
    $result8 = mysqli_query($conn, $sql89);
    if (mysqli_num_rows($result8) > 0) {
        $linha8 = mysqli_fetch_assoc($result8);
        $nome = $linha8['nome'];
        $dado = $linha8['dado'];
        $SAIDA = $nome . ' é ' . $dado;
        //==================================================================
        if ($call2 == 0) {
            $sql = "INSERT INTO `resposta`(`resposta`)
                                VALUES (" . "'" . trim(strip_tags($SAIDA)) . "');";

            $sql3 = "SELECT id FROM `resposta` ORDER BY id DESC LIMIT 1";
            //echo $sql3;

echo 'aki estou';
            $resp = mysqli_insert_id($conn);

            $sql2 = "  INSERT INTO `pergunta_keyworks`(`pergunta_key`, `valida`, `quem_fez`, `resposta_id`)
                                VALUES (" . "'" . trim(nomes(strip_tags(($NovaFrase))))
                    . "',1,'SYSTEM',$resp);";


            //echo $sql2;
            $resp2 = mysqli_insert_id($conn);

            $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" . trim(stopwords(nomes(strip_tags($NovaFrase))))
                    . "',1,'SYSTEM',$resp2);";
            mysqli_query($conn, $sql);
            mysqli_query($conn, $sql2);
            mysqli_query($conn, $sql3);
        }
        //==================================================================
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

    if ($proximidade2 == 0) {
        return ' ';
    } else if ($proximidade2 <= 0.09) {
        return ' ';
    } else if ($proximidade2 >= 6.0) {
        //echo $proximidade;
        return $resposta2;
    } else if ($proximidade2 >= 3.0) {
        $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" .
                trim(stopwords((strip_tags(($NovaFrase)))))
                .
                "',1,'$ip',$idPregunta2);";
        //echo $sql3;
        //echo "<br>";
         mysqli_query($conn, $sql3);
        //echo $proximidade;
        return $resposta2;
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
