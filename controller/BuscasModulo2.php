<?PHP

set_time_limit("1000");

function BuscaSimilar($text) {
    include '../controller/DB.php';
    $SAIDA = '';
    "SELECT `id_pergunta`, `pergunta`,`valida` ,u.resposta, id, LEVENSHTEIN_RATIO( '$text', `pergunta` ) as textDiff
 FROM `pergunta` p LEFT JOIN respota u ON p.resposta_pergunta = u.id HAVING textDiff > 70 and max(textDiff)
  ORDER BY `textDiff` DESC";

//https://www.google.com.br/search?ei=4n9TWsC5LoSUwgTb0Iv4Ag&q=wallpaper+full+hd+star+wars&oq=wallpaper+full+hd+st&gs_l=psy-ab.1.1.0l2j0i22i30k1l8.1382.1680.0.3407.2.2.0.0.0.0.189.355.0j2.2.0....0...1c.1.64.psy-ab..0.2.354...0i67k1.0.O4hITv21Jb8
//https://gist.github.com/Kovah/df90d336478a47d869b9683766cff718
    //https://stackoverflow.com/questions/4671378/levenshtein-mysql-php

    return $SAIDA;
}
