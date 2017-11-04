<?php include '../includes/cabecalho.php'; ?>

<div id='bodybox'>
    <H2>Contato</H2>
    <p>Caso tenha alguma duvida, sugestão, crítica, ou algum problema com o bot nós envie. </p>
    <br>
    <form role="form" action="enviar"  method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label for="Nome">Nome:</label>
            <input type="text" name="chat" id="chatbox" placeholder="Nome" onfocus="placeHolder()">
        </div>
        <div class="form-group">
            <label for="Email">Email:</label>
            <input type="text" name="Email" id="chatbox" placeholder="Email" onfocus="placeHolder()">
        </div>
        <div class="form-group">
            <label for="Texto">Texto:</label>
            <textarea rows="5" cols="60" ame="Texto" placeholder="Texto" ></textarea>
        </div>
        <button type="submit" class="btn btn-default">Enviar</button>
    </form>
</div>
<?php
include '../includes/rodape.php';
