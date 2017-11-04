<?php
function aa($sess) {
    $sess = str_replace("/teste/", "", $sess);
    $sess = str_replace("/TCC/", "", $sess);
    $sess = str_replace("/TCC-CHATBOT/", "", $sess);
    return $sess;
}
$a = aa($_SERVER['REQUEST_URI']); ?>
<div id='caixa'> 
    <div class="img3">
        <h1>Holocrom</h1>
        <h3>O chatterbot de Star Wars</h3>
    </div>
    <div class="img">
        <img  class="img2"  src="img/Holocron.png"  alt="logo"/></div>
</div>
<div id='caixa'>
    <div class='menu'>
        <ul>
            <li><a href='Home' <?php
                if ($a == "Home" || $a == "") {
                    echo "class='selecionado'";
                }
                ?> >Home</a></li>
            <li><a href='O_que_e_ChatterBot' <?php
                if ($a == "O_que_e_ChatterBot") {
                    echo "class='selecionado'";
                }
                ?> >O que é ChatBot</a></li>
            <li><a href='O_que_e_SW' <?php
                if ($a == "O_que_e_SW") {
                    echo "class='selecionado'";
                }
                ?> >O que é Star Wars </a></li>
            <!--   <li><a href='O_que_e_AI' <?php
            if ($a == "O_que_e_AI") {
                echo "class='selecionado'";
            }
            ?> >O que é AI</a></li>
            -->
            <li><a href='O_que_e_Holocron' <?php
                if ($a == "O_que_e_Holocron") {
                    echo "class='selecionado'";
                }
                ?> >O que é Holocron</a></li>
            <li><a href='Duvidas' <?php
                if ($a == "Duvidas") {
                    echo "class='selecionado'";
                }
                ?> >Contato</a></li>
        </ul>
    </div>

</div>