
    <?php
    header('Content-Type: text/html; charset=utf-8');
if (isset($_GET['fala'])) {
    $fala = $_GET['fala'];
} else {
    $fala = "nullteste";
}
$n = rand(1, 16);
?>
<html>
    <head>
        <meta charset="UTF-8">
        <title><?= $n ?> Holocrom - O ChatBot de STAR WARS</title>
        <link href="./scripts/css.css" rel="stylesheet" type="text/css"/>
        <script src="./scripts/js.js" type="text/javascript"></script>
        <link rel="shortcut icon" type="image/x-icon" href="img/Holocron.png" id="favicon" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head> <style>
        body {
            background-image: url("./img/plano/<?= $n ?>.jpg") ;   
            font: 15px arial, sans-serif;  background-size: 100%;
            background-repeat: no-repeat; background-color: #000;
   }
    </style>
    <body>
<?php       
include '../includes/menu.php';   