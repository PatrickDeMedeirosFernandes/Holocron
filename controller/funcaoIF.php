<?php

//
//
//include './conecao.php';
include './funcoes.php';


echo $text;
if ($conecta->connect_error) {
    die("Connection failed: " . $conecta->connect_error);
}
if (!empty($text)) {

    $str = "SELECT `idPergunta`, `Pergunta`, `Respondida`, `Resposta_idResposta`,Resposta as ab FROM `pergunta` 
        Left join `resposta` on pergunta.Resposta_idResposta = resposta.idResposta
        WHERE Pergunta = '$text'";



    $result = mysqli_query($str);
    echo $result;
    if ($result->num_rows > 0) {
        // output data of each row
        while ($row == $result->fetch_assoc()) {
            echo "id: " . $row["ab"];
        }
    }
}
$sql = "SELECT `idPergunta`, `Pergunta`, `Respondida`, `Resposta_idResposta`,Resposta FROM `pergunta` 
        Left join `resposta` on pergunta.Resposta_idResposta = resposta.idResposta
        WHERE Pergunta = '$text'";

$result = $conecta->query($sql);
if ($result->num_rows >= 1) {
    echo $sql;
    while ($linha = $result->fetch_assoc()) {
        $aa = $linha['Resposta'];
        echo $aa . "<br> porr";
    }
}
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "chatbot";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$sql = "SELECT `idPergunta`, `Pergunta`, `Respondida`, `Resposta_idResposta`,Resposta as ab FROM `pergunta` 
        right join `resposta` on  pergunta.Resposta_idResposta=resposta.idResposta 
        WHERE Pergunta LIKE '%$text' or Pergunta LIKE '$text' or Pergunta LIKE '$text%'";
echo $sql . "<br>";
$result = $conn->query($sql);
if ($result->num_rows > 0) {
    // output data of each row
    while ($row = $result->fetch_assoc()) {
        echo $row['ab'];
    }
} else {
    echo "0 results";
}
$conn->close();
$con = mysqli_connect('localhost','root','','chatbot');
$result = mysqli_query($con, "SELECT `idPergunta`, `Pergunta`, `Respondida`, `Resposta_idResposta`,Resposta as ab FROM `resposta` 
        right join `pergunta` on resposta.idResposta= pergunta.Resposta_idResposta 
        WHERE Pergunta = '$text'");
while ($row = $result->fetch_assoc()) {
    echo $row['ab']."g<br>";
}
