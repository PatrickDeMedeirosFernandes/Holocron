<?PHP

////set_time_limit("1000");
/**
 * ele faz uma analise da frase que vai que foi enviada e busca no banco de dados alguma pergunta que seja igual a pergunta informada,
 *  e enviar uma resposta caso essa tenha no banco de dados
 * @param type String aqui ele recebe a frase em forma de string
 * @return string retorna a resposta caso tenha no banco de dados senhão envia vazio ==> ''
 */
function BuscaConcreta($text) {
    include '../controller/DB.php';

    $sql = "SELECT idpergunta_keyworks,pergunta_key,  (LEVENSHTEIN_RATIO('$text', `pergunta_key`)) as maior ,
        u.resposta as respostaReal , 
            SOUNDEX(pergunta_key) AS score,SOUNDEX('$text') as as2
            FROM `pergunta_keyworks` p 
            LEFT JOIN resposta u ON p.resposta_id = u.id 
            WHERE  p.valida = 1 and resposta is not null and resposta != ''
            and SOUNDEX(pergunta_key) = SOUNDEX('$text') and
                MATCH (pergunta_key) AGAINST ('($text)' IN BOOLEAN MODE) order by maior desc
           limit 1;";
    //  echo $sql;
    $result2 = $conn->query($sql);
    if ($result2->num_rows > 0) {
        $linha2 = $result2->fetch_assoc();
        $aa = $linha2['respostaReal'];
        return $SAIDA = $aa;
    } else {

        $text = trim(stopwords($text));
        $mai = (AmaisSom($text));
        //SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, SOUNDEX(keyword) AS score,SOUNDEX('Luke Skywalker') as as2, r.resposta as resultado FROM `keywords` k inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks inner JOIN resposta r ON pk.resposta_id = r.id WHERE k.valida = 1 and SOUNDEX(keyword) = SOUNDEX('Luke Skywalker')
        $sql = " SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave,    MATCH (keyword) AGAINST ('$mai' IN BOOLEAN MODE) ,
                  (LEVENSHTEIN_RATIO('$text', `keyword`)) as maior ,       
            SOUNDEX(keyword) AS score,SOUNDEX('$text') as as2, r.resposta as resultado
            FROM `keywords` k 
            inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks 
            inner JOIN resposta r ON pk.resposta_id = r.id 
            WHERE k.valida = 1 and SOUNDEX(keyword) = SOUNDEX('$text')  and
                MATCH (keyword) AGAINST ('$mai' IN BOOLEAN MODE)>1.2 and
                 pk.valida = 1 and resposta is not null and resposta != ''
                 limit 1;";
        //   echo $sql;
        $result2 = $conn->query($sql);
        if ($result2->num_rows > 0) {
            $linha2 = $result2->fetch_assoc();
            $aa = $linha2['resultado'];
            return $SAIDA = $aa;
        } else {
            return $SAIDA = ' ';
        }
    }









    return $SAIDA;
}
