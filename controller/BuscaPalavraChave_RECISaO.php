<?php

$inicio1 = microtime(true);


header('Content-type: text/html; charset=UTF-8');


/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 * https://www.aficionados.com.br/frases-star-wars/
 */
include '../controller/DB.php';

include '../scripts/funcao.php';
//qual é a cor do sabre que o yoda usa?
//    yoda usa sabre de qual cor?
//    o sabre que o yoda usa tem qual cor?
echo $txt = "o que é o Darth Vader";

$txt = nomes($txt);


error_reporting(E_ALL);
print "<br> " . substr_count(stopwords($txt), " ") . "<br>";
echo stopwords($txt), '';
print "<br> " . substr_count(trim(stopwords($txt)), " ") . "<br><br><br>Resposta: <br><br>";



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
echo $NovaFrase;
echo '<br><br><Br>';
$ComMais = Amais($NovaFrase);
echo $ComMais . "<br><Br>";
//====
echo $sqlFullText = "SELECT (LEVENSHTEIN_RATIO('$NovaFrase', `keyword`)) as maior ,
    pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, 
    MATCH (keyword) AGAINST ('$ComMais' IN BOOLEAN MODE) AS score, r.resposta as resultado 
    FROM `keywords` k 
    inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
    inner JOIN resposta r ON pk.resposta_id = r.id
    WHERE MATCH (keyword) AGAINST ('($ComMais)' IN BOOLEAN MODE) and k.valida = 1 ORDER BY `maior` DESC limit 1
         ;";
echo '<br>br<br>';
//=============================================================================
$resultFullText = mysqli_query($conn, $sqlFullText);
//$resultLevel = mysqli_query($conn, $sqlLevel);
//==========================================================================
if (mysqli_num_rows($resultFullText) > 0)
{
    // $linhalevel = mysqli_fetch_assoc($resultLevel);
    $linhaFull = mysqli_fetch_assoc($resultFullText);
//=============================================================================
//=============================================================================
    $keyword2 = $linhaFull['keyword'];
    $resposta2 = $linhaFull['resultado'];
    $proximidade2 = $linhaFull['score'];
    $Pergunta2 = $linhaFull['pergunta'];
    $idPregunta2 = $linhaFull['chave'];
}
else
{
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
echo "<br><Br><Br><Br>"
 . "Analize probalitica<br>"
 . "Full Text; $proximidade2<br>"
 . "%: $Pergunta2<br>";
$ip = get_client_ip();

if ($proximidade2 == 0)
{
    echo " ";
}
else if ($proximidade2 <= 0.09)
{
    echo ' ';
}
else if ($proximidade2 >= 3)
{

    $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" .
            trim(stopwords((strip_tags(($NovaFrase)))))
            .
            "',1,'$ip',$idPregunta2);";
    echo $sql3;
    echo "<br>4<br>";


    echo $resposta2;

    ///===========================================================
}
else if ($proximidade2 > 1)
{
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
}
else if ($proximidade2 > 0)
{

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
}
else
{
    echo ' ';
}



















$total1 = microtime(true) - $inicio1;
echo '<br><br>Tempo de execução do primeiro script: ' . $total1;




















































///
echo '<br><br><Br><br><br><br>Cruu<br>';









//trim pra limpar escesso de espaços no começo e no fim da frase
if (substr_count(trim($NovaFrase), " ") <= 1)
{
    echo '<br>String pesquisada: ' . $NovaFrase . "<br>";
    //mostra resposta
    echo $sql89 = "SELECT `nome`,valor,dado,
      LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) as textDif
      FROM `personagem`  p
      inner JOIN valor v ON p.id_personagem = v.personagem_id_personagem 
      WHERE  LEVENSHTEIN_RATIO('$NovaFrase', `nome` ) > 77 and valor = 'Resumo Sobre'";

    $result8 = mysqli_query($conn, $sql89);
    if (mysqli_num_rows($result8) > 0)
    {
        $linha8 = mysqli_fetch_assoc($result8);

        $nome = $linha8['nome'];
        $valor = $linha8['valor'];
        $dado = $linha8['dado'];
        $score = $linha8['textDif'];
    }
    else
    {

        $nome = 'nome';
        $valor = 'valor';
        $dado = 'dado';
        $score = 'textDif';
    }
    echo "<br>envia resposta \$resposta =  $nome é $dado" .
    //casdastra a pergunta
    '<br>cadastra: ' . $txt .
    '<br>score: ' . $score
    ;
}
else
{
    //fAZER a busca pelo full text e porcent
    // $NovaFrase = Amais($NovaFrase);


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

include '../controller/DB.php';
echo $sqlLevel = "SELECT k.keyword, r.resposta as resultado,pk.pergunta_key as pergunta,pk.idpergunta_keyworks as chave, 
        LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) as textDiff 
            FROM `keywords` k 
            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks
            inner JOIN resposta r ON pk.resposta_id = r.id
            where k.valida = 1 and  LEVENSHTEIN_RATIO( '$NovaFrase', `keyword` ) > 48
            ORDER BY `textDiff` DESC
        Limit 1 ;
       ";
