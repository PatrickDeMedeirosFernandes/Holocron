<?PHP

set_time_limit("1000");

function BuscaConcreta($text) {
    include '../controller/DB.php';
//camada 1
    $sql = "SELECT `expressao`, `significado` FROM `dicionario`  ;";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            $aa = $linha['expressao'];
            $bb = $linha['significado'];
            $text = str_replace("$aa", "$bb", $text);
        }
    }











    return $text;
}
