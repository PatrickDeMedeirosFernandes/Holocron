<?php




function BuscaDeRespostaPLN($text) {
    header('Content-Type: text/html; charset=utf-8');
    $ddo = '';
// Example 1
    $pizza = $text; // "QUAL É O NOME VERDADEIRO DE Darth Vader e Darth Sirius";
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
    SELECT *
    FROM personagem
    INNER JOIN valor 
    ON personagem.id_personagem = valor.personagem_id_personagem
    where
    personagem.nome like '%$um%' and valor.valor like '%$ddo%' or 
    personagem.nome like '%$um%' and valor.valor like '%$ddo' or 
    personagem.nome like '%$um%' and valor.valor like '$ddo%' or 
            
    personagem.nome like '%$um'  and valor.valor like '$ddo%' or 
    personagem.nome like '%$um'  and valor.valor like '%$ddo%' or 
    personagem.nome like '%$um'  and valor.valor like '%$ddo' or 

    personagem.nome like '$um%'  and valor.valor like '%$ddo%' or 
    personagem.nome like '$um%'  and valor.valor like '$ddo%' or 
    personagem.nome like '$um%'  and valor.valor like '%$ddo' or 

    personagem.nome like '%$dois%' and valor.valor like '%$ddo%' or 
    personagem.nome like '%$dois%' and valor.valor like '$ddo%' or 
    personagem.nome like '%$dois%' and valor.valor like '%$ddo' or 

    personagem.nome like '%$dois'  and valor.valor like '%$ddo%' or 
    personagem.nome like '%$dois'  and valor.valor like '%$ddo' or 
    personagem.nome like '%$dois'  and valor.valor like '$ddo%' or 
     
    personagem.nome like '$dois%' and valor.valor like '%$ddo%' or 
    personagem.nome like '$dois%' and valor.valor like '$ddo%' or 
    personagem.nome like '$dois%' and valor.valor like '%$ddo' ";
            ECHO ($sql);
        } else {
                 $sql = "Busca:      
    SELECT *
    FROM personagem
    INNER JOIN valor 
    ON personagem.id_personagem = valor.personagem_id_personagem
    where
    personagem.nome like '%$um%' and valor.valor like '%$ddo%' or 
    personagem.nome like '%$um%' and valor.valor like '%$ddo' or 
    personagem.nome like '%$um%' and valor.valor like '$ddo%' or 
            
    personagem.nome like '%$um'  and valor.valor like '$ddo%' or 
    personagem.nome like '%$um'  and valor.valor like '%$ddo%' or 
    personagem.nome like '%$um'  and valor.valor like '%$ddo' or 

    personagem.nome like '$um%'  and valor.valor like '%$ddo%' or 
    personagem.nome like '$um%'  and valor.valor like '$ddo%' or 
    personagem.nome like '$um%'  and valor.valor like '%$ddo'; "; 
        }
    }
}

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
        
        O $ddo de $um é %linha[dado1] e de $dois é %linha[dado2];


";
