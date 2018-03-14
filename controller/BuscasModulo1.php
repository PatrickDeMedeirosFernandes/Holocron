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

    //BUSCA NA PRIEMIRA TABELA
    $sql = "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id FROM `pergunta` p
    LEFT JOIN respota u ON p.resposta_pergunta = u.id
    
    where p.pergunta = '$text' ;
           
            ";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        while ($linha = $result->fetch_assoc()) {
            $aa = $linha['resposta'];
            $SAIDA = $aa;
        }
    } else {
        
        
        
//BUSCA NA SEGUNDA TABALE
        $sql = "SELECT `id_perg_user`, `pergunta`, `valida`, `data`, u.resposta   
                FROM `perg_user` p
                LEFT JOIN respota u ON p.respota_perg_user = u.id
               where valida = 1 and pergunta = '$text';";
        $result2 = $conn->query($sql);
        if ($result2->num_rows > 0) {
            while ($linha2 = $result2->fetch_assoc()) {
                $aa = $linha2['resposta'];
                $SAIDA = $aa;
            }
        } else {
            
            
            
            
            
            
//BUSCA NA TERCEIRA TABELA
            $sql = "SELECT `id_perg_sem_resp`, `pergunta`, `data`, p.resposta as respostaEscrita, 
                `ip`, u.resposta as respotaReal 
                 FROM `perg_sem_resp` p
                 LEFT JOIN respota u ON p.resposta_pergunta = u.id 
                    where 
                    p.pergunta = '$text' and u.resposta is not null
                     or p.pergunta = '$text' and p.resposta is not null ;";
            $result2 = $conn->query($sql);
            if ($result2->num_rows > 0) {
                
                while ($linha2 = $result2->fetch_assoc()) {
                    $aa = $linha2['respotaReal'] . $linha2['respostaEscrita'];
                    $SAIDA = $aa;
                }
            } else {
                $SAIDA = ' ';
            }
        }



        //return ' ';
    }

    return $SAIDA;
}
