<?php

//https://github.com/phalt/swapi
/**
 * metodo não implmentado
 * @param type $str
 * @return type
 */
function saldacao($str) {
    if ($str == "-=saudacao=") {
        date_default_timezone_set('America/Sao_Paulo');
        $hora = date("H");
        if ($hora >= 6 && $hora < 12) {
            $str = "Bom dia!  Vamos falar sobre o que?";
        } elseif ($hora >= 12 && $hora < 18) {
            $str = "Boa tarde!  Vamos falar sobre o que?";
        } else {
            $str = "Boa noite!  Vamos falar sobre o que?";
        }
    } ELSE IF ($str == "=YES MY LORD=") {

        $str = '<iframe width="560" height="315" src="https://www.youtube.com/embed/MobJ0d7SaVM?rel=0&amp;controls=0&amp;showinfo=0&amp;start=18" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>';
    } ELSE IF ($str == "==fraseSW==") {

        $str = "Faça ou não faça. Tentativa não há.<br>-----<b>Mestre Yoda</b>";
    } ELSE IF ($str == "42") {
        $date = new DateTime('9999-12-31 23:59:59'); // data e hora de nascimento
        $interval = $date->diff(new DateTime()); // data e hora atual
        $algo = $interval->format('%Y Anos, %m Meses, %d Dias, %H Horas, %i Minutos e %s Segundos');
        $str = "A resposta, para a pergunta fundamental, qual sentido da vida, do universo e tudo mais, é algo que meus sistemas, levarão um tempo para calcular, volte aqui há " . $algo . ". A unica coisa que tenho certeza é que não é 42";
    } else {
        $str = $str;
    }
    return $str;
}

//https://canaltech.com.br/entretenimento/10-sites-e-apps-de-relacionamento-para-voce-encontrar-a-metade-de-sua-laranja/
//https://imasters.com.br/artigo/18121/linguagens/vicios-de-linguagem-de-programacao/?trace=1519021197&source=single
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
    // $texto = strtr(strtolower($texto), "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ", "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç");
    return $texto;
}

//Esta Função transforma o texto em maiúsculo respeitando a acentuação
function str_maiuscula($texto) {
    //  $texto = strtr(strtoupper($texto), "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç", "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ");
    return $texto;
}

