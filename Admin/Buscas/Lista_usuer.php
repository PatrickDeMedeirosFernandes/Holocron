<?php


function lista_usuarios(){
    include '../controller/DB.php';
$sql = "SELECT `id_user`, `login`, `senha`, `nivel`, `ativo`, `frase`, `frase_respota` 
    FROM `user`";
return $result1 = mysqli_query($conn, $sql);

}

function lista_usuarios_unico($id){
    include '../controller/DB.php';
$sql = "SELECT `id_user`, `login`, `senha`, `nivel`, `ativo`, `frase`, `frase_respota` 
    FROM `user` where id_user = $id";
return $result1 = mysqli_query($conn, $sql);

}