<?php header('Content-Type: text/html; charset=utf-8');
 session_start();
 if(!isset($_SESSION['login'])){
       echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>' ;
 }{
?>
<!DOCTYPE html>
<html lang="pt">
    <head>  
   

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
   
        <title><?=  $_SESSION['login'] ?></title>
        <!-- Bootstrap Core CSS -->
        <link href="Admin/estilo/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- MetisMenu CSS -->
        <link href="Admin/estilo/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
        <!-- Custom CSS -->
        <link href="Admin/estilo/dist/css/sb-admin-2.css" rel="stylesheet">
        <!-- Morris Charts CSS -->
        <link href="Admin/estilo/Admin/vendor/morrisjs/morris.css" rel="stylesheet">
        <!-- Custom Fonts -->
        <link href="Admin/estilo/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <?php
    date_default_timezone_set('America/Sao_Paulo');

    include 'menuTop.php';
    include 'menu.php';
 }