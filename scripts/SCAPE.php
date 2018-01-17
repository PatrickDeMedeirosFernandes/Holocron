<?php
$a ='oi
        ';
$respostaATT = trim($a);

?>
<div id='bodybox'>
  <div id='chatborder'>
    <p id="chatlog7" class="chatlog">&nbsp;</p>
    <p id="chatlog6" class="chatlog">&nbsp;</p>
    <p id="chatlog5" class="chatlog">&nbsp;</p>
    <p id="chatlog4" class="chatlog">&nbsp;</p>
    <p id="chatlog3" class="chatlog">&nbsp;</p>
    <p id="chatlog2" class="chatlog">&nbsp;</p>
    <p id="chatlog1" class="chatlog">&nbsp;</p>
    <input type="submit" >
  </div>
    <!--Script do responsivevoice-->
    <script src="http://code.responsivevoice.org/responsivevoice.js"></script>
    <!--link util: https://responsivevoice.org/text-to-speech-script-server/
    https://responsivevoice.org/api/
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