<?php header('Content-type: text/html; charset=UTF-8'); ?>
<?php

/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
include '../controller/DB.php';

include '../scripts/funcao.php';
echo $txt = "qual a cor do sabre do  Yoda";

$txt = nomes($txt);



print "<br> " . substr_count(stopwords($txt), " ") . "<br>";

echo stopwords($txt);

print "<br> " . substr_count(trim(stopwords($txt)), " ") . "<br>";



//verificação e eliminação de stopwords
$NovaFrase = stopwords(rtrim(ltrim(trim($txt))));


//trim pra limpar escesso de espaços no começo e no fim da frase
if (substr_count(trim($NovaFrase), " ") <= 1) {
    //pesquisar diretamente na tabela sobre o personagem
    echo

    '<br>String pesquisada: ' . $NovaFrase .
    //mostra resposta
    '<br>PESQUISA:<br>
        SELECT `nome`,valor,dado FROM `personagem`  p<br>
          inner JOIN valor v ON p.id_personagem = v.personagem_id_personagem <br>
          where nome = > 70% <br>
and valor == "sobre"<br>
            
            ' .
    " " .
    '<br>envia resposta $resposta = $linha[dado]' .
    //casdastra a pergunta
    '<br>cadastra: ' . $txt;
} else {
    //fAZER a busca pelo full text e porcent
    $NovaFrase = str_ireplace("não", '+não', $NovaFrase);


    echo "<br><br>
        SELECT k.keyword, k.valida,MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) AS score,r.resposta as resultado  <br>
        FROM `keywords` k  <br>
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks <br>
        inner JOIN resposta r ON pk.resposta_id = r.id <br>
        WHERE MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE)
            Limit 1; <br><br>
            

SELECT k.keyword, k.valida,r.resposta as resultado, <br>
LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) as textDiff <br>
    FROM `keywords` k <br>
    inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks<br>
    inner JOIN resposta r ON pk.resposta_id = r.id<br>
    ORDER BY `textDiff` DESC<br>
Limit 1 
           ;";
}


$NovaFrase = str_ireplace("+não", 'não', $NovaFrase);

echo "<br><br><br>Separar<br><BR>";

include '../controller/DB.php';
$sql = "SELECT k.keyword, k.valida,r.resposta as resultado,pk.pergunta_key as pergunta,
LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) as textDiff 
    FROM `keywords` k 
    inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
    inner JOIN resposta r ON pk.resposta_id = r.id
    ORDER BY `textDiff` DESC
Limit 1 ;


 


       ";
$result3 = mysqli_query($conn, $sql);
if (mysqli_num_rows($result3) > 0) {
    $linha8 = mysqli_fetch_assoc($result3);

    $keyword = $linha8['keyword'];
    $valida = $linha8['valida'];
    $resposta = $linha8['resultado'];
    $proximidade = $linha8['textDiff'];
    $Pergunta = $linha8['pergunta'];
} else {
    $keyword = '';
    $valida = '';
    $resposta = '';
    $proximidade = '';
    $Pergunta = '';
}




$sql = "SELECT pk.pergunta_key as pergunta,k.keyword, k.valida,MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE) AS score, 
    r.resposta as resultado
        FROM `keywords` k  
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
        inner JOIN resposta r ON pk.resposta_id = r.id 
        WHERE MATCH (keyword) AGAINST ('$NovaFrase' IN BOOLEAN MODE)
            Limit 1;";



$result3 = mysqli_query($conn, $sql);
if (mysqli_num_rows($result3) > 0) {
    $linha8 = mysqli_fetch_assoc($result3);

    $keyword2 = $linha8['keyword'];
    $valida2 = $linha8['valida'];
    $resposta2 = $linha8['resultado'];
    $proximidade2 = $linha8['score'];
    $Pergunta2 = $linha8['pergunta'];
} else {
    $keyword2 = '';
    $valida2 = '';
    $resposta2 = '';
    $proximidade2 = '';
    $Pergunta2 = '';
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


include './BuscasModulo3.php';
/*
  SELECT id, body, MATCH (body) AGAINST

  ('Security implications of running MySQL as root') AS score
  FROM articles WHERE MATCH (title,body) AGAINST
  ('Security implications of running MySQL as root');



 */




$personagem = "Darth Vader";

echo "<br><br><br><br><br><br>


       qual a cor do sabre do $personagem<br>
qual a idade $personagem <br>
quantos anos tem $personagem  <br>
quando morreu $personagem<br>
Qual a cor do sabre de luz de $personagem?<br>
qual a cor do sabre do $personagem?<br>
qual a idade $personagem?<br>
quantos anos tem $personagem?<br>
quando morreu $personagem?<br>
quem foi que matou $personagem?<br>
O que acha do $personagem?<br>
quem foi $personagem?<br>
Você sabe qual a arma de escolha de $personagem?<br>
Qual o nome da mãe de $personagem?<br>
Quem não foi treinado por $personagem?<br>
Com quantos anos morreu $personagem?<br>
Qual o planeta natal dos $personagem?<br>
Com quantos anos morreu $personagem?<br>
Quem foi o primeiro aprendiz de $personagem?<br>
Qual é o planeta natal de $personagem?<br>

        

        
       ";
