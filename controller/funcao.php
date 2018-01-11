<?php

/**
 * Função dicionario, serve para limpar vicios, termos, girias de linguagem
 * @param type $str  a linha que vai ser moadificada
 * @return type  o valor corrigido
 * trazer a lista de expressoes a serem corrigidas
 */
function nomes($str) {
    include '../controller/DB.php';
    $sql = "SELECT `expressao`, `significado` FROM `dicionario`  ;";
    $result = $conn->query($sql);
    $str = str_replace("-", "", $str);
    $str = str_replace("\"", "\\\"", $str);
    $str = str_replace("'", "\'", $str);
//LIMPA ESPAÇOS EXTRAS
    $str = preg_replace('/\s\s+/', ' ', $str);
//coloca tudo em minusculo
    // $str = strtolower($str);
//tira o ?
    $str = trim($str, '? ');
//tira o !
    $str = trim($str, '! ');
//tira o .
    $str = trim($str, '. ');
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            $aa = $linha['expressao'];
            $bb = $linha['significado'];
            $str = str_replace("$aa", "$bb", $str);
        }
    }
    return $str;
}

/**
 * metodo não implmentado
 * @param type $str
 * @return type
 */
function saldacao($str) {
    return $str;
}
