<?php

function resposta() {
    include '../controller/DB.php';

    $sql = " SELECT `id`, `resposta` FROM `respota`";
    return $result1 = mysqli_query($conn, $sql);
}

function resposta_Escolida($id) {
    include '../controller/DB.php';

    $sql = " SELECT id_pergunta, `pergunta`,`valida` ,u.resposta, id
    FROM `pergunta` p LEFT JOIN respota u ON p.resposta_pergunta = u.id where u.id = $id";
    return $result1 = mysqli_query($conn, $sql);
}

function lista_pergunta_nativa_1($id) {
    include '../controller/DB.php';

    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id FROM `pergunta` p
    LEFT JOIN respota u ON p.resposta_pergunta = u.id
    where p.id_pergunta = $id;
 ";
    return $result1 = mysqli_query($conn, $sql);
}

function lista_pergunta_nativa() {
    include '../controller/DB.php';

    $sql = "SELECT `id_pergunta`,  `pergunta`,`valida` ,u.resposta FROM `pergunta` p
    LEFT JOIN respota u ON p.resposta_pergunta = u.id
 ";

    return $result1 = mysqli_query($conn, $sql);
}

function lista_pergunta_Sem_Resp() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita, `ip`, u.resposta as respotaReal 
    FROM `perg_sem_resp` p
    LEFT JOIN respota u ON p.resposta_pergunta = u.id 

 ";
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
    FROM `perg_user` p
    LEFT JOIN respota u ON p.respota_perg_user = u.id 

 ";
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user_invalidas() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
    FROM `perg_user` p
    LEFT JOIN respota u ON p.respota_perg_user = u.id 
    where valida = 0;

 ";
    return $result = mysqli_query($conn, $sql);
}
