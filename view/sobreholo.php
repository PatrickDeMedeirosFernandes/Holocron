<?php 
include '../includes/top.php';
include '../includes/menu.php'; ?>
<!--https://codepen.io/geoffgraham/pen/BpwqOE?depth=everything&order=popularity&page=2&q=star+wars&show_forks=false-->
<!--<div id='bodybox'>-->
<!--    <h4>Holocron</h4>
    <p> Holocrom é um assistente virtual criado que conversa com você sobre a franquia de series e filmes
        <a href="Star_Wars">Star Wars</a>, criado por Patrick de Medeiros Fernandes como projeto de conclusão de curso, 
    </p>
    <br>-->
<!-- I did not find the text of the original generic. So here is a translation into my native language. -->
//COLOCAR MUSICA CERTA
<audio loop id="audio">
  <source src="view/Kalimba.ogg" type="audio/ogg">
  <source src="view/Kalimba.mp3" type="audio/mpeg">
</audio>

 
 
 
<script>
    audio = document.getElementById('audio');
 
    function play(){
        audio.play();
    }
 
    function pause(){
        audio.pause();
    }
 
    function stop(){
        audio.pause();
        audio.currentTime = 0;
    }
 
    function aumentar_volume(){
        if( audio.volume < 1)  audio.volume += 0.1;
    }
 
    function diminuir_volume(){
        if( audio.volume > 0)  audio.volume -= 0.1;
    }
         
    function mute(){
        if( audio.muted ){
            audio.muted = false;
        }else{
            audio.muted = true;
        }
    }
</script>
    <div id="wrapper">
        <div id="container">
            <div id="paragraph">
                <h2>Episode TCC</h2>
                <h1>Holocron o ChatBot de Star Wars</h1>
                <p>Com a destruição da Estrela da Morte, e com algumas informações destruidas pelos Rebeldes, o Império com medo que mais
                informações sejam destruidas pelas Forças Rebeldes, contratam um estudante de
                Analise e Desenvolvimento de Sistemas, da Faculdade de Tecnologia Senac Pelotas, chamado Patrick de Medeiros Fernandes </p>
                <P>Para fim de Desenolver um novo tipo de Holocron, um que pudesse ser capaz de conversar com ele, 
                 mas que também conte-se toda a base de informações, onde somente o alto comando do Império pode-se ter o acesso aquelas informações. </P>
                <p>Mas os planos não foram como o planejado, para a infelicidade do  Império o sistema ficou em aberto, onde todo e qualquer civil
                poderia ter o acesso e poder conversar com ele ... </p>
            </div>
        </div>
    </div>
<script type="text/javascript">
    //variables
    var $startButton = $('<div class="tableCellDiv"><input type="button" value="Start" onclick="play()"/></div>');
    var $replayButton = $('<div class="tableCellDiv"><input type="button" value="Replay" onclick="play()"/></div>');
    var $starWars = $('<div id="title"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/2000px-Star_Wars_Logo.svg.png"/></div>');
    var $aLongTimeAgo = $('<div class="tableCellDiv"><div id="aLongTimeAgo">Em uma galáxia muito, muito distante...</div></div>');
    var $crawl = $('#paragraph');
    var $container = $('#container');

//functions 
//starts animation
    function start() {
        $(this).detach();
        $("#wrapper").append($container);
        $aLongTimeAgo.fadeIn(2000).delay(1000).fadeOut(2000).queue(function () {
            $starWars.show().addClass("playFade");
            $crawl.show().addClass("playScroll").dequeue();
            
        });
        $crawl.one('webkitAnimationEnd mozanimationend msAnimationEnd animationend',
                function () {
                    // code to execute after animation ends
                    $(this).fadeOut(700);
                    $replayButton.fadeIn(1000);
                });
    }

//replays animation
    function replay() {
        $(this).detach();
        $("#wrapper").append($container);
        //clone aLongTimeAgo 
        $replayALongTimeAgo = $aLongTimeAgo.clone(true).remove().appendTo("#wrapper").hide().fadeIn(2000).delay(1000).fadeOut(2000).queue(function () {
            //clone starWars 
            $replayStarWars = $starWars.clone(true);
            $starWars.before($replayStarWars);
            $("." + $starWars.attr("class") + ":last").remove().appendTo("#wrapper");
            //clone Crawl
            $replayCrawl = $crawl.clone(true).show().one('webkitAnimationEnd mozanimationend msAnimationEnd animationend',
                    function () {
                        $(this).fadeOut(700);
                        $replayButton.appendTo("#wrapper").fadeIn(1000);
                    });
            $crawl.before($replayCrawl);
            $("." + $crawl.attr("class") + ":last").remove().appendTo("#container");
        });
        $aLongTimeAgo.before($replayALongTimeAgo);
        $("." + $aLongTimeAgo.attr("class") + ":last").remove().appendTo("#wrapper");

    }

