<?php
  //  include '../controller/DB.php';


function lista_report_limit10(){
    include '../controller/DB.php';

$sql = "SELECT `id_report`, `email`,`nome`, `texto`, `visto`, `data_envio`, `data_visto`, `visuaizado_por`, `ip` ,`login` as `user`,`nivel` 
FROM `report` r
LEFT JOIN user u ON r.visuaizado_por = u.id_user
WHERE visto =0
ORDER BY id_report DESC
LIMIT 10
";
return $result2 = mysqli_query($conn, $sql);
}



function lista_report_unico($id){
    include '../controller/DB.php';

$sql = "SELECT `id_report`, `email`,`nome`, `texto`, `visto`, `data_envio`, `data_visto`, `visuaizado_por`, `ip` ,`login` as `user`,`nivel` 
FROM `report` r
LEFT JOIN user u ON r.visuaizado_por = u.id_user
WHERE id_report = $id
    ORDER BY id_report asc

";
return $result3 = mysqli_query($conn, $sql);
}


function lista_report(){
    include '../controller/DB.php';

$sql = "sELECT `id_report`, `email`,`nome`, `texto`, `visto`, `data_envio`, `data_visto`, `visuaizado_por`, `ip` ,`login` as `user`,`nivel` 
FROM `report` r
LEFT JOIN user u ON r.visuaizado_por = u.id_user 
ORDER BY visto ASC, id_report asc
";
return $result1 = mysqli_query($conn, $sql);
}