//Esta Função transforma a primeira letra do texto em maiúsculo respeitando a acentuação
function primaria_maiuscula($texto) {
    // $texto = strtr(ucfirst($texto), "ÀÁÂÃÄÅÆÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖ×ØÙÜÚÞßÇ", "àáâãäåæçèéêëìíîïðñòóôõö÷øùüúþÿç");
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
    $palavra = preg_replace("[^a-zA-Z0-9]", "", strtr($palavra, "áàãâéêíóôõúüçÁÀÃÂÉÊÍÓÔÕÚÜÇ ", "aaaaeeiooouucAAAAEEIOOOUUC_"));

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

    $sql = " SELECT d.`texto`,u.expressao FROM `dicionario` d 
            LEFT JOIN expressoes u 
            ON d.`expressoes_idexpressoes` = u.idexpressoes  ;";
    $result = $conn->query($sql);
    $str = str_ireplace("-", "", $str);
    // $str = str_ireplace("\"", "\\\"", $str);
    $str = str_ireplace("'", "\'", $str);
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
            $aa = $linha['texto'];
            $bb = $linha['expressao'];
            $str = str_ireplace("$aa", " $bb ", $str);
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
            $nova_palavra = primaria_maiuscula($nova_palavra);
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
        $paragrafo = primaria_maiuscula($paragrafo);

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

function sanitizeString($string) {
    // matriz de entrada
    $what = array('ä', 'ã', 'à', 'á', 'â', 'ê', 'ë', 'è', 'é', 'ï', 'ì', 'í', 'ö', 'õ', 'ò', 'ó', 'ô', 'ü', 'ù', 'ú', 'û', 'À', 'Á', 'É', 'Í', 'Ó', 'Ú', 'ñ', 'Ñ', 'ç', 'Ç', ' ', '-', '(', ')', ',', ';', ':', '|', '!', '"', '#', '$', '%', '&', '/', '=', '?', '~', '^', '>', '<', 'ª', 'º');

    // matriz de saída
    $by = array('a', 'a', 'a', 'a', 'a', 'e', 'e', 'e', 'e', 'i', 'i', 'i', 'o', 'o', 'o', 'o', 'o', 'u', 'u', 'u', 'u', 'A', 'A', 'E', 'I', 'O', 'U', 'n', 'n', 'c', 'C', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ');

    // devolver a string
    return str_replace($what, $by, $string);
}

function get_client_ip() {
    $ip = '';
    if (getenv('HTTP_CLIENT_IP'))
        $ip = getenv('HTTP_CLIENT_IP');
    else if (getenv('HTTP_X_FORWARDED_FOR'))
        $ip = getenv('HTTP_X_FORWARDED_FOR');
    else if (getenv('HTTP_X_FORWARDED'))
        $ip = getenv('HTTP_X_FORWARDED');
    else if (getenv('HTTP_FORWARDED_FOR'))
        $ip = getenv('HTTP_FORWARDED_FOR');
    else if (getenv('HTTP_FORWARDED'))
        $ip = getenv('HTTP_FORWARDED');
    else if (getenv('REMOTE_ADDR'))
        $ip = getenv('REMOTE_ADDR');
    else
        $ip = 'UNKNOWN';
    return $ip;
}

function stopwords($str) {

    $what = array(
        ' quais ', 'quais ', ' também ', ' o ', ' de ', ' a ', ' e ', ' do ', ' da ', ' em ', ' tinham ', ' tive ',
        ' um ', ' para ', ' é ', ' com ', ' os ', ' no ', ' se ', ' na ', ' por ', ' teve ', ' teriam ',
        ' mais ', ' as ', ' dos ', ' como ', ' mas ', ' foi ', ' ao ', ' ele ', ' das ', ' tem ',
        ' à ', ' seu ', ' sua ', ' ou ', ' ser ', ' quando ', ' muito ', ' há ', ' nos ', ' tiverem ', ' terei ',
        ' já ', ' está ', ' eu ', ' só ', ' pelo ', ' pela ', ' até ', ' isso ', ' teríamos ',
        ' ela ', ' entre ', ' era ', ' depois ', ' sem ', ' mesmo ', ' foram ', ' fora ', ' tinha ', ' tínhamos ',
        ' aos ', ' ter ', ' seus ', ' quem ', ' nas ', ' me ', ' esse ', ' eles ', ' estamos ', ' seriam ',
        ' estão ', ' tinha ', ' foram ', ' essa ', ' num ', ' nem ', ' suas ', ' meu ', ' às ', ' # ', ' * ',
        ' minha ', ' têm ', ' numa ', ' pelos ', ' elas ', ' havia ', ' fossem ', ' for ', ' seríamos ',
        ' seja ', ' qual ', ' será ', ' nós ', ' tenho ', ' lhe ', ' deles ', ' essas ', ' esses ', ' pelas ',
        ' este ', ' fosse ', ' dele ', ' tu ', ' te ', ' vocês ', ' vos ', ' tem ', ' .. ', ' ... ',
        ' lhes ', ' meus ', ' minhas', ' teu ', ' tua ', ' teus ', ' tuas ', ' nosso ', ' nossa ',
        ' nossos ', ' nossas ', ' dela ', ' delas ', ' esta ', ' estes ', ' estas ', ' aquele ', ' aquela ',
        ' aqueles ', ' aquelas ', ' isto ', ' aquilo ', ' estou ', ' está ', ' tivemos ', ' tivéramos ',
        ' estão ', ' estive ', ' esteve ', ' estivemos ', ' estiveram ', ' estava ', ' estávamos ',
        ' estavam ', ' estivera ', ' estivéramos ', ' esteja ', ' estejamos ', ' estejam ', ' terá ', ' teremos ',
        ' estivesse ', ' estivéssemos ', ' estivessem ', ' estiver ', ' estivermos ', ' estiverem ',
        ' hei ', ' há ', ' havemos ', ' hão ', ' houve ', ' houvemos ', ' houveram ', ' houvera ',
        ' houvéramos ', ' haja ', ' hajamos ', ' hajam ', ' houvesse ', ' houvéssemos ', ' houvessem ',
        ' houver ', ' houvermos ', ' houverem ', ' houverei ', ' houverá ', ' houveremos ', ' houverão ',
        ' houveria ', ' houveríamos ', ' houveriam ', ' sou ', ' somos ', ' temos ', ' tém ',
        ' são ', ' era ', ' éramos ', ' eram ', ' fui ', ' foi ', ' fomos ', ' tiveram ', ' tivera ',
        ' fôramos ', ' seja ', ' sejamos ', ' sejam ', ' fosse ', ' fôssemos ', ' tiver ', ' tivermos ',
        ' formos ', ' forem ', ' serei ', ' será ', ' seremos ', ' serão ', ' seria ', ' terão ', ' teria ',
        ' tenha ', ' tenhamos ', ' tenham ', ' tivesse ', ' tivéssemos ', ' tivessem ', '  a  ',
        ' de ', ' a ', ' o ', 'por que ', ' e ', ' do ', ' da ', ' em ', 'qual ', ' quem ', ' seu ', 'quem ', ' é ', 'não', ' que ',
        '~', ':', ';', '/', '´', '´', '[', ']', '\'', '\\', 'que '
    );

    $str = str_ireplace($what, '  ', $str);
//    $str = ltrim($str, "o ");
//    $str = str_ireplace('/^\o\s*/', '', $str);
    return $str;
}

function dicionario($str) {
    //algumas palavras tem q ficar junto
    $real = array('Darth Vader', 'Darth Maul');

    $what = array('Darth_Vader', 'Darth_Maul');



    $str = str_replace($real, $what, $str);
    return $str;
}
function Amais($str) {
    //algumas palavras tem q ficar junto
    $real = array(  'Anakin Skywalker',
    'Jar Jar Binks',
    'Jabba O Hutt',
    'Lando Calrissian',
    'Stormtrooper',
    'Almirante Ackbar',
    'Obi-Wan Kenobi',
    'Luke Skywalker',
    'Leia Organa',
    'Yoda',
    'R2-D2',
    'C-3PO',
    'BB-8',
    'Han Solo',
    'Chewbacca',
    'Padmé Amidala',
    'Mace Windu',
    'Qui-Gon Jinn',
    'Ahsoka Tano',
    'Ezra',
    'Jaden Korr',
    'Poe Dameron',
    'Lando Calrissian',
    'Darth Maul',
    'Boba Fett',
    'Jango Fett',
    'Jabba the Hutt',
    'Conde Dooku',
    'Darth Tyranus',
    'General Grievous',
    'Sheev Palpatine',
    'Darth Sidious',
    'Finn',
    'Maz Kanata',
    'Rey',
    'Ben Solo',
    'Kylo Ren',
    'Darth Vader',
    'Princesa Leia',
    'Yoda',
    'Greedo',
    );

    $what = array(  '+Anakin +Skywalker',
    '+Jar +Jar +Binks',
    '+Jabba +O +Hutt',
    '+Lando +Calrissian',
    '+Stormtrooper',
    '+Almirante +Ackbar',
    '+Obi-Wan +Kenobi',
    '+Luke +Skywalker',
    '+Leia +Organa',
    '+Yoda',
    '+R2-D2',
    '+C-3PO',
    '+BB-8',
    '+Han +Solo',
    '+Chewbacca',
    '+Padmé +Amidala',
    '+Mace +Windu',
    '+Qui-Gon +Jinn',
    '+Ahsoka +Tano',
    '+Ezra',
    '+Jaden +Korr',
    '+Poe +Dameron',
    '+Lando +Calrissian',
    '+Darth +Maul',
    '+Boba +Fett',
    '+Jango +Fett',
    '+Jabba +the +Hutt',
    '+Conde +Dooku',
    '+Darth +Tyranus',
    '+General +Grievous',
    '+Sheev +Palpatine',
    '+Darth +Sidious',
    '+Finn',
    '+Maz +Kanata',
    '+Rey',
    '+Ben +Solo',
    '+Kylo +Ren',
    '+Darth +Vader',
    '+Princesa +Leia',
    '+Yoda',
    '+Greedo',
    );



    $str = str_replace($real, $what, $str);
    return $str;
}