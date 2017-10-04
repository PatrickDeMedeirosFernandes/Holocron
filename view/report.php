<?php include '../includes/cabecalho.php'; ?>

<div id='bodybox'>

    <form role="form" action="enviar"  method="post" enctype="multipart/form-data">
        <input type="text" name="chat" id="chatbox" placeholder="Nome" onfocus="placeHolder()"><br>
        <br>        <input type="text" name="chat" id="chatbox" placeholder="Email" onfocus="placeHolder()"><br>
        <br>        <textarea rows="5" cols="60" ></textarea><br><br>
        <button type="submit" class="btn btn-default">Enviar</button>
    </form>
</div>
<?php
include '../includes/rodape.php';
