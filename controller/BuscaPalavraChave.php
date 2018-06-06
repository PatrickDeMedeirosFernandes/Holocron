<?php
/**
 * Aqui será a função de verificação de metodos, com as palavras chave
 */
include './BuscasModulo3.php';
SELECT id, body, MATCH (title,body) AGAINST
        
     ('Security implications of running MySQL as root') AS score
     FROM articles WHERE MATCH (title,body) AGAINST
     ('Security implications of running MySQL as root');


