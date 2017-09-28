<!DOCTYPE html>
<?php
if (isset($_GET['fala'])) {
    $fala = $_GET['fala'];
} else {
    $fala = null;
}   

$n=rand(1, 5);
        
        ?>
<html>
    <head>
        <meta charset="UTF-8">
        <title><?= $n ?></title>
        <link href="./scripts/css.css" rel="stylesheet" type="text/css"/>
        <script src="./scripts/js.js" type="text/javascript"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>  <style>
    
            body {

                /*background-image: url("./img/plano/<?= $n ?>.jpg");*/
                font: 15px arial, sans-serif;

            }
        </style>
    <body>
      
<?php
include '../includes/menu.php';
