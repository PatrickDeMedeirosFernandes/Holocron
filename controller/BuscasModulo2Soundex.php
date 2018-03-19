<?PHP

///https://gist.github.com/dannykopping/1272466
// UTILIZAÇÃO DA CLAUSULA SOUDDEX
//set_time_limit("1000");
//ANALIZAR ESTA LINHA
// SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id, (SELECT SOUNDEX('quem A ESPOZA anaquim')) as text1, (Select SOUNDEX(pergunta)) as text2 FROM `pergunta` p LEFT JOIN respota u ON p.resposta_pergunta = u.id
/**
 * Essa função serve para buscar resposta onde tenha alguma similariedade na fonetica da frase enviada, com as frases que em no banco de dados 
 * @param type String
 * @return string retorna a resposta da pergunta ou vazio caso não ache nenhuma
 */
function BuscaSimilarSoundex($text, $time2 = 0) {
    if (isset($time2)) {
        $time = $time2;
    } else {
        $time = 0;
    }
    include '../controller/DB.php';
    $SAIDA = ' ';
    $i = 0;




    if ($SAIDA == ' ') {


        //BUSCA NA PRIEMIRA TABELA
        $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id, 
        (SELECT SOUNDEX('$text')) as text1, 
        (Select SOUNDEX(pergunta)) as text2 
        FROM `pergunta` p 
        LEFT JOIN respota u 
        ON p.resposta_pergunta = u.id";
//SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id,
//     LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff
//     FROM `pergunta` p 
//     LEFT JOIN respota u ON p.resposta_pergunta = u.id 
//     HAVING (textDiff) > 70 and max(textDiff) 
//     ORDER BY `textDiff` DESC"
        // . "";
        // echo $sql;
        /* @var $conn type */
        //    echo  $sql ;

        $result5 = mysqli_query($conn, $sql);
        if (mysqli_num_rows($result5) > 0) {
            while ($linha = mysqli_fetch_assoc($result5)) {
                //    echo $linha['text1'] . " ===" . $linha['text2'];
                if ($linha['text1'] == $linha['text2']) {
                    $i++;
                    $bb = $linha['id'];
                    $aa = $linha['resposta'];
                    $SAIDA = $aa;
                    if ($i == 1) {
                        //     echo "i=" . $i;
                        $quary4 = "INSERT INTO `perg_user`(`pergunta`, `valida`, `respota_perg_user`) 
                    VALUES('$text',1,'$bb');";
                        // echo $quary4;
                        if (mysqli_query($conn, $quary4)) {
                            //    $SAIDA = " ok" . $i;
                        } else {
                            //   $SAIDA .= "<H1>ESTAMOS COM PROBLEMAS TECNICOS, VOLTE MAIS TARDE</H1>";
                        }
                    }
                } else {
                    $SAIDA = ' ';
                }
            }
            /////fim do while
            /////////////////////////////////FINALIZAAAAAAR//////////////////////////////////
        } else {
            $i = 0;
            $SAIDA = ' ';



//BUSCA NA SEGUNDA TABELA
            $sql2 = "  SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta, id,
               (SELECT SOUNDEX('$text')) as text1, 
               (Select SOUNDEX(pergunta)) as text2 
               FROM `perg_user` p
               LEFT JOIN respota u ON p.respota_perg_user = u.id";
            // echo  $sql ;

            $result4 = mysqli_query($conn, $sql2);
            if (mysqli_num_rows($result4) > 0) {
                while ($linha2 = mysqli_fetch_assoc($result4)) {
                    if ($linha2['text1'] == $linha2['text2']) {
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
                }//FIM DO WHILE
            } else {
                $i = 0;
                $SAIDA = ' ';



//BUSCA NA TERCEIRA TABELA
                $sql = "   SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita,id,
                `ip`, u.resposta as respotaReal ,
                 (SELECT SOUNDEX('$text')) as text1, 
               (Select SOUNDEX(pergunta)) as text2 
                 FROM `perg_sem_resp` p
                 LEFT JOIN respota u ON p.resposta_pergunta = u.id 
                    where u.resposta is not null or p.resposta is not null 
              ;";
                // echo  $sql ;
                $result3 = mysqli_query($conn, $sql);
                if (mysqli_num_rows($result3) > 0) {
                    while ($linha8 = mysqli_fetch_assoc($result3)) {
                        if ($linha8['text1'] == $linha8['text2']) {
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
                    }//fim do while
                } else {
                    $i = 0;
                    $SAIDA = ' ';
                }
            }
        }
    }

















    return $SAIDA;
}

//https://www.google.com.br/search?ei=4n9TWsC5LoSUwgTb0Iv4Ag&q=wallpaper+full+hd+star+wars&oq=wallpaper+full+hd+st&gs_l=psy-ab.1.1.0l2j0i22i30k1l8.1382.1680.0.3407.2.2.0.0.0.0.189.355.0j2.2.0....0...1c.1.64.psy-ab..0.2.354...0i67k1.0.O4hITv21Jb8
//https://gist.github.com/Kovah/df90d336478a47d869b9683766cff718
    //https://stackoverflow.com/questions/4671378/levenshtein-mysql-php


