<?php

include 'DB.php';

$xml = '<?xml version="1.0" encoding="utf-8"?>'
        . ' ';

// A raiz do meu documento XML
$xml .= '<links> '
        . '';




//BUSCA NA PRIEMIRA TABELA
$sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id FROM `pergunta` p
    LEFT JOIN resposta u ON p.resposta_pergunta = u.id
     ; ";

$result = $conn->query($sql);
if ($result->num_rows > 0) {
    while ($linha = $result->fetch_assoc()) {
        $xml .= '<Pergunta> ';
        $xml .= '';
        $xml .= '<perg>' . $linha['pergunta'] . '</perg>';
        $xml .= '';
        $xml .= '<resposta>' . $linha['resposta'] . '</resposta>';
        $xml .= '';
        $xml .= '<\Pergunta>';
    }
}

// Fechamento da raiz
$xml .= '</links>';

// Escreve o arquivo
$fp = fopen('templadesXML/Respostas_'. date("d-m-Y=H:M").'.xml', 'w+');
fwrite($fp, $xml);
fclose($fp);
