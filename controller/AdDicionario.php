<?php

include './DB.php';
$expressao = htmlspecialchars(strip_tags($_POST['expressao']));
$termos = htmlspecialchars(strip_tags($_POST['termos']));

$linha = $termos;
// Divide as Informações das celular para poder salvar

$dados = explode(',', $linha);
//  // Verifica se o Dados Não é o cabeçalho ou não esta em branco

$sql = " INSERT INTO `expressoes`(`expressao`) VALUES (
        '$expressao');";


$result = mysqli_query($conn, $sql);
$sql3 = "SELECT `idexpressoes`, `expressao` FROM `expressoes` ORDER BY id DESC LIMIT 1";
$sql3;

$resp = mysqli_insert_id($conn);

foreach ($dados as $value) {
    if ($value != "" || $value != ' ') {
        $sql2 = "INSERT INTO `dicionario`( `texto`, `expressoes_idexpressoes`) VALUES (
            '" . $value . "',$resp);";
        $result4 = mysqli_query($conn, $sql2);
    };
}
?>
<script>
    alert('Cadastrado');
    window.location.href = '../EstrelaDaMorte/CadExpressoes.php';
</script>