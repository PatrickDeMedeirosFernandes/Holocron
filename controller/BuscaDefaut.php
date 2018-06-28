
<?php

//set_time_limit("1000");

/**
 * função que funiona para pegar alguma resposta padrã, ele recebe a frase do usuario para cadastrar no banco de dados
 * @return string retorna uma resposta padrão
 */
function BuscaDefaut($text, $alfa = true) {

    include '../controller/DB.php';
//    include '../scripts/funcao.php';
    // $SAIDA = '';
    //echo $sql."oi";
    if ($alfa == true) {
        $ip = get_client_ip();
        $query2 = " INSERT INTO `pergunta_keyworks`(`pergunta_key`, `valida`, `quem_fez`) 
                VALUES ('$text',1,'$ip')";
        $result4 = mysqli_query($conn, $query2);
        //   mysqli_query($conn, $query2);
        $resp2 = mysqli_insert_id($conn);
        $sql3 = "INSERT INTO `keywords`(`keyword`, `valida`, `quem_fez`, `pergunta_keyworks`) 
                                VALUES (" . "'" .
                trim(stopwords($text))
                .
                "',1,'$ip',$resp2   );";
        //    echo $sql3;
        $resulttt = mysqli_query($conn, $sql3);
//    //echo $query2;
        if ($resulttt == true) {
            $id = rand(1, 2);
            $sql = "SELECT `id_defaut`, `pergunta`, `resposta` FROM `defaut` where id_defaut = $id ;";
            $result = mysqli_query($conn, $sql);
            $linha = mysqli_fetch_assoc($result);
            //echo $sql;
            $text = $linha['resposta'];
        } else {
            $id = rand(1, 2);
            $sql = "SELECT `id_defaut`, `pergunta`, `resposta` FROM `defaut` where id_defaut = $id ;";
            $result = mysqli_query($conn, $sql);
            $linha = mysqli_fetch_assoc($result);
            //echo $sql;
            $text = $linha['resposta'];
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
