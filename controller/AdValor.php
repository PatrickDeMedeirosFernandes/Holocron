<?php
if (!isset($_POST['id']) || $_POST['id'] == "") {
    ?><script>
            alert('Verifique os campos');
            window.history.go(-1);
            //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {
   // $erro = "erro";
    include './DB.php';
    include '../scripts/funcao.php';
    $id = $_POST['id'];
    $i = 0;
    $result = count($_POST["VALOR"]);
    $result2 = count($_POST['DADO']);
    if ($result === $result2) {

        do {
            if (empty($_POST["VALOR"][$i]) || empty($_POST['DADO'][$i]) ||
                    $_POST["VALOR"][$i] == "" || $_POST['DADO'][$i] == "" || $_POST["VALOR"][$i] == " " || $_POST['DADO'][$i] == " ") {
                
            } else {
                //INSERT INTO `valor`(`valor`, `personagem_id_personagem`, `dado`) VALUES();
            echo    $query = " INSERT INTO `valor`(`valor`, `personagem_id_personagem`, `dado`)
                         VALUES('" . $_POST["VALOR"][$i] . "',$id,'"
                        . $_POST['DADO'][$i] . "' )";
                if (mysqli_query($conn, $query)) {
                    
                } else {
                    $erro = "Error description: " . mysqli_error($conn) . $query . $erro;
                            ;
                }
            }

            $i++;
        } while ($result != $i);
        if (isset($erro)) {
            ?>
            <script>
                alert('<?= "Erros que aconteceram" . $erro ?>');
                //   window.history.go(-1);
                window.location.href = '../EstrelaDaMorte/Detalhes_Personagem-<?= $id ?>';
            </script>
            <?PHP
        } else {
            ?>
            <script>
                alert('<?= ("Cadastro Realizado com sucesso" ) ?>');
                //  window.history.go(-1);
                window.location.href = '../EstrelaDaMorte/Detalhes_Personagem-<?= $id ?>';
            </script>
            <?PHP
        }
    } else {
        ?>
        <script>
            alert('<?= ("Error nos campos valor e dados, numeros diferentres" ) ?>');
            window.history.go(-1);
            //  window.location.href = '../EstrelaDaMorte';<!--
        </script>-->
        <?PHP
    }
}