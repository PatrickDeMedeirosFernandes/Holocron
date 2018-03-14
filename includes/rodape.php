<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src='https://code.responsivevoice.org/responsivevoice.js'></script>

    <!--Script do responsivevoice-->
    <script src="http://code.responsivevoice.org/responsivevoice.js"></script>
    <!--link util: https://responsivevoice.org/text-to-speech-script-server/
    https://responsivevoice.org/api/
    
    
    
    https://codepen.io/suez/pen/KGaqD
    
    -->

<?php 
$respostaATT = sanitizeString($respostaATT);
$respostaATT = str_replace("\n", "", $respostaATT);

$respostaATT = trim($respostaATT);



?>
<script type="text/javascript">
    window.onload = function () {
        responsiveVoice.speak("<?= $respostaATT ?>", "Brazilian Portuguese Female");

    }
    
    
//http://eloquentjavascript.net/09_regexp.html
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
//https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API
//https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API
</script>

</body>
</html>
