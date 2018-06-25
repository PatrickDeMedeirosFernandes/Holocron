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

    $ComMais = Amais($text);
    $sql = "      SELECT idpergunta_keyworks,pergunta_key, u.resposta as respostaReal , 
                    MATCH (pergunta_key) AGAINST ('$ComMais' IN BOOLEAN MODE)
                  FROM `pergunta_keyworks` p 
                    LEFT JOIN resposta u ON p.resposta_id = u.id 
                    wHERE  MATCH (pergunta_key) AGAINST ('($ComMais)' IN BOOLEAN MODE) > 3
                    and p.valida = 1 and resposta is not null and resposta != ''
                    ORDER BY `textDiff` DESC
                    Limit 1

                  ";
    // echo $sql;
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
