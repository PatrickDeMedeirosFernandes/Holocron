<?php

/**
 * 
 * @param type $str  a linha que vai ser moadificada
 * @return type  o valor corrigido
 * trazer a lista de expressoes a serem corrigidas
 */
function nomes($str) {
include '../controller/DB.php';

    $sql = "SELECT `expressao`, `significado` FROM `dicionario`  ;";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
           $aa= $linha['expressao'];
            $bb=$linha['significado'];
          $str = str_replace("$aa", "$bb", $str);
        }
    }
    return $str;
}