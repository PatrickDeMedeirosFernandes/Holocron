<?php

set_time_limit("1000");

/**
 * função que funiona para pegar alguma respota padrão
 * @return string retorna uma resposta padrão
 */
function BuscaDefaut($text) {
    include '../controller/DB.php';
    $SAIDA = '';
    $ip = get_client_ip();

    $query2 = "INSERT INTO `perg_sem_resp`(`pergunta`, `ip`) 
             VALUES ('$text', '$ip')";

    if (mysqli_query($conn, $query2)) {
        $id = rand(1, 1);
        //BUSCA NA PRIEMIRA TABELA
        $sql = "SELECT `id_defaut`, `pergunta`, `resposta` FROM `defaut` where id = $id ;";
        $result = $conn->query($sql);
        if ($result->num_rows > 0) {
            while ($linha = $result->fetch_assoc()) {
                $aa = $linha['resposta'];
                $SAIDA = $aa;
            }
        }
    } else {
        $SAIDA = "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
    }
    return $SAIDA;
}

function get_client_ip() {
    $ipaddress = '';
    if (isset($_SERVER['HTTP_CLIENT_IP']))
        $ipaddress = $_SERVER['HTTP_CLIENT_IP'];
    else if (isset($_SERVER['HTTP_X_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED_FOR'];
    else if (isset($_SERVER['HTTP_X_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_X_FORWARDED'];
    else if (isset($_SERVER['HTTP_FORWARDED_FOR']))
        $ipaddress = $_SERVER['HTTP_FORWARDED_FOR'];
    else if (isset($_SERVER['HTTP_FORWARDED']))
        $ipaddress = $_SERVER['HTTP_FORWARDED'];
    else if (isset($_SERVER['REMOTE_ADDR']))
        $ipaddress = $_SERVER['REMOTE_ADDR'];
    else
        $ipaddress = 'UNKNOWN';
    return $ipaddress;
}
