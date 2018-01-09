<?PHP

set_time_limit("1000");

function BuscaSimilar($text) {
    include '../controller/DB.php';
    $SAIDA = '';

    //BUSCA NA PRIEMIRA TABELA
    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id,
     LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff
     FROM `pergunta` p 
     LEFT JOIN respota u ON p.resposta_pergunta = u.id 
     HAVING AVG(textDiff) > 70 and max(textDiff) 
     ORDER BY `textDiff` DESC";
    echo $sql;
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            
            $bb = $linha['id'];
            $aa = $linha['resposta'];
            $SAIDA = $aa;
            $quary4 = "INSERT INTO `perg_user`(`pergunta`, `valida`, `respota_perg_user`) 
                    VALUES('$text',1,'$bb');";
            echo $quary4;

            if (mysqli_query($conn, $quary4)) {
                
            } else {
                $SAIDA .= "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
            }
        }
    } else {
        
    }








//https://www.google.com.br/search?ei=4n9TWsC5LoSUwgTb0Iv4Ag&q=wallpaper+full+hd+star+wars&oq=wallpaper+full+hd+st&gs_l=psy-ab.1.1.0l2j0i22i30k1l8.1382.1680.0.3407.2.2.0.0.0.0.189.355.0j2.2.0....0...1c.1.64.psy-ab..0.2.354...0i67k1.0.O4hITv21Jb8
//https://gist.github.com/Kovah/df90d336478a47d869b9683766cff718
    //https://stackoverflow.com/questions/4671378/levenshtein-mysql-php

    return $SAIDA;
}

/**
 * ele faz uma analise da frase que vai que foi enviada e busca no banco de dados alguma pergunta que seja igual a pergunta informada,
 *  e enviar uma resposta caso essa tenha no banco de dados
 * @param type $text aqui ele recebe a frase em forma de string
 * @return string retorna a resposta caso tenha no banco de dados senhão envia vazio ==> ''
 */
function BuscaConcreta5($text) {
    include '../controller/DB.php';
    $SAIDA = '';

    //BUSCA NA PRIEMIRA TABELA
    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id FROM `pergunta` p
    LEFT JOIN respota u ON p.resposta_pergunta = u.id
    where p.pergunta = '$text' ;";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            $aa = $linha['resposta'];
            $SAIDA = $aa;
        }
    } else {
//BUSCA NA SEGUNDA TABALE
        $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
                FROM `perg_user` p
                LEFT JOIN respota u ON p.respota_perg_user = u.id
               where valida = 1 and pergunta = '$text';";
        $result2 = $conn->query($sql);
        if ($result2->num_rows > 0) {
            while ($linha2 = $result2->fetch_assoc()) {
                $aa = $linha2['resposta'];
                $SAIDA = $aa;
            }
        } else {
//BUSCA NA TERCEIRA TABELA
            $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita, 
                `ip`, u.resposta as respotaReal 
                 FROM `perg_sem_resp` p
                 LEFT JOIN respota u ON p.resposta_pergunta = u.id 
                    where 
                    p.pergunta = '$text' and u.resposta is not null
                     or p.pergunta = '$text' and p.resposta is not null ;";
            $result2 = $conn->query($sql);
            if ($result2->num_rows > 0) {

                while ($linha2 = $result2->fetch_assoc()) {
                    $aa = $linha2['respotaReal'] . $linha2['respostaEscrita'];
                    $SAIDA = $aa;
                }
            } else {
                $SAIDA = ' ';
            }
        }



        //return ' ';
    }

    return $SAIDA;
}
