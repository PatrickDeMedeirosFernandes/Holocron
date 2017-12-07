<?php
session_start();

include './DB.php';
include '../includes/funcao.php';
if (!isset($_POST['login']) || !isset($_POST['senha'])) {
    ?>
    <script language="javascript">
        alert("Verifique se os campos, SENHA NÃO CONFERE");
        window.history.go(-1);
    </script>
    ?>
    <?php
} else {

    $caracteres = $_POST["caracteres"];
    $codigo = $_SESSION["codigo"];

    if ($codigo != $caracteres) {
        ?>
        <script language="javascript">
            alert("Erro na captcha");
            window.history.go(-1);
        </script>
        <?php
    } else {
        $login = htmlspecialchars(strip_tags($_POST['login']));
        $senha = htmlspecialchars(strip_tags($_POST['senha']));
        //  $senhaMD5 = md5(md5($senha));
        echo $senha . "<br>";
        $senhaM5 = md5($senha);
        echo $senhaM5 . "<br>";
        $senhaMD5 = md5($senhaM5);
        echo $senhaMD5 . "<br>";
        $sql = "SELECT `id_user`, `login`, `senha`, `nivel`, `ativo`, `frase`, `frase_respota`
        FROM `user` 
        WHERE `senha` = '$senhaMD5' AND login = '$login' and ativo = 1";
        $result = mysqli_query($conn, $sql);

        if (mysqli_num_rows($result) > 0) {
            // output data of each row
            $row = mysqli_fetch_assoc($result);
            $_SESSION['id'] = $row["id_user"];
            $_SESSION['login'] = $row["login"];
            $_SESSION['senha'] = $row["senha"];
            $_SESSION['nivel'] = $row["nivel"];
            $_SESSION['ativo'] = $row["ativo"];
            $_SESSION['frase'] = $row["frase"];
            $_SESSION['frase_respota'] = $row["frase_respota"];
            ?>
            <script language="javascript">
                alert("Bem Vindo <?= $_SESSION['login'] ?>");

                document.location.href = 'adm';
            </script>
            <?php
        } else {
            ?>
            <script language="javascript">
                alert("<?= $sql ?>");
                window.history.go(-1);
            </script>
            <?php
        }
    }
}
