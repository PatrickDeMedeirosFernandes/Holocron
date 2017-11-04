<?php include '../includes/cabecalho.php'; ?>

<div id='bodybox'>
    <center>
    <h3>Holocron</h3>
    <h4>Vamos conversar sobre Star Wars :)</h4>
    </center>
    <div id='chatborder'>
        <p id="chatlog7" class="chatlog">&nbsp;</p>
        <p id="chatlog6" class="chatlog">&nbsp;</p>
        <p id="chatlog5" class="chatlog">&nbsp;</p>
        <p id="chatlog4" class="chatlog">&nbsp;</p>
        <p id="chatlog3" class="chatlog">&nbsp;</p>
        <p id="chatlog2" class="chatlog">&nbsp;</p>
        <p id="chatlog1" class="chatlog">&nbsp;</p>
        <!--<input type="text" name="chat" id="chatbox" placeholder="Hi there! Type here to talk to me." onfocus="placeHolder()">-->
        <form role="form" action="enviar"  method="post" enctype="multipart/form-data">
            <input type="text" name="chat" id="chatbox" placeholder="Escreva alguma coisa" onfocus="placeHolder()">
            <!--<button type="submit" class="btn btn-default">Enviar</button>-->
        </form>
    </div>

    <br>
    <p></p>
</div>
<?php
include '../includes/rodape.php';
