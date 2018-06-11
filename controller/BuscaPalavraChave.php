<?php

/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
include '../scripts/funcao.php';
echo $txt = "o que são stormtrooperso";

$txt = nomes($txt);



print "<br> " . substr_count(stopwords($txt), " ") . "<br>";

echo stopwords($txt);

print "<br> " . substr_count(trim(stopwords($txt)), " ") . "<br>";



//verificação e eliminação de stopwords
$NovaFrase = stopwords($txt);


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
    '<br>envia resposta $resposta = $linha[dado]' .
    //casdastra a pergunta
    '<br>cadastra: ' . $txt;
} else {
    //fAZER a busca pelo full text e porcent
    $NovaFrase = str_ireplace("não", '+não', $NovaFrase);


    echo "<br><br>
        SELECT k.keyword, k.valida,($NovaFrase') AS score,r.resposta as resultado  <br>
        FROM `keywords` k  <br>
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks <br>
        inner JOIN resposta r ON pk.resposta_id = r.id <br>
        WHERE MATCH (keyword) AGAINST ('$NovaFrase');";
}


$NovaFrase = str_ireplace("+não", 'não', $NovaFrase);

include './BuscasModulo3.php';
/*
 SELECT id, body, MATCH (body) AGAINST
 
             ('Security implications of running MySQL as root') AS score
    FROM articles WHERE MATCH (title,body) AGAINST
    ('Security implications of running MySQL as root');
 

   
 */


