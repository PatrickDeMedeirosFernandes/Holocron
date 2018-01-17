<?php // 
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "tcc";

//
//$servername = "mysql.hostinger.com.br";
//$username = "u381013248_tcc";
//$password = "defecon2";
//$dbname = "u381013248_tcc";

//
//$servidor = "mysql.hostinger.com.br";
//$usuarioBD = "u381013248_ujo";
//$senhaBD = "1234567890-=pfqwert";
//$banco = "u381013248_ujo";
//$conecta = mysqli_connect($servidor, $usuarioBD, $senhaBD, $banco)or die(mysqli_errno($conecta));

// Create connection
$conn = mysqli_connect($servername, $username, $password);



//$link = mysqli_connect('localhost', 'my_user', 'my_password', 'test');

/* check connection */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}else{
            mysqli_select_db($conn, $dbname);

}

//printf("Initial character set: %s\n", mysqli_character_set_name($conn));

/* change character set to utf8 */
if (!mysqli_set_charset($conn, "utf8")) {
    printf("Error loading character set utf8: %s\n", mysqli_error($conn));
    exit();
} else {
   // printf("Current character set: %s\n", mysqli_character_set_name($conn));
}


