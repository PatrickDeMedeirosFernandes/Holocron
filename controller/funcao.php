<?php

/**
 * 
 * @param type $str  a linha que vai ser moadificada
 * @return type  o valor corrigido
 * trazer a lista de expressoes a serem corrigidas
 */
function nomes($str) {
include './DB.php';

    $sql = " SELECT ``, `` FROM `` ;";
    $result = $conecta->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
           $aa= $linha[''];
            $bb=$linha[''];
          $str = str_replace("$aa", "$bb", $str);
        }
    }
    return $str;
}