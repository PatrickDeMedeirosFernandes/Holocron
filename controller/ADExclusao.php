<?php
if (!isset($_GET['id']) || $_GET['id'] == "") {
    ?><script>
        alert('Verifique os campos');
        window.history.go(-1);
        //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {
    include './DB.php';
    include '../scripts/funcao.php';

    $id = base64_decode($_GET['id']);
    $detal = base64_decode($_GET['OQUE']);
    echo $id . $detal;


    if ($detal == 'DETAL') {

        $query = "DELETE FROM `valor` WHERE `valor`.`id_valor` =$id        ";
        if (mysqli_query($conn, $query)) {
            ?>
            <script>
                alert('<?= ("Apagado  com sucesso" ) ?>');
                window.history.go(-1);
                //window.close();
            </script>
            <?PHP
        } else {
            ?>
            <script>
                alert('<?= "Error description: " . mysqli_error($con); ?>');
                window.history.go(-1);
                // window.close();
            </script>
            <?PHP
        }
    } ELSE    if ($detal == 'DIC') {
        $query = "DELETE FROM `expressoes` WHERE `expressoes`.`idexpressoes` = $id        ";
        if (mysqli_query($conn, $query)) {
            ?>
            <script>
                alert('<?= ("Apagado  com sucesso" ) ?>');
                window.history.go(-1);
                //window.close();
            </script>
            <?PHP
        } else {
            ?>
            <script>
                alert('<?= "Error description: " . mysqli_error($con); ?>');
                window.history.go(-1);
                // window.close();
            </script>
            <?PHP
        }
    }
    else if ($detal == "PERSONAGEM") {
        $query = "DELETE FROM `valor` WHERE `valor`.`personagem_id_personagem` =$id        ";
        if (mysqli_query($conn, $query)) {

            $query = "DELETE FROM `personagem` WHERE `personagem`.`id_personagem` =$id        ";

            if (mysqli_query($conn, $query)) {
                ?>
                <script>
                    alert('<?= ("Apagado  com sucesso" ) ?>');
                    window.history.go(-1);
                    //window.close();
                </script>
                <?PHP
            } else {
                ?>
                <script>
                    alert('<?= "Error description: " . mysqli_error($con); ?>');
                    window.history.go(-1);
                    // window.close();
                </script>
                <?PHP
            }
        } else {
            ?>
            <script>
                alert('<?= "Error description: " . mysqli_error($con); ?>');
                window.history.go(-1);
                // window.close();
            </script>
            <?PHP
        }
    }
    else if ($detal == "KEY")   {
        $query = "DELETE FROM `keywords` WHERE `keywords`.`id_key` =$id        ";
        if (mysqli_query($conn, $query)) {
            ?>
            <script>
                alert('<?= ("Apagado  com sucesso" ) ?>');
                window.history.go(-1);
                //window.close();
            </script>
            <?PHP
        } else {
            ?>
            <script>
                alert('<?= "Error description: " . mysqli_error($con); ?>');
                window.history.go(-1);
                // window.close();
            </script>
            <?PHP
        }
    }
    else  {
               ?>
            <script>
                alert('Para de fazer o que não deve que sacoo');
                window.history.go(-1);
                // window.close();
            </script>
            <?PHP
    }
}
