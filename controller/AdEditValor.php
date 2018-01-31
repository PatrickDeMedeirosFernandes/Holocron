<?php
if (!isset($_POST['id']) || $_POST['id'] == "") {
    ?><script>
            alert('Verifique os campos');
            window.history.go(-1);
            //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {
    include './DB.php';
    include '../scripts/funcao.php';
    $id = $_POST['id'];
    $i = 0;
    $VALOR = $_POST["VALOR"];
    $VALOR = $_POST['DADO'];

    //INSERT INTO `valor`(`valor`, `personagem_id_personagem`, `dado`) VALUES();
    $query = "
                        UPDATE `valor` SET 
                        `valor`='" . $_POST["VALOR"] .
            "',`dado`='" . $_POST['DADO'].
            "'  WHERE id_valor =$id
        ";
    if (mysqli_query($conn, $query)) {
               ?>
            <script>
                alert('<?= ("Cadastro Realizado com sucesso" ) ?>');
                //  window.history.go(-1);
                window.close();
            </script>
            <?PHP
    } else {
        $erro = "Error description: " . mysqli_error($con) . $query;
               ?>
            <script>
                alert('<?= $erro ?>');
                //  window.history.go(-1);
                window.close();
            </script>
            <?PHP
            
    }
}