//add a start button
    $("#wrapper").append($startButton);
//ass a replay button
    $("#wrapper").append($replayButton);
// add star wars title
    $("#wrapper").append($starWars);
//add aLongTimeAgo
    $("#wrapper").append($aLongTimeAgo);

//hide elements
    $starWars.hide();
    $crawl.hide();
    $aLongTimeAgo.hide();
    $replayButton.hide();

//start button
    $startButton.on("click", start);

//replay button
    $replayButton.on("click", replay);
</script>


<style>
    /*-- general stuff ------------------ */
    body {
        background: #000;
        overflow: hidden;
        text-align: center;
        font-size: 16px;
    }    #wrapper {
        display: table;
        width: 100%;
        height: 100%;
    }
    .tableCellDiv {
        display: table-cell;
        vertical-align: middle;
        text-align: center;
        position: relative;
        z-index: 999;
        width: 100%;
        height: 100vh;
    }
    /*-- image ------------------ */
    #title {
        width: 100%;
        height: 100%;
        position: absolute;
        top: 0;
        left: 0;
        display: block;
        text-align: center;
        color: #fee71f;
        z-index: 999;
    }
    img {
        width: 70%;
        margin-top: 10%;
    }
    .playFade {
        -webkit-animation: fadeAway 8s linear forwards;
        -moz-animation: fadeAway 8s linear forwards;
        animation: fadeAway 8s linear forwards;
    }
    /*-- text ------------------ */
    h1 {
        text-align: center;
        font-size: 48px;
    }
    h2 {
        text-align: center;
        font-size: 32px;
    }

    p {
        font-size: 32px;
    }

    .playScroll {
        -webkit-animation: scroll 70s linear forwards;
        -moz-animation: scroll 70s linear forwards;
        animation: scroll 70s linear forwards;
    }

    #aLongTimeAgo {
        width: 440px;
        position: relative;
        margin: 0 auto;
        display: block;
        font-size: 32px;
        text-align: justify;
        color: #00ffff;
        z-index: 999;
    }

    #container {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        margin: 0 auto;
        padding: 0;
        height: 100%;
        width: 822px;
        overflow: hidden;
        text-align: justify;
        color: #fee71f;
        transform-origin: 50%;
        transform: perspective( 600px) rotateX( 50deg);
    }

    #container:after {
        content: '';
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background: linear-gradient(top, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0) 100%);
        background: linear-gradient(to bottom, rgba(0, 0, 0, 1), rgba(0, 0, 0, 0) 100%);
        pointer-events: none;
    }

    #paragraph {
        position: relative;
        top: 100%;
        border: 1px solid black;
    }
    /*-- button ------------------*/

    input[type="button"] {
        position: relative;
        display: block;
        margin: 0 auto;
        border: solid 2px #fee71f;
        border-radius: 7px;
        width: 200px;
        height: 70px;
        background: none;
        color: #fee71f;
        font-size: 24px;
        font-weight: bold;
        cursor: pointer;
        z-index: 999;
    }
    /*-- keyframes ------------------ */

    @-webkit-keyframes fadeAway {
        0% {
            opacity: 1;
            -webkit-transform: scale(1.5) translateY(-0.75em);
        }
        100% {
            opacity: 0;
            -webkit-transform: scale(0) translateZ(-100em);
        }
    }

    @-moz-keyframes fadeAway {
        0% {
            opacity: 1;
            -moz-transform: scale(1.5) translateY(-0.75em);
        }
        100% {
            opacity: 0;
            -moz-transform: scale(0) translateZ(-100em);
        }
    }

    @keyframes fadeAway {
        0% {
            opacity: 1;
            transform: scale(1.5) translateY(-0.75em);
        }
        100% {
            opacity: 0;
            transform: scale(0) translateZ(-100em);
        }
    }

    @-webkit-keyframes scroll {
        100% {
            top: -475px;
        }
    }

    @-moz-keyframes scroll {
        100% {
            top: -475px;
        }
    }

    @keyframes scroll {
        100% {
            top: -475px;
        }
    }</style>
<!--</div>-->
<?php
include '../includes/rodape.php';
