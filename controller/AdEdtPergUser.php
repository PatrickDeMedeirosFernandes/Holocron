<?php
if (!isset($_POST['pergunta']) || $_POST['pergunta'] == "") {
    ?><script>
        alert('Verifique os campos');
        window.history.go(-1);
        //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {
    
    $valida = $_POST['valida'];
    $pergunta = htmlspecialchars(strip_tags($_POST['pergunta']));
    $resposta = htmlspecialchars(strip_tags($_POST['reposta']));
    $resposta2 = $_POST['respostaQR'];
    $id2 = $_POST['id'];
    include './DB.php';
    if (!isset($resposta2) || $resposta2 == '' || $resposta2 == ' ') {
//        echo 'oi';
        if (!isset($resposta) || $resposta == '' || $resposta == ' ') {
            ?>
            <script>
                alert('ERRO NO Cadastro de Pergunta');
                window.history.go(-1);
                //  window.location.href = '../EstrelaDaMorte';
            </script> <?PHP
        } else {
            $query = "INSERT INTO `resposta`(`resposta`) VALUES ('$resposta')";
            if (mysqli_query($conn, $query)) {
                $ID = mysqli_insert_id($conn);

                IF (isset($ID)) {

                 $query2 = "UPDATE `pergunta_keyworks` SET 
                `pergunta_key`='$pergunta',`valida`=$valida,`resposta_id`=$ID 
                WHERE idpergunta_keyworks = $id2";
                    //echo $query2;

                    if (!mysqli_query($conn, $query2)) {
                        ?>
                        <script>
                            alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                            window.history.go(-1);
                            //     window.location.href = '../EstrelaDaMorte';
                        </script> <?PHP
                    } else {
                        ?><script>
                            alert('Cadastro de Pergunta realizado com sucesso');
                            // window.history.go(-1);
                            window.location.href = '../EstrelaDaMorte';
                        </script>
                        <?PHP
                    }
                }
            } else {
                ?>
                <script>
                    alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                    window.history.go(-1);
                    //  window.location.href = '../EstrelaDaMorte';
                </script> <?PHP
            }
        }
    } else {
        $query2 = "UPDATE `pergunta_keyworks` SET 
                `pergunta_key`='$pergunta',`valida`=$valida,
                `resposta_id`=$resposta2 WHERE idpergunta_keyworks=$id2";
        //     //echo $query2;
        if (mysqli_query($conn, $query2)) {
            ?> 
            <script>
                alert('Cadastro de Pergunta realizado com sucesso');
                //                    window.history.go(-1);
                window.location.href = '../EstrelaDaMorte';
            </script>

            <?PHP
        } else {
            ?>
            <script>
                alert('');
                //   window.history.go(-1);

            </script>
            <?PHP
        }
    }
}
    
