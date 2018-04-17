<?php

/**
 * Lista resposta
 * @return type
 */
function resposta() {
    include '../controller/DB.php';
    $sql = "SELECT DISTINCT(resposta) as resposta, `id` FROM `resposta` order by resposta";
    //  echo $sql;
    return $result1 = mysqli_query($conn, $sql);
}

/**
 * 
 * @param type $id
 * @return type
 */
function resposta_Escolida($id) {
    include '../controller/DB.php';

    $sql = " SELECT id_pergunta, `pergunta`,`valida` ,u.resposta, id
    FROM `pergunta` p LEFT JOIN resposta u ON p.resposta_pergunta = u.id 
    where u.id = $id"
            . "order by resposta";
    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista uma pergunta nativa unica
 * @param type $id
 * @return type
 */
function lista_pergunta_nativa_1($id) {
    include '../controller/DB.php';

    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id FROM `pergunta` p
    LEFT JOIN resposta u ON p.resposta_pergunta = u.id
    where p.id_pergunta = $id order by resposta;
 ";
    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas nativas
 * @return type
 */
function lista_pergunta_nativa() {
    include '../controller/DB.php';

    $sql = "SELECT `id_pergunta`,  `pergunta`,`valida` ,u.resposta FROM `pergunta` p
    LEFT JOIN resposta u ON p.resposta_pergunta = u.id order by resposta
 ";

    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas sem resposta
 * @return type
 */
function lista_pergunta_Sem_Resp() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita, `ip`, u.resposta as respostaReal 
    FROM `perg_sem_resp` p
    LEFT JOIN resposta u ON p.resposta_pergunta = u.id order by u.resposta
 ";
    return $result = mysqli_query($conn, $sql);
}

/**
 * lista uma pergunta sem resposta 
 * @param type $id
 * @return type
 */
function lista_pergunta_Sem_Resp_unica($id) {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita, `ip`, u.resposta as respostaReal 
    FROM `perg_sem_resp` p
    LEFT JOIN resposta u ON p.resposta_pergunta = u.id 
    where id_perg_sem_resp = $id
    order by u.resposta
";
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user_unica($id) {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
    FROM `perg_user` p
    LEFT JOIN resposta u ON p.resposta_perg_user = u.id 
    where id_perg_user =$id
order by resposta
 ";
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
    FROM `perg_user` p
    LEFT JOIN resposta u ON p.resposta_perg_user = u.id 
order by resposta
 ";
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user_invalidas() {
    include '../controller/DB.php';

    $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
    FROM `perg_user` p
    LEFT JOIN resposta u ON p.resposta_perg_user = u.id 
    order by valida;
 ";
    return $result = mysqli_query($conn, $sql);
}

////////////////////////personagem
function lista_personagem() {
    include '../controller/DB.php';

    $sql = "SELECT * FROM `personagem` 
 ";

    return $result1 = mysqli_query($conn, $sql);
}


function lista_personagem_Unico($id) {
    include '../controller/DB.php';
    $sql = "SELECT * FROM `personagem` WHERE `id_personagem` = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}

function lista_personagem_dados($id) {
    include '../controller/DB.php';

    $sql = "SELECT * FROM `valor` WHERE `personagem_id_personagem` = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}


function lista_dado_unico($id) {
    include '../controller/DB.php';

    $sql = "SELECT `id_valor`, `valor`, `personagem_id_personagem`, `dado` FROM `valor` WHERE id_valor = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}
