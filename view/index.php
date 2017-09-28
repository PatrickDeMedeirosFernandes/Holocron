<?php include '../includes/cabecalho.php'; ?>
</div>
<div id='bodybox'>
    <div id='chatborder'>
        <p id="chatlog3" class="chatlog">&nbsp;</p>
        <p id="chatlog2" class="chatlog">&nbsp;</p>
        <p id="chatlog1" class="chatlog">&nbsp;</p>
        <form role="form" action="enviar"  method="post" enctype="multipart/form-data">
            <input type="text" name="chat" id="chatbox" placeholder="" onfocus="placeHolder()">
            <button type="submit" class="btn btn-default">Enviar</button>
        </form>

    </div>

    <br>
    <p>Escreva alguma mensagem</p>
</div>
<?php
include '../includes/rodape.php';
