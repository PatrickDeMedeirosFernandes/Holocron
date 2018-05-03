Quero saber [..]
Gostaria de saber [..]
Qual é [..]
Qual é [..] do [..]
Quem é [..]
Quem foi [..]
qual foi [..]
me fale sobre [..]

Qual é o seu nome?
quantos anos voce tem?
voce gosta de suco?
qual é a sua cor preferida?
voce gosta de ler?
Como você chegou até aqui ?
Quem fez a lição ?
Onde você está ?
Por que está feliz ?
De onde vc está chegando ?

https://www.inbot.com.br/artigos/educacional/producao-de-sentidos-na-conversacao-com-chatterbots.pdf
http://www.professeurs.polymtl.ca/michel.gagnon/Disciplinas/Bac/IA/PLN/pln.html
https://www.inbot.com.br/artigos/educacional/producao-de-sentidos-na-conversacao-com-chatterbots.pdf
https://pt.stackoverflow.com/questions/141436/pegar-parte-de-uma-string-delimitada-entre-caracteres
<br><br><Br>

<?php
$tags = 'quem é Yoda?';
$termo = 'quem é';

$pattern = '/' . $termo . '/'; //Padrão a ser encontrado na string $tags
if (preg_match($pattern, $tags)) {
    echo 'Tag encontrada';
} else {
    echo 'Tag não encontrada';
}
?>
<br><br><br><br>

<?php
$tags = 'quem é Yoda?';
$tagsArray = explode(' ', $tags);
$termo = 'quem';

if (in_array($termo, $tagsArray)) {
    echo 'Tag encontrada';
} else {
    echo 'Tag não encontrada';
}
?>

<br><br><br><br>
<?php
$tags = 'canais,proteses,implantes';
$tagsArray = explode(',', $tags);
$termo = 'proteses';

$count = 0;
foreach ($tagsArray as $tag) {
    if ($tag == $termo) {
        $count++;
    }
}

if ($count > 0) {
    echo 'Tag encontrada';
} else {
    echo 'Tag não encontrada';
}

?>

<br><br><br><br>
<?php

$sel_cat = "Cine & Foto | Eletrônicos | Informática";
$categoria = 'Informática;' ;
if(eregi("[".$sel_cat."]", "$categoria"))
    {
    echo 'Tem';
    }
else
    {
    echo 'não tem';
    }

?>

<br><br><br><br>
<?php

//Para "pegar":
//Isso é para SOMENTE obter os dados entre "/", dessa forma irá conseguir obter "o que tiver" entre os "/". Você conseguirá também usa-los para substituir. Como o sua postagem diz que necessita de "$string" e também o "$retirado", essa seria melhor solução.

// Sua string:
$string = 'Lorem ipsum /dolor sit amet/, /consectetur/ /adipiscing elit/';

// Regex (leia o final para entender!):
$regrex = '/\/(.*?)\//';

// Usa o REGEX:
preg_match_all($regrex, $string, $resultado);
//Você obterá exatamente, na variável $resultado:

//array(2) {
//  [0]=>
//  array(2) {
//    [0]=> string(16) "/dolor sit amet/"
//    [1]=>
//    string(17) "/adipiscing elit/"
//  }
//  [1]=>
//  array(2) {
//    [0]=>string(14) "dolor sit amet"
//    [1]=> string(15) "adipiscing elit"
//  }
//}
//Portanto pode fazer um:

foreach($resultado[1] as $texto){
  echo $texto;
}
//Irá obter:
//
//dolor sit amet
//adipiscing elit
//Para remover:
//Usando o dado já obtido com o preg_match_all:
//
//Isso é útil caso tenha necessidade de obter o dado usando o preg_match_all, dessa forma apenas irá substituir aquilo que já possui!

$string = '<br><br><br><br>Lorem ipsum /dolor sit amet/, /consectetur/ /adipiscing elit/.<br><br>';

$resultado = str_replace($resultado[0], "", $string);

echo $resultado;

// Retorna:
//Lorem ipsum , consectetur .
//Usando o preg_replace:
//
//Essa solução não responde totalmente a pergunta, pois o autor exige o "$retirado"! Para outros casos, quando apenas há necessidade de substituir, sem obter nenhum dado, pode usar tal método.

$string = 'Lorem ipsum /dolor sit amet/, consectetur /adipiscing elit/.<br><br>';

$resultado = preg_replace('/\/(.*?)\//', "" , $string);

echo $resultado;
//
//// retorna:
//Lorem ipsum , consectetur .
//Sobre o REGEX:
//
//O Regex é o principal dessa função, portanto devo ao menos explicar minimamente.
//
///      Inicio do Regex!
//\/     Escapa o "/" ("encontre a "/")
//(.*?)  Obtenha qualquer caractere
//\/     Escapa o "/" ("encontre a "/")
///      Fim do Regex (como estamos com o preg_match_all seria o mesmo de /g)
//Dessa forma o REGEX executa algo como:
//
//Encontre a "/", obtenha qualquer coisa até encontrar a próxima "/", assim obtendo tudo que está entre as "/".