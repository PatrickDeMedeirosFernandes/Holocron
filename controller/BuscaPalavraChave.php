<?php header('Content-type: text/html; charset=UTF-8'); ?>
<?php
include '../controller/EnlaceProbalitico.php';

/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
function BuscaKey($text, $time2 = 0) {
    if (isset($time2)) {
        $time = $time2;
    } else {
        $time = 0;
    }

    include '../controller/DB.php';
    $SAIDA = '';
    $i = 0;

    $NovaFrase = trim(stopwords(rtrim(ltrim(trim($text)))));


//trim pra limpar escesso de espaços no começo e no fim da frase
    if (substr_count(trim($NovaFrase), " ") <= 1) {
//pesquisar diretamente na tabela sobre o personagem
        if (BuscaTermoPersonagem($NovaFrase) != ' ') {
            return BuscaTermoPersonagem($NovaFrase);
        } else {
            return " ";
        }
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
//=====================================================================================================
    } else {
//fAZER a busca pelo full text e porcent
        $NovaFrase = str_ireplace("não", '+não', $NovaFrase);

//busca por porcentagem
        $sql = "SELECT k.keyword, r.resposta as resultado,pk.pergunta_key as pergunta,     pk.idpergunta_keyworks as link, 
        LEVENSHTEIN_RATIO('$NovaFrase', `keyword` ) as textDiff 
            FROM `keywords` k 
            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
            inner JOIN resposta r ON pk.resposta_id = r.id
            where k.valida = 1
            ORDER BY `textDiff` DESC
        Limit 1 ;
       ";
        $result3 = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result3) > 0) {
            $linha8 = mysqli_fetch_assoc($result3);

            $link = $linha8['link'];
            $keyword = $linha8['keyword'];
            $resposta = $linha8['resultado'];
            $proximidade = $linha8['textDiff'];
            $Pergunta = $linha8['pergunta'];
        }
///////////Busca por full text
        $sql = "SELECT pk.pergunta_key as pergunta, k.keyword, 
        pk.idpergunta_keyworks as link, 
        MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) AS score, 
        r.resposta as resultado
            FROM `keywords` k  
            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
            inner JOIN resposta r ON pk.resposta_id = r.id 
            WHERE MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) and k.valida = 1
        Limit 1;";
        $result3 = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result3) > 0) {
            $linha8 = mysqli_fetch_assoc($result3);

            $link2 = $linha8['link'];
            $keyword2 = $linha8['keyword'];
            $resposta2 = $linha8['resultado'];
            $proximidade2 = $linha8['score'];
            $Pergunta2 = $linha8['pergunta'];
        }


        echo "Palavras chave: $keyword<br>
    Resposta: $resposta<br>
        Proximidade: $proximidade<br>
                    Pergunta: $Pergunta


<br><br><br>         ";
        echo "Palavras chave: $keyword2<br>
    Resposta: $resposta2<br>
        Proximidade: $proximidade2<br>
             Pergunta: $Pergunta2
            <br><br>        ";


//protocolo armagedom em caso de morete use isso
        ?>


        if(Caiu não pra baixo nem pra cima) {
        Você quis dizer $Pergunta2
        <form method = "post" action = "controller/BuscaSimOuNao.php?d=1">
            <input type="hidden" name="id_pegunta" value="$link2">
            <input type="hidden" name="kayword" value="$keyword2">
            <input type = "submit" name = "submit" value = "Sim">
        </form>

        <form method = "post" action = "controller/BuscaSimOuNao.php?d=2">
            <input type="hidden" name="id_pegunta" value="NULL">
            <input type="hidden" name="kayword" value="$keyword2">
            <input type = "submit" name = "submit" value = "Não">
        </form>
        }

        <?php
    }
}

/*
  SELECT id, body, MATCH (body) AGAINST

  ('Security implications of running MySQL as root') AS score
  FROM articles WHERE MATCH (title,body) AGAINST
  ('Security implications of running MySQL as root');



 */
