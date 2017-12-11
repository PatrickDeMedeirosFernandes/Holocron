<?php
if (!isset($_POST['pergunta']) || $_POST['pergunta'] == "" ||
        // !isset($_POST['reposta']) || $_POST['reposta'] == "" ||
        !isset($_POST['valida']) || $_POST['valida'] == "") {
    ?><script>
        alert('Verifique os campos');
        window.history.go(-1);
        //            window.location.href = '../ADM';
    </script>
    <?PHP
} else {
    $pergunta = htmlspecialchars(strip_tags($_POST['pergunta']));
    $resposta = htmlspecialchars(strip_tags($_POST['reposta']));
    $resposta2 = $_POST['repostaQW'];
    ECHO $resposta2;
    $valida = htmlspecialchars(strip_tags($_POST['valida']));

    include './DB.php';

    if (isset($resposta2) || $resposta2 != '' || $resposta2 != ' ') {
        $query2 = "INSERT INTO `pergunta`(`pergunta`, `valida`, `resposta_pergunta`) VALUES ('$pergunta',$valida,$resposta2)";

        if (!mysqli_query($conn, $query2)) {
            ?>
            <script>
                alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                window.history.go(-1);
                //  window.location.href = '../ADM';
            </script> <?PHP
        } else {
            ?><script>
                alert('Cadastro de Pergunta realizado com sucesso');
            //                    window.history.go(-1);
                window.location.href = '../ADM';
            </script>
            <?PHP
        }
    } else {
        if (!isset($resposta) || $resposta == '' || $resposta == ' ') {
            ?>
            <script>
                alert('ERRO NO Cadastro de Pergunta');
                window.history.go(-1);
                //  window.location.href = '../ADM';
            </script> <?PHP
        } else {
            $query = "INSERT INTO `respota`(`resposta`) VALUES ('$resposta')";
            if (!mysqli_query($conn, $query)) {
                ?>
                <script>
                    alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                    window.history.go(-1);
                    //  window.location.href = '../ADM';
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
                            //     window.location.href = '../ADM';
                        </script> <?PHP
                    } else {
                        ?><script>
                            alert('Cadastro de Pergunta realizado com sucesso');
                            window.history.go(-1);
                            //   window.location.href = '../ADM';
                        </script>
                        <?PHP
                    }
                }
            }
        }
    }
}
/* drop table */