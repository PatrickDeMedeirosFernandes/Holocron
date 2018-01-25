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
        <p class='chatlog'>&nbsp;</p>
       <?php
        if (isset($_POST['nome'])) {
            echo "<p class='chatlog'><B>Você: </B> " . $_POST['nome'] . "&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> " . $respostaATT . "&nbsp;</p>";
            //echo $torre;
            $bi = $_POST['nome'];
        } else {

            echo "<p class='chatlog'>&nbsp;</p><BR>"
            . "<p class='chatlog'><b>Holocron:  </B> Olá tudo bem? Vamos conversar sobre Star Wars? &nbsp;</p>";

            $bi = '';
            $respostaATT = "Olá tudo bem? Vamos conversar sobre Star Wars?";
        }
        ?>  
        <p class='chatlog'>&nbsp;</p>
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
