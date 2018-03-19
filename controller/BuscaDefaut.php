<?php

//set_time_limit("1000");

/**
 * função que funiona para pegar alguma respota padrã, ele recebe a frase do usuario para cadastrar no banco de dados
 * @return string retorna uma resposta padrão
 */
function BuscaDefaut($text) {

    include '../controller/DB.php';
    // $SAIDA = '';
        $alfa = true;
    //echo $sql."oi";
    if ($alfa == true) {
        $ip = get_client_ip();
        $query2 = "INSERT INTO `perg_sem_resp`(`pergunta`, `ip`) 
             VALUES ('$text', '$ip')";
//    //echo $query2;

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