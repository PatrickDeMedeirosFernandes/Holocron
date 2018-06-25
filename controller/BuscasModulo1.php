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
    $SAIDA = '';
//SELECT pk.pergunta_key as pergunta,k.keyword,pk.idpergunta_keyworks as chave, SOUNDEX(keyword) AS score,SOUNDEX('Luke Skywalker') as as2, r.resposta as resultado FROM `keywords` k inner JOIN pergunta_keyworks pk ON k.pergunta_keyworks = pk.idpergunta_keyworks inner JOIN resposta r ON pk.resposta_id = r.id WHERE k.valida = 1 and SOUNDEX(keyword) = SOUNDEX('Luke Skywalker')
    $sql = "
                    SELECT idpergunta_keyworks,pergunta_key, u.resposta as respostaReal , 
                    LEVENSHTEIN_RATIO( '$text', `pergunta_key` ) as textDiff 
                    FROM `pergunta_keyworks` p 
                    LEFT JOIN resposta u ON p.resposta_id = u.id 
                    wHERE (LEVENSHTEIN_RATIO( '$text', `pergunta_key` )) > 87 
                    and p.valida = 1 and resposta is not null and resposta != ''
                    ORDER BY `textDiff` DESC
                    Limit 1

                  ";
    //echo $sql;
    $result2 = $conn->query($sql);
    if ($result2->num_rows > 0) {

        while ($linha2 = $result2->fetch_assoc()) {
            $aa = $linha2['respostaReal'];
            $SAIDA = $aa;
        }
    } else {
        $SAIDA = ' ';
    }










    return $SAIDA;
}
