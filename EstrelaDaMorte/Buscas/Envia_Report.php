<?php
  //  include '../controller/DB.php';


function atualiza_quem_viu($id, $user){
    include '../controller/DB.php';
        date_default_timezone_set('America/Sao_Paulo');

$data = date('Y-m-d H:i:s');
$sql = "UPDATE `report` SET `data_visto`='$data',
    visto=1,
    `visuaizado_por`=$user
    WHERE id_report=$id and visto !=1;
";
//echo $sql;
return $result2 = mysqli_query($conn, $sql);
}

