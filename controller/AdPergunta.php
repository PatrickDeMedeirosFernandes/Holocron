<?php
if (!isset($_POST['pergunta']) || $_POST['pergunta'] == "" ||
        // !isset($_POST['reposta']) || $_POST['reposta'] == "" ||
        !isset($_POST['valida']) || $_POST['valida'] == "") {
    ?><script>
        alert('Verifique os campos');
        window.history.go(-1);
        //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {
    if ($_POST['repostaQW'] == ' ') {

        $vaitecada = 'poorra';
    } else {

        $vaitecada = $_POST['repostaQW'];
    }
    $pergunta = htmlspecialchars(strip_tags($_POST['pergunta']));
    $resposta = htmlspecialchars(strip_tags($_POST['reposta']));
    //echo $resposta.'<br>';
    ECHO $vaitecada;
    $valida = htmlspecialchars(strip_tags($_POST['valida']));
    include './DB.php';
    if (!isset($vaitecada) || $vaitecada == '' || $vaitecada == 'poorra' || $vaitecada == ' ') {
        if (!isset($resposta) || $resposta == '' || $resposta == ' ') {
            ?>
            <script>
                alert('ERRO NO Cadastro de Pergunta');
                window.history.go(-1);
                //  window.location.href = '../EstrelaDaMorte';
            </script> <?PHP
        } else {
            $query = "INSERT INTO `respota`(`resposta`) VALUES ('$resposta')";
            if (!mysqli_query($conn, $query)) {
                ?>
                <script>
                    alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                    window.history.go(-1);
                    //  window.location.href = '../EstrelaDaMorte';
                </script> <?PHP
            } else {
                $ID = mysqli_insert_id($conn);
                IF (isset($ID) || $ID != '') {
                    $query2 = "INSERT INTO `pergunta`(`pergunta`, `valida`, `resposta_pergunta`) VALUES ('$pergunta',$valida,$ID)";

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
                            window.history.go(-1);
                            //   window.location.href = '../EstrelaDaMorte';
                        </script>
                        <?PHP
                    }
                }
            }
        }
    } else {


        $query2 = "INSERT INTO `pergunta`(`pergunta`, `valida`, `resposta_pergunta`) VALUES ('$pergunta',$valida,$vaitecada)";
        echo $query2;
        if (!mysqli_query($conn, $query2)) {
            ?>
            <script>
                alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                window.history.go(-1);
                //  window.location.href = '../EstrelaDaMorte';
            </script> <?PHP
        } else {
            ?><script>
                alert('Cadastro de Pergunta realizado com sucesso');
                //                    window.history.go(-1);
                window.location.href = '../EstrelaDaMorte';
            </script>
            <?PHP
        }
    }
}
/* drop table */