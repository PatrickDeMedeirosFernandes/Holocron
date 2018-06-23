<?php
header('Content-type: text/html; charset=UTF-8');
include '../controller/EnlaceProbalitico.php';
/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
function BuscaKey($text) {
    include '../controller/DB.php';
    $NovaFrase = trim(stopwords(rtrim(ltrim(trim($text)))));
    if (substr_count(trim($NovaFrase), ' ') <= 1) {
        if (BuscaTermoPersonagem($NovaFrase) != ' ') {
            return BuscaTermoPersonagem($NovaFrase);
        } else {
            if (buscaPorKeyWords($NovaFrase,$text) != ' ') {
                return buscaPorKeyWords($NovaFrase,$text);
            } else {
                return ' ';
            }
        }
//=====================================================================================================
    } else {//protocolo armagedom em caso de morete use isso
        if (buscaPorKeyWords($NovaFrase,$text) != ' ') {
            return buscaPorKeyWords($NovaFrase,$text);
        } else {
            return ' ';
        }
    }
}
