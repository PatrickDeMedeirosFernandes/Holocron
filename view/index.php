<?php include '../includes/cabecalho.php'; 
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
        if(isset($_POST['nome'])){
            echo $torre;
        }
        
        ?>
        <!--<inpnut type="text" name="chat" id="chatbox" placeholder="Hi there! Type here to talk to me." onfocus="placeHolder()">-->
        <form method="post" action="">
            <input type="text" size="50" name="nome">
            <!--<input type="submit" value="Pergunte">-->
        </form>

    </div>

</div>
<?php
include '../includes/rodape.php';
