<?php


$text ="QUAL É O NOME VERDADEIRO DE Darth Vader e Darth Sirius";

//function BuscaDeRespostaPLN($text) {
    header('Content-Type: text/html; charset=utf-8');
    $ddo = '';
// Example 1
    $pizza = $text; // "QUAL É O NOME VERDADEIRO DE Darth Vader ";
    echo "Envio:" . $pizza . "<br><br>";

    $pieces = explode(" ", $pizza);
    
    
    if ($pieces[0] == "QUAL") {
        $pizza2 = limpa($pizza);
        $pieces2 = explode(" de ", $pizza2);
        $ddo = trim($pieces2[0]);
        $pieces2[1];
        $pieces3 = explode(" e ", $pieces2[1]);
        $result = count($pieces3);
        list ($um, $dois) = $pieces3;
        $um = trim($um);
        $dois = trim($dois);
        IF(isset($dois)) {

            $sql = "Busca:      
    <br>SELECT *
    <br>FROM personagem
    <br>INNER JOIN valor 
    <br>ON personagem.id_personagem = valor.personagem_id_personagem
    <br>where
    <br>personagem.nome like '%$um%' and valor.valor like '%$ddo%' or 
    <br>personagem.nome like '%$um%' and valor.valor like '%$ddo' or 
    <br>personagem.nome like '%$um%' and valor.valor like '$ddo%' or 
            
    <br>personagem.nome like '%$um'  and valor.valor like '$ddo%' or 
<br>    personagem.nome like '%$um'  and valor.valor like '%$ddo%' or 
    <br>personagem.nome like '%$um'  and valor.valor like '%$ddo' or 
<br>
<br>    personagem.nome like '$um%'  and valor.valor like '%$ddo%' or 
<br>    personagem.nome like '$um%'  and valor.valor like '$ddo%' or 
<br>    personagem.nome like '$um%'  and valor.valor like '%$ddo' ; ";
            ECHO ($sql);
        } else {
                 $sql = "Busca:      
<br>    SELECT *
<br>    FROM personagem
<br>    INNER JOIN valor 
<br>    ON personagem.id_personagem = valor.personagem_id_personagem
<br>    where
<br>    personagem.nome like '%$um%' and valor.valor like '%$ddo%' or 
<br>    personagem.nome like '%$um%' and valor.valor like '%$ddo' or 
<br>    personagem.nome like '%$um%' and valor.valor like '$ddo%' or 
<br>            <br>
<br>    personagem.nome like '%$um'  and valor.valor like '$ddo%' or 
<br>    personagem.nome like '%$um'  and valor.valor like '%$ddo%' or 
<br>    personagem.nome like '%$um'  and valor.valor like '%$ddo' or 
<br>
<br>    personagem.nome like '$um%'  and valor.valor like '%$ddo%' or 
<br>    personagem.nome like '$um%'  and valor.valor like '$ddo%' or 
<br>    personagem.nome like '$um%'  and valor.valor like '%$ddo'; "; 
        }
    }
// }

function limpa($string) {
    $string = mb_strtolower($string, 'UTF-8'); //strtolower($string);
    $string = str_replace("É ", " ", $string);
    $string = str_replace("é ", " ", $string);

    $string = str_replace(" o ", " ", $string);
    $string = str_replace(" a ", " ", $string);
    $string = str_replace("qual ", " ", $string);
    return $string;
}

echo "<br><br>
        Resposta: 
        
        O $ddo de $um é %linha[dado1];


";
