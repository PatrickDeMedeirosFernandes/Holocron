<?php

set_time_limit("1000");

/**
 * função que funiona para pegar alguma respota padrã, ele recebe a frase do usuario para cadastrar no banco de dados
 * @return string retorna uma resposta padrão
 */
function BuscaDefaut($text) {

    include '../controller/DB.php';
    // $SAIDA = '';
    $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, `resposta`, `ip`, `resposta_pergunta` FROM `perg_sem_resp` p
       where    p.pergunta = '$text';";
    $result2 = $conn->query($sql);
    if ($result2->num_rows > 0) {
        $alfa = false;
    } else {
        $alfa = true;
    }
//    echo $sql;
    if ($alfa == true) {
        $ip = get_client_ip();
        $query2 = "INSERT INTO `perg_sem_resp`(`pergunta`, `ip`) 
             VALUES ('$text', '$ip')";
//    echo $query2;

        if (mysqli_query($conn, $query2)) {
            $id = rand(1, 2);
            $sql = "SELECT `id_defaut`, `pergunta`, `resposta` FROM `defaut` where id_defaut = $id ;";
            $result = mysqli_query($conn, $sql);
            $linha = mysqli_fetch_assoc($result);
            //echo $sql;
            $aa = $linha['resposta'];
            $text = $aa;
        } else {
            $text = "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
        }
    } else {
        $id = rand(1, 2);
        $sql = "SELECT `id_defaut`, `pergunta`, `resposta` FROM `defaut` where id_defaut = $id ;";
        $result = mysqli_query($conn, $sql);
        $linha = mysqli_fetch_assoc($result);
        //echo $sql;
        $aa = $linha['resposta'];
        $text = $aa;
    }

    return $text;
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
