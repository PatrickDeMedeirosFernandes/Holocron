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
    $VALOR = $_POST["nome"];

    //INSERT INTO `valor`(`valor`, `personagem_id_personagem`, `dado`) VALUES();
   echo $query = "UPDATE `personagem` SET `nome` = '$VALOR' where`personagem`.`id_personagem`  =$id
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
        ?>
        <script>
            alert('<?= "Error description: " . mysqli_error($con); ?>');
            //  window.history.go(-1);
            window.close();
        </script>
        <?PHP
    }
}
