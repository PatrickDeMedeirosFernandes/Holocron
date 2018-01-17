<?php
include '../includes/cabecalho.php';
include '../controller/torreDeBabel.php';
?>
<div id='bodybox'>
    <center>
        <h3>Holocron</h3>
        <h4>Vamos conversar sobre Star Wars :)</h4>
    </center>
    <div id='chatborder' class="form-group">
        <p class='chatlog'>&nbsp;</p>
        <p class='chatlog'>&nbsp;</p> <?php
        if (isset($_POST['nome'])) {
echo            "<p class='chatlog'><B>Você: </B> " . $_POST['nome'] . "&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> " . $respostaATT . "&nbsp;</p>";
            //echo $torre;
            $bi =  $_POST['nome'];

        }else{
            $bi = '';
        }
        ?>
        <script>
    window.onload = function(){
        var beta = '<?= $bi  ?>';
        if(beta == "fala papai"){
        responsiveVoice.speak("MãMÃE", "UK English Male");

    }
    responsiveVoice.speak("<?= trim($respostaATT) ?>", "Brazilian Portuguese Female");

//    Speech('<?= trim($respostaATT) ?>');
}
    </script>
         <!--<inpnut type="text" name="chat" id="chatbox" placeholder="Hi there! Type here to talk to me." onfocus="placeHolder()">-->
        <form method="post" action="">
            <!--<input type="text" name="chat" id="chatbox" placeholder="Hi there! Type here to talk to me." >-->

            <input type="text" size="50" name="nome">
            <!--<input type="submit" value="Pergunte">-->
        </form>

    </div>

</div>
<?php
include '../includes/rodape.php';
