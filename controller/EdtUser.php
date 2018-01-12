<?php
if (!isset($_POST['valida']) || $_POST['valida'] == "" ||
        !isset($_POST['login']) || $_POST['login'] == "" ||
        !isset($_POST['senha']) || $_POST['senha'] == "" ||
        !isset($_POST['senha2']) || $_POST['senha2'] == "" ||
        !isset($_POST['nivel']) || $_POST['nivel'] == ""
) {
    ?><script>
            alert('Verifique os campos');
            window.history.go(-1);
    //            window.location.href = '../ADM';
    </script>
    <?PHP
} else if ($_POST['senha'] != $_POST['senha2']) {
    ?><script>
            alert('senhas não conferem');
            window.history.go(-1);
    // window.location.href = '../ADM';
    </script>
    <?PHP
} else {
    if (!isset($_POST['pergunta']) || $_POST['pergunta'] == "") {
        $pergunta = "NULL";
    } else {
        $pergunta = $_POST['pergunta'];
    }
    if (!isset($_POST['reposta']) || $_POST['reposta'] == "") {
        $resposta = "NULL";
    } else {
        $resposta = $_POST['reposta'];
    }
    $valida =  htmlspecialchars(strip_tags($_POST['valida']));
    $login =  htmlspecialchars(strip_tags($_POST['login']));
    $senha = $_POST['senha'];
     $id = $_POST['id'];
    $nivel =  htmlspecialchars(strip_tags($_POST['nivel']));
    echo $senha."<br>";
            
    $senhaM5 = md5($senha);

    $senhaMD5  =md5($senhaM5);

    include './DB.php';
    include '../scripts/funcao.php';

    $query = "
        UPDATE `user` SET `login`='$login',
        `senha`='$senhaMD5',`nivel`=$nivel,`ativo`=$valida,`frase`='$pergunta',`frase_respota`='$resposta' WHERE `id_user` =$id
";
 //   mysqli_query($conn, $query);

            if (!mysqli_query($conn, $query)) {
                ?>
                <script>
                    alert('<?= ("Error description: " . mysqli_error($con)) ?>');
                //    window.history.go(-1);
                    window.location.href = '../Lista_Usuarios';
                </script> <?PHP
            } else {
                ?><script>
                                    alert('Atualização de Usuario feito com sucesso');
                //    window.history.go(-1);
                                   window.location.href = '../Lista_Usuarios';
                </script>
                <?PHP
            }
}