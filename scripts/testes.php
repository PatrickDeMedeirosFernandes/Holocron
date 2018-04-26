<?php
$a ='oi
        ';
$respostaATT = trim($a);

?>
czxczcs
    <!--Script do responsivevoice-->
    <script src="http://code.responsivevoice.org/responsivevoice.js"></script>
    <!--link util: https://responsivevoice.org/text-to-speech-script-server/
    https://responsivevoice.org/api/
    
    
    
    https://codepen.io/suez/pen/KGaqD
    
    -->

<script type="text/javascript">
window.onload = function(){

        
        // responsivevoice
responsiveVoice.speak("Olá Mundo", "Brazilian Portuguese Female");

//Speech
//    Speech('<?= $respostaATT ?>');
    
}

</script>
        <title>Holocrom - O ChatBot de STAR WARS</title>
<script>
    
    
    
//
////Codiogo para funciono o Speech
////https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API
//function Speech(say) {
//    
//    var utterance = new SpeechSynthesisUtterance(say);
//    //msg.voice = voices[10]; // Note: some voices don't support altering params
//    //msg.voiceURI = 'native';
//    //utterance.volume = 1; // 0 to 1
//    //utterance.rate = 0.1; // 0.1 to 10
//    //utterance.pitch = 1; //0 to 2
//    //utterance.text = 'Hello World';
//    //utterance.lang = 'en-US';
//    speechSynthesis.speak(utterance);
//  }
////runs the keypress() function when a key is pressed
//document.onkeypress = keyPress;
////if the key pressed is 'enter' runs the function newEntry()
//function keyPress(e) {
//  var x = e || window.event;
//  var key = (x.keyCode || x.which);
//  if (key == 13 || key == 3) {
//    //runs this function when enter is pressed
//    newEntry();
//  }
//  if (key == 38) {
//    console.log('hi')
//      //document.getElementById("chatbox").value = lastUserMessage;
//  }
//}
//
////clears the placeholder text ion the chatbox
////this function is set to run when the users brings focus to the chatbox, by clicking on it
//function placeHolder() {
//  document.getElementById("chatbox").placeholder = "";
//}
</script>

<?php

include '../includes/funcao.php';
if (empty($_POST['chat'])) {
    echo "<script>
            alert('Preencha todos os campos!');
   
            </script>";
    exit;
} else {
    $a = sanitizeString(// tira acentos
            strip_tags(//tira tags


                    $_POST['chat']));


    $first = "eu foi que matei?";
    $second = "quem te matou?";
    similar_text($first, $second, $percent); //Calcula o a proximidade de duas string e devolve a porcentagem
    echo $percent;


    if ($percent > 51) {
        echo "<br>Ok<br>";
    };


    echo "<br>";
    echo lcfirst($a); //Torna minúsculo o primeiro caractere de uma string

    echo "<br>";
    echo ucfirst($a); // Converte para maiúscula o primeiro caractere de uma string



    echo "<br>";
    echo strtolower($a); //onverte uma string para minúsculas



    echo "<br>";
    echo strtoupper($a); //Converte uma string para maiúsculas



    echo "<br>";
    echo lcfirst($a); //

    
    
    
    
    
    
    
    
    
    
    
    
    

    echo "<br>";
echo
strlen($a);//O tamanho da string em sucesso, e 0 se a string é vazia.












    echo "<br>";
    echo $a;









    echo "<br>";
    echo "<br>";
    echo "<br>";
    echo "<br>";
    
    
    
    
   
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    echo "<br>";
    echo "<br>";



    /**
     * MOdelo tesste de como será o monstador de sql
     */
    $pizza = $a;
    $pieces = explode(" ", $pizza);
    $select = "";
    $where = "";
    $from = "";

    for ($i = 0; $i < count($pieces); $i++) {//ou sizeof($pieces) //oou 
        if ($pieces[$i] == 'nome') {
            $select = "Select nome, ";
        } else
        if ($pieces[$i] == 'telefone') {
            $from = "from telefone ";
        }
        $where = $pieces[$i] . $where;
    }
    $palavra = $select . $from . $where;

    echo $palavra . " <br>aki";
}
