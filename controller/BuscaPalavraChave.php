<?php header('Content-type: text/html; charset=UTF-8'); ?>
<?php

include '../controller/EnlaceProbalitico.php';

/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
function BuscaKey($text, $time2 = 0) {
    if (isset($time2)) {
        $time = $time2;
    } else {
        $time = 0;
    }

    include '../controller/DB.php';
    $SAIDA = '';
    $i = 0;
    $NovaFrase = trim(stopwords(rtrim(ltrim(trim($text)))));

//trim pra limpar escesso de espaços no começo e no fim da frase
    if (substr_count(trim($NovaFrase), " ") <= 1) {
//pesquisar diretamente na tabela sobre o personagem
        if (BuscaTermoPersonagem($NovaFrase) != ' ') {
            return BuscaTermoPersonagem($NovaFrase);
        } else {
            if (buscaPorKeyWords($NovaFrase) != ' ') {
                return buscaPorKeyWords($NovaFrase);
            } else {
                return " ";
            }
        }
//=====================================================================================================
//=====================================================================================================
    } else {
//protocolo armagedom em caso de morete use isso

        if (buscaPorKeyWords($NovaFrase) != ' ') {
            return buscaPorKeyWords($NovaFrase);
        } else {
            return " ";
        }
    }
}