echo '<br><br><Br>';
$NovaFrase = stopwords($NovaFrase);
$ComMais = Amais($NovaFrase);

echo $sqlFullText = "SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, MATCH (keyword) AGAINST ('$ComMais' IN BOOLEAN MODE) AS score, 
    r.resposta as resultado
        FROM `keywords` k  
        inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
        inner JOIN resposta r ON pk.resposta_id = r.id 
        WHERE MATCH (keyword) AGAINST ('$ComMais' IN BOOLEAN MODE) and k.valida = 1
           ;";


$resultFullText = mysqli_query($conn, $sqlFullText);
$resultLevel = mysqli_query($conn, $sqlLevel);


if (mysqli_num_rows($resultFullText) > 0 and mysqli_num_rows($resultLevel) > 0)
{
    $linhalevel = mysqli_fetch_assoc($resultLevel);
    $linhaFull = mysqli_fetch_assoc($resultFullText);

    $keyword = $linhalevel['keyword'];
    $resposta = $linhalevel['resultado'];
    $proximidade = $linhalevel['textDiff'];
    $Pergunta = $linhalevel['pergunta'];
    $idPregunta = $linhalevel['chave'];
    ;


    $keyword2 = $linhaFull['keyword'];
    $resposta2 = $linhaFull['resultado'];
    $proximidade2 = $linhaFull['score'];
    $Pergunta2 = $linhaFull['pergunta'];
    $idPregunta2 = $linhaFull['chave'];
}
else
{
    $keyword = '';
    $idPregunta = '';
    $resposta = '';
    $proximidade = '0';
    $Pergunta = '';


    $keyword2 = '';
    $idPregunta2 = '';
    $resposta2 = '';
    $proximidade2 = '0';
    $Pergunta2 = '';
}
echo "<br><Br><Br><Br>"
 . "Analize probalitica<br>"
 . "Full Text; $proximidade2<br>"
 . "%: $proximidade<br>";
if ($proximidade >= 100)
{
    echo "<br><br><br>alpha   Palavras chave: $keyword<br>
    Resposta: $resposta<br>
    Proximidade: $proximidade<br>
    Pergunta: $Pergunta
<br><br><br>         ";
}
else if ($proximidade >= 85)
{

    echo "<br><br><br>1   Palavras chave: $keyword<br>
    Resposta: $resposta<br>
    Proximidade: $proximidade<br>
    Pergunta: $Pergunta
<br><br><br>         ";
}
else if ($proximidade2 >= 3.0 && $proximidade >= 70)
{
    echo "2Palavras chave: $keyword2<br>
    Resposta: $resposta2<br>
    Proximidade: $proximidade2<br>
    Pergunta: $Pergunta2
            <br><br>        ";
}
else if (($Pergunta == $Pergunta2) && $proximidade >= 71 && $proximidade2 >= 2.2)
{
    echo "3Palavras chave: $keyword2<br>
    Resposta: $resposta2<br>
    Proximidade: $proximidade2<br>
    Pergunta: $Pergunta2
            <br><br>        ";
}
else if (($Pergunta == $Pergunta2) && $proximidade2 >= 8)
{
    echo "3,5 Palavras chave: $keyword2<br>
    Resposta: $resposta2<br>
    Proximidade: $proximidade2<br>
    Pergunta: $Pergunta2
            <br><br>        ";
}
else if (($Pergunta == $Pergunta2) && $proximidade2 >= 1 && ($proximidade > 47 && $proximidade < 71))
{

    echo "3Palavras chave: $keyword2<br>
    Resposta: \$resposta2<br>
    Proximidade: \$proximidade2<br>
    Pergunta: $Pergunta2
            <br><br>
                
        <p>Você quis dizer:  $Pergunta2?</p>
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
}
else if ($proximidade2 > 2.5)
{

    echo "3Palavras chave: $keyword2<br>
    Resposta: \$resposta2<br>
    Proximidade: \$proximidade2<br>
    Pergunta: $Pergunta2
            <br><br>
                
        <p>Você quis dizer:  $Pergunta2?</p>
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
}
else if ($proximidade == 0 || $proximidade2 == 0)
{
    echo "4FAILL";
}
else if ($proximidade2 <= 0.009)
{
    echo '5 ';
}
else if ($proximidade < 50)
{
    echo '6 ';
}
else
{
    echo '7';
}
include './BuscasModulo3.php';
/*
  SELECT id, body, MATCH (body) AGAINST

  ('Security implications of running MySQL as root') AS score
  FROM articles WHERE MATCH (title,body) AGAINST
  ('Security implications of running MySQL as root');



 */


////2
//        'Kit Fisto  Yarael Poof 
//        Plo        'Koon '
//'Ki-Adi-Mundi',
//'Darth 'Malak
//Darth 'Krayt 
//Wicket Deej
//Onaconda Farr
//    Chanceler Valorum
//Ahsoka Tano
//    Eeth 'Koth '
//        Ponda 
//        'Shaak 'Ti 
//        'Peixe-garra 'Luminara 'Unduli 'Kabe'
////3
//        'Rey Finn '
//        'Poe Dameron '
//        'Jyn Erso'
//        'Cassian Andor'

$personagem = array();

echo "<br><br><br><br><br><br>";
for ($i = 0; $i < count($personagem); $i++)
{

    echo "
O $personagem[$i] tem sabre de qual cor?<br>
qual a cor do sabre do $personagem[$i]<br>
Qual a cor do sabre de luz de $personagem[$i]?<br>
qual é a arma do $personagem[$i]?<br>
Você sabe qual a arma de escolha de $personagem[$i]?<br>
o $personagem[$i] usa sabre?<br>


qual a idade $personagem[$i] tem?<br>
qual a idade $personagem[$i] ?<br>
quantos anos tem $personagem[$i]  ?<br>
Quem foi o primeiro aprendiz de $personagem[$i]?<br>
Com quantos anos morreu $personagem[$i]?<br>


quando morreu $personagem[$i]?<br>
Com quantos anos morreu $personagem[$i]?<br>

quem foi que matou $personagem[$i]?<br>
    
O que acha do $personagem[$i]?<br>
    
o que é o $personagem[$i] ?<br>
me fale sobre $personagem[$i]? <br>
quem foi $personagem[$i]?<br>
quem é $personagem[$i]? <br>


Qual o nome da mãe de $personagem[$i]?<br>
Quem são os parentes do $personagem[$i]? <br>
Quem é o pai do $personagem[$i]? <br>

Quem não foi treinado por $personagem[$i]?<br>
$personagem[$i] foi treinado por quem?<br>
quem treinou $personagem[$i]?<br>

Qual é o planeta natal de $personagem[$i]?<br>
Qual o planeta natal do $personagem[$i]?<br>
    

qual a frase marcante de $personagem[$i]?<br>

qual filme aprece $personagem[$i]?<br>
qual epidodio aparece $personagem[$i]?<br>


qual a raça $personagem[$i]?<br>
qual a especie $personagem[$i]?<br>
    

Qual ator interpretou $personagem[$i]?<br>
$personagem[$i] foi inter pretado por quem?<Br>
       ";
}    