<?php

$pergunta = $_POST['pergunta']; 
$resposta = $_POST['reposta']; 
$valida = $_POST['valida']; 

include './DB.php';





$query = "INSERT INTO `respota`(`resposta`) VALUES ('$resposta')";
mysqli_query($conn, $query);

echo mysqli_insert_id($conn);
/* drop table */