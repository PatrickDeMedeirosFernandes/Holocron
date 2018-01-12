<?php

include './DB.php';
include '../scripts/funcao.php';
if (!isset($_POST['chat']) || !isset($_POST['Email']) || !isset($_POST['Texto'])) {
    ?>
    <script language="javascript">
        alert("Verifique se os campos foram preenchidos");
        window.history.go(-1);
    </script>
    <?php

} else {

    $chat = htmlspecialchars(strip_tags($_POST['chat']));
    $email = htmlspecialchars(strip_tags($_POST['Email']));
    $text = htmlspecialchars(strip_tags($_POST['Texto']));
    $ip = get_client_ip();

    $sql = "INSERT INTO `report`(`email`, `nome`, `texto`,`visto`, `ip`) VALUES ('$email','$chat','$text',0,'$ip')";
    $result = mysqli_query($conn, $sql);

    if ($result) {
        ?>
        <script language="javascript">

            window.location.href = "home";
        </script>
        <?php

    } else {
        echo $sql = "INSERT INTO `report`(`email`, `nome`, `texto`,`visto`, `ip`) VALUES ('$email','$chat','$text',0,'$ip')";
    }
}