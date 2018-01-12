<?php

/**
 * metodo não implmentado
 * @param type $str
 * @return type
 */
function saldacao($str) {
    return $str;
}
//
//https://imasters.com.br/artigo/18121/linguagens/vicios-de-linguagem-de-programacao/?trace=1519021197&source=single
//https://imasters.com.br/artigo/11364/php/voce-quis-dizer-com-php/?trace=1519021197&source=single
//http://www.paulocollares.com.br/2011/12/filtro-gramatical-em-php/
# Filtro maior
###################################################################################################################################################
####################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
###################################################################################################################################################
# Paulo Collares Moreira Neto
# 27 de dezembro de 2011
# www.paulocollares.com.br
###########################################
// ############### LIMPADORES #####################

function str_minuscula($texto) {
    $texto = strtr(strtolower($texto), "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ", "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç");
    return $texto;
}

//Esta Função transforma o texto em maiúsculo respeitando a acentuação
function str_maiuscula($texto) {
    $texto = strtr(strtoupper($texto), "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ");
    return $texto;
}

//Esta Função transforma a primeira letra do texto em maiúsculo respeitando a acentuação
function primaira_maiuscula($texto) {
    $texto = strtr(ucfirst($texto), "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ", "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç");
    return $texto;
}

//Verifica se a palavra está toda em maiúscula
function comparaPalavraMaiuscula($palavra) {

    $palavra = str_replace(" ", "", $palavra);

    if ($palavra == "") {
        return false;
    }
    if ($palavra == "[:p:]") {
        return false;
    }
    if (strlen($palavra) <= 1) {
        return false;
    }
    $palavra = ereg_replace("[^a-zA-Z0-9]", "", strtr($palavra, "áàãâéêíóôõúüçÁÀÃÂÉÊÍÓÔÕÚÜÇ ", "aaaaeeiooouucAAAAEEIOOOUUC_"));

    if ($palavra == str_maiuscula($palavra)) {
        return true;
    }

    return false;
}

/**
 * Função dicionario, serve para limpar vicios, termos, girias de linguagem
 * @param type $str  a linha que vai ser moadificada
 * @return type  o valor corrigido
 * trazer a lista de expressoes a serem corrigidas
 */
function CodeLimpaNeve($str) {
    include '../controller/DB.php';
    $sql = "SELECT `expressao`, `significado` FROM `dicionario`  ;";
    $result = $conn->query($sql);
    $str = str_replace("-", "", $str);
    $str = str_replace("\"", "\\\"", $str);
    $str = str_replace("'", "\'", $str);
//LIMPA ESPAÇOS EXTRAS
    $str = preg_replace('/\s\s+/', ' ', $str);
//coloca tudo em minusculo
    // $str = strtolower($str);
//tira o ?
    $str = trim($str, '? ');
//tira o !
    $str = trim($str, '! ');
//tira o .
    $str = trim($str, '. ');
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            $aa = $linha['expressao'];
            $bb = $linha['significado'];
            $str = str_replace("$aa", "$bb", $str);
        }
    }
    return $str;
}

# REVISAR
###########################################
# Paulo Collares Moreira Neto
# 27 de dezembro de 2011
# www.paulocollares.com.br
###########################################
//Esta Função transforma o texto em minúsculo respeitando a acentuação
/////////////////////////////////
//Filtro
/////////////////////////////////
/**
 * Função que serve para ajeitar e limpar a frase enviada para uma frase,melhor formatada
 * @param type String recebe a frase
 * @return type String retorna o texto já formatado
 */
function nomes($texto) {
$texto = CodeLimpaNeve($texto);
    //Variáveis
    $pontuacoes = array(",", ".", "!", "?", ";");

    $array_abreviado = array("vc", "tb", "jesus", "naum", "ñ", "pq");
    $array_abr_certo = array("você", "também", "Jesus", "não", "não", "porque");

    //Prepara paragrafo
    $texto = str_replace("
", "[:p:]", $texto);

    //acerta maiúscula e minúscula e inicia as sentenças com a primeira letra maiúscula
    $array = explode(" ", $texto);
    $novo_texto = "";
    $tam_array = count($array);

    for ($i = 0; $i < $tam_array; $i++) {
        $palavra = $array[$i];

        if (comparaPalavraMaiuscula($palavra)) {
            $nova_palavra = str_minuscula($palavra);
        } else {
            $nova_palavra = $palavra;
        }

        $caracter_anterior = substr($array[$i], -1);
        $caracter_anterior_paragrafo = substr($array[$i], -5);

        if ($caracter_anterior == "." || $caracter_anterior == "!" || $caracter_anterior == "?" || $caracter_anterior_paragrafo == "[:p:]" || $i == 0) {
            $nova_palavra = primaira_maiuscula($nova_palavra);
        }

        $novo_texto .= $nova_palavra . " ";
    }

    $texto = $novo_texto;

    //Adicionar espaçoes depois das pontuações e remover antes
    for ($i = 0; $i < count($pontuacoes); $i++) {
        $ponto = $pontuacoes[$i];
        $texto = str_replace(" " . $ponto . " ", $ponto . " ", $texto);
        $texto = str_replace(" " . $ponto, $ponto . " ", $texto);
        $texto = str_replace($ponto, $ponto . " ", $texto);
    }

    //acerta parênteses
    $texto = str_replace(" ( ", " (", $texto);
    $texto = str_replace("( ", " (", $texto);
    $texto = str_replace("(", " (", $texto);
    $texto = str_replace(" ) ", ") ", $texto);
    $texto = str_replace(" )", ") ", $texto);
    $texto = str_replace(")", ") ", $texto);

    //acerta redicencias
    $texto = str_replace(". . .", "...", $texto);

    //remove mais de uma ! e ?
    $texto = str_replace("! ! ! ", "!", $texto);
    $texto = str_replace("! ! ", "!", $texto);
    $texto = str_replace("!!", "!", $texto);
    $texto = str_replace("? ? ? ", "?", $texto);
    $texto = str_replace("? ? ", "?", $texto);
    $texto = str_replace("??", "?", $texto);

    //remover espaçoes em branco extras
    $texto = str_replace("   ", " ", $texto);
    $texto = str_replace("  ", " ", $texto);
    $texto = str_replace("  ", " ", $texto);

    //Adicionar paragrafo
    $texto = str_replace("\n", "", $texto);
    $texto = str_replace("\r", "", $texto);

    for ($i = 0; $i <= 10; $i++)
        $texto = str_replace("[:p:][:p:]", "[:p:]", $texto);

    $array = explode("[:p:]", $texto);
    $novo_texto = "";
    $tam_array = count($array);
    for ($i = 0; $i < $tam_array; $i++) {
        $paragrafo = $array[$i];

        $paragrafo = trim($paragrafo);
        $paragrafo = trim($paragrafo, ",");
        $paragrafo = primaira_maiuscula($paragrafo);

        if ($paragrafo == "") {
            break;
        }
        $ultimo_caracter = substr($paragrafo, -1);
//
//        if ($ultimo_caracter != '.' && $ultimo_caracter != '!' && $ultimo_caracter != '?' && $ultimo_caracter != ':' && $ultimo_caracter != ';') {
//            $paragrafo .= ".";
//        }

        if ($i != $tam_array) {
            $novo_texto .= $paragrafo . "

        ";
        }
    }

    $texto = $novo_texto;
    //Expandir palavras abreviadas
    $texto = str_replace($array_abreviado, $array_abr_certo, $texto);


    return $texto;
}
