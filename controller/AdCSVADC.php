<?php
//$uploaddir = "../ANEXO/";
//OCULTA OS ERROS :V
//ini_set('display_errors', 0 );
//error_reporting(0);

$target_dir = "../ANEXO/";
$target_file = $target_dir . basename($_FILES["userfile"]["name"]);
$imageFileType = pathinfo($target_file, PATHINFO_EXTENSION);
// Check if image file is a actual image or fake image

$check = getimagesize($_FILES["userfile"]["tmp_name"]);


// Check if file already exists
if (file_exists($target_file)) {
    ?><script>
        alert('ARQUIVO JÁ EXISTI');
   window.location.href = '../ADM';
    </script>
    <?PHP
} else {
// Check file size
    if ($_FILES["userfile"]["size"] < 5) {
        ?><script>
            alert('ARQUIVO COM TAMANHO NÁO SUPORTADO');
              window.location.href = '../ADM';
        </script>
        <?PHP
    } else {
// Allow certain file formats
        if ($imageFileType != "csv" && $imageFileType != "txt") {
            ?><script>
                alert('ARQUIVO TEM QUE SER .CSV OU .TXT');
   window.location.href = '../ADM';
            </script>
            <?PHP
        } ELSE {
// Check if $uploadOk is set to 0 by an error
            if (move_uploaded_file($_FILES["userfile"]["tmp_name"], $target_file)) {
                //        echo "The file " . basename($_FILES["userfile"]["name"]) . " has been uploaded.<br>";
//                echo 'Aqui está mais informações de debug:';
                //   print_r($_FILES);
                include_once '../controller/DB.php';
include '../includes/funcao.php';

                $arquivo = fopen("../ANEXO/" . $_FILES['userfile']['name'], "r");
                //    $arquivo = fopen('dados_emails.csv', 'r');
                // Lê o conteúdo do arquivo
                while (!feof($arquivo)) {
                    // Pega os dados da linha
                    $linha = fgets($arquivo, 1024);
                    // Divide as Informações das celular para poder salvar
                    $dados = str_replace(':', ';', $linha);
                    $dados = str_replace(',', ';', $linha);
                    $dados = explode(';', $linha);
                    //  // Verifica se o Dados Não é o cabeçalho ou não esta em branco
                    if (!empty($linha)) {
                        $sql = " INSERT INTO `respota`(`resposta`) VALUES ("
                                . "'" . utf8_encode(htmlspecialchars(strip_tags($dados[1]))) . "');";
                        //  echo $sql;
                        $result = mysqli_query($conn, $sql);
                        $sql3 = "SELECT id FROM `respota` ORDER BY id DESC LIMIT 1";
                        //             echo $sql3;
                      

                        echo $resp = mysqli_insert_id($conn);
                        $sql2 = " INSERT INTO `pergunta`(`pergunta`, `valida`, `resposta_pergunta`) VALUES ("
                                . "'" . utf8_encode(htmlspecialchars(strip_tags($dados[0]))) . "',1,$resp

                              );";
                        $result4 = mysqli_query($conn, $sql2);
                        echo $sql2;
                    }
                    ?><script>
                        alert('Envio de dados terminado');
                                 window.location.href = '../ADM';

                    </script>
                    <?PHP
                }
            } else {
                ?><script>
                    alert('Aconteceu algum problema no envio do arquivo e náo foi enviado');
                   window.location.href = '../ADM';
                </script>
                <?PHP
            }
        }
    }
}
    