<?PHP

set_time_limit("1000");

function BuscaSimilar($text) {
    include '../controller/DB.php';
    $SAIDA = '';
    $i = 0;
    //BUSCA NA PRIEMIRA TABELA
    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id,
     LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff
     FROM `pergunta` p 
     LEFT JOIN respota u ON p.resposta_pergunta = u.id 
     HAVING (textDiff) > 70 and max(textDiff) 
     ORDER BY `textDiff` DESC";
    // echo $sql;
    /* @var $conn type */
    $result5 = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result5) > 0) {
        while ($linha = mysqli_fetch_assoc($result5)) {
            $i++;
            $bb = $linha['id'];
            $aa = $linha['resposta'];
            $SAIDA = $aa;
            if ($i == 1) {
                //              echo "i=" . $i;
                $quary4 = "INSERT INTO `perg_user`(`pergunta`, `valida`, `respota_perg_user`) 
                    VALUES('$text',1,'$bb');";
                //                  echo $quary4;
                if (mysqli_query($conn, $quary4)) {
                    //        $SAIDA = " ok" . $i;
                } else {
                    //     $SAIDA .= "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
                }
            }
        }
    } else {
        $i = 0;

        $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta, id,  LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff
                FROM `perg_user` p
                LEFT JOIN respota u ON p.respota_perg_user = u.id
                HAVING (textDiff) > 70 and max(textDiff) 
                ORDER BY `textDiff` DESC";

        $result4 = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result4) > 0) {
            while ($linha2 = mysqli_fetch_assoc($result4)) {
                $i++;
                $bb = $linha2['id'];
                $aa = $linha2['resposta'];
                $SAIDA = $aa;
                if ($i == 1) {
                    $quary4 = "INSERT INTO `perg_user`(`pergunta`, `valida`, `respota_perg_user`) 
                    VALUES('$text',1,'$bb');";
                    // echo $quary4;

                    if (mysqli_query($conn, $quary4)) {
                        //  $SAIDA = " ok";
                    } else {
                    //    $SAIDA .= "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
                    }
                }
            }
        } else {
            $i = 0;

//BUSCA NA TERCEIRA TABELA
            $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita,  LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff,id,
                `ip`, u.resposta as respotaReal 
                 FROM `perg_sem_resp` p
                 LEFT JOIN respota u ON p.resposta_pergunta = u.id 
                    where u.resposta is not null or p.resposta is not null 
                    HAVING (textDiff) > 70 and 
                    max(textDiff) ORDER BY `textDiff` DESC
                    ;";
            $result3 = mysqli_query($conn, $sql);
            if (mysqli_num_rows($result3) > 0) {
                while ($linha8 = mysqli_fetch_assoc($result3)) {
                    $i++;
                    $aa = $linha8['respotaReal'] . $linha8['respostaEscrita'];
                    $SAIDA = $aa;
                    $bb = $linha8['id'];
                    if ($i == 1) {
                        $quary4 = "INSERT INTO `perg_user`(`pergunta`, `valida`, `respota_perg_user`) 
                    VALUES('$text',1,'$bb');";
                        // echo $quary4;
                        if (mysqli_query($conn, $quary4)) {
                            //  $SAIDA = " ok";
                        } else {
                        //    $SAIDA .= "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
                        }
                    }
                }
            } else {
                $i = 0;

                $SAIDA = ' ';
            }
        }
    }





//https://www.google.com.br/search?ei=4n9TWsC5LoSUwgTb0Iv4Ag&q=wallpaper+full+hd+star+wars&oq=wallpaper+full+hd+st&gs_l=psy-ab.1.1.0l2j0i22i30k1l8.1382.1680.0.3407.2.2.0.0.0.0.189.355.0j2.2.0....0...1c.1.64.psy-ab..0.2.354...0i67k1.0.O4hITv21Jb8
//https://gist.github.com/Kovah/df90d336478a47d869b9683766cff718
    //https://stackoverflow.com/questions/4671378/levenshtein-mysql-php

    return $SAIDA;
}
