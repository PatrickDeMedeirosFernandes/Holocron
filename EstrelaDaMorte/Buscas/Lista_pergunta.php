<?php

/**
 * Lista resposta
 * @return type
 */
function resposta()
{
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
function resposta_Escolida($id)
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks`, `pergunta_key`, `valida`, `quem_fez`,
        `Ativador_de_conversa`, `resposta_id`, u.resposta,id            
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
    where u.id = $id
            order by idpergunta_keyworks";
    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista uma pergunta nativa unica
 * @param type $id
 * @return type
 */
function lista_pergunta_nativa_1($id)
{
    include '../controller/DB.php';
    $sql = " 
SELECT `idpergunta_keyworks`, `pergunta_key`, `valida`, `quem_fez`,
        `Ativador_de_conversa`, `resposta_id`, u.resposta,id            
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where p.idpergunta_keyworks = $id order by id;";
    // echo $sql;
    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas nativas
 * @return type
 */
function lista_pergunta_nativa()
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks`, `pergunta_key`, `valida`, `quem_fez`,
        `Ativador_de_conversa`, `resposta_id`, u.resposta,id            
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where  quem_fez ='SYSTEM'";

    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas nativas
 * @return type
 */
function lista_pergunta_nativa2($inicio, $total_reg)
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks`, `pergunta_key`, `valida`, `quem_fez`,
        `Ativador_de_conversa`, `resposta_id`, u.resposta,id            
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where  quem_fez ='SYSTEM'
     LIMIT $inicio,$total_reg";

    return mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas sem resposta
 * @return type
 */
function lista_pergunta_Sem_Resp()
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks` as id_perg_sem_resp, `pergunta_key` as pergunta, `valida`, `quem_fez` as ip,
        `Ativador_de_conversa`, `resposta_id`, u.resposta respostaReal, id  
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where  (quem_fez !='SYSTEM' and  u.resposta is null) or (quem_fez !='SYSTEM' and  u.resposta ='')
order by id_perg_sem_resp,u.resposta     
"
    ;
    //  echo $sql;
    return $result = mysqli_query($conn, $sql);
}

/**
 * lista uma pergunta sem resposta 
 * @param type $id
 * @return type
 */
function lista_pergunta_Sem_Resp_unica($id)
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks` as id_perg_sem_resp, `pergunta_key` as pergunta, `valida`, `quem_fez` as ip,
        `Ativador_de_conversa`, `resposta_id`, u.resposta respostaReal, id  
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
    where idpergunta_keyworks = $id 
order by u.resposta     
"
    ;

    //  echo $sql;
    return $result = mysqli_query($conn, $sql);
}

//======================= perguntas dos usuarios com resposta

function lista_pergunta_bot_user()
{
    include '../controller/DB.php';


    $sql = " 
SELECT `idpergunta_keyworks`, `pergunta_key` as pergunta, `valida`, `quem_fez` as ip,
        `Ativador_de_conversa`, `resposta_id`, u.resposta resposta, id  
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where  (quem_fez !='SYSTEM' and  u.resposta is not null) or (quem_fez !='SYSTEM' and  u.resposta !='')
order by idpergunta_keyworks,u.resposta     
"
    ;
    return $result = mysqli_query($conn, $sql);
}

function lista_pergunta_bot_user_invalidas()
{
    include '../controller/DB.php';

    $sql = " 
SELECT `idpergunta_keyworks` as id_perg_user, `pergunta_key` as pergunta, `valida`, `quem_fez` as ip,
        `Ativador_de_conversa`, `resposta_id`, u.resposta resposta, id  
    FROM `pergunta_keyworks` p 
    LEFT JOIN resposta u ON p.resposta_id = u.id 
     where  (quem_fez !='SYSTEM' and  u.resposta is not null and valida != 1) or (quem_fez !='SYSTEM' and  u.resposta !='' and valida != 1)
order by idpergunta_keyworks,u.resposta     
";
    return $result = mysqli_query($conn, $sql);
}

////////////////////////personagem
function lista_personagem()
{
    include '../controller/DB.php';

    $sql = "SELECT * FROM `personagem` 
 ";

    return $result1 = mysqli_query($conn, $sql);
}

function lista_personagem_Unico($id)
{
    include '../controller/DB.php';
    $sql = "SELECT * FROM `personagem` WHERE `id_personagem` = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}

function lista_personagem_dados($id)
{
    include '../controller/DB.php';

    $sql = "SELECT * FROM `valor` WHERE `personagem_id_personagem` = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}

function lista_dado_unico($id)
{
    include '../controller/DB.php';

    $sql = "SELECT `id_valor`, `valor`, `personagem_id_personagem`, `dado` FROM `valor` WHERE id_valor = $id
 ";

    return $result1 = mysqli_query($conn, $sql);
}

//=====================================================================
function lista_KeyWord()
{
    include '../controller/DB.php';

    $sql = " 
SELECT `id_key`, `pergunta_key`, p.`valida`, p.`quem_fez` ,`keyword`
     FROM keywords p 
     LEFT JOIN pergunta_keyworks u ON p.`pergunta_keyworks` = u.idpergunta_keyworks  ; ";

    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas nativas
 * @return type
 */
function lista_KeyWord2($inicio, $total_reg)
{
    include '../controller/DB.php';

    $sql = " 
SELECT `id_key`, `pergunta_key`, p.`valida`, p.`quem_fez` ,keyword
FROM keywords p LEFT JOIN pergunta_keyworks u ON p.`pergunta_keyworks` = u.idpergunta_keyworks
     LIMIT $inicio,$total_reg;";

    return mysqli_query($conn, $sql);
}

//=====================================================================
//=====================================================================
//=====================================================================
function lista_dicionario()
{
    include '../controller/DB.php';

    $sql = " 
 SELECT d.`texto`,u.expressao ,idexpressoes FROM `dicionario` d 
            LEFT JOIN expressoes u 
            ON d.`expressoes_idexpressoes` = u.idexpressoes   ";

    return $result1 = mysqli_query($conn, $sql);
}

/**
 * lista todas as perguntas nativas
 * @return type
 */
function lista_dicionario2($inicio, $total_reg)
{
    include '../controller/DB.php';

    $sql = " 
 SELECT d.`texto`,u.expressao ,idexpressoes FROM `dicionario` d 
            LEFT JOIN expressoes u 
            ON d.`expressoes_idexpressoes` = u.idexpressoes 
     LIMIT $inicio,$total_reg;";

    return mysqli_query($conn, $sql);
}
