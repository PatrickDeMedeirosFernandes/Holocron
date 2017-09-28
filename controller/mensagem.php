<?php

include '../includes/funcao.php';
if (empty($_POST['chat'])) {
    echo "<script>
            alert('Preencha todos os campos!');
            history.go(-1);
            </script>";
    exit;
} else {
    $a = sanitizeString(// tira acentos
            strip_tags(//tira tags


                    $_POST['chat']));


    $first = "eu foi que matei?";
    $second = "quem te matou?";
    similar_text($first, $second, $percent); //Calcula o a proximidade de duas string e devolve a porcentagem
    echo $percent;


    if ($percent > 51) {
        echo "<br>Ok<br>";
    };


    echo "<br>";
    echo lcfirst($a); //Torna minúsculo o primeiro caractere de uma string

    echo "<br>";
    echo ucfirst($a); // Converte para maiúscula o primeiro caractere de uma string



    echo "<br>";
    echo strtolower($a); //onverte uma string para minúsculas



    echo "<br>";
    echo strtoupper($a); //Converte uma string para maiúsculas



    echo "<br>";
    echo lcfirst($a); //

    
    
    
    
    
    
    
    
    
    
    
    
    

    echo "<br>";
echo
strlen($a);//O tamanho da string em sucesso, e 0 se a string é vazia.












    echo "<br>";
    echo $a;









    echo "<br>";
    echo "<br>";
    echo "<br>";
    echo "<br>";
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    echo "<br>";
    echo "<br>";



    /**
     * MOdelo tesste de como será o monstador de sql
     */
    $pizza = $a;
    $pieces = explode(" ", $pizza);
    $select = "";
    $where = "";
    $from = "";

    for ($i = 0; $i < count($pieces); $i++) {//ou sizeof($pieces) //oou 
        if ($pieces[$i] == 'nome') {
            $select = "Select nome, ";
        } else
        if ($pieces[$i] == 'telefone') {
            $from = "from telefone ";
        }
        $where = $pieces[$i] . $where;
    }
    $palavra = $select . $from . $where;

    echo $palavra . " <br>aki";
}
