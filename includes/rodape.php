
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<!--link util: https://responsivevoice.org/text-to-speech-script-server/
https://responsivevoice.org/api/
https://github.com/phalt/swapi
https://codepen.io/suez/pen/KGaqD
-->

<?php
//$respostaATT = sanitizeString($respostaATT);
//$respostaATT = str_replace("\n", "", $respostaATT);
//
$respostaATT = trim((strip_tags($respostaATT)));
$respostaATT = str_ireplace('vader', 'veider', $respostaATT);
$respostaATT = str_replace('VII', ' 7 ', $respostaATT);
$respostaATT = str_replace('VI', ' 6 ', $respostaATT);

$respostaATT = str_replace('IV', ' 4 ', $respostaATT);
$respostaATT = str_replace(' V ', ' 5 ', $respostaATT);
$respostaATT = str_replace('III ', ' 3 ', $respostaATT);
$respostaATT = str_replace('I ', ' 1 ', $respostaATT);
$respostaATT = str_replace('II ', ' 2 ', $respostaATT);
?>
<script type="text/javascript">
    window.onload = function () {
//        responsiveVoice.speak("<?= $respostaATT ?>", "Brazilian Portuguese Female");
        responsiveVoice.speak("<?= $respostaATT ?>", "Brazilian Portuguese Female");
//        alert('<?= $respostaATT ?>');
    };


//http://eloquentjavascript.net/09_regexp.html
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions
//https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API
//https://developers.google.com/web/updates/2014/01/Web-apps-that-talk-Introduction-to-the-Speech-Synthesis-API
</script>

</body>
</html>
