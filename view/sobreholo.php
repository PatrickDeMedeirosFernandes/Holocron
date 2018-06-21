<?php

include '../includes/top.php';
include '../includes/menu.php';
?>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link href="./scripts/sobreHolo.css" rel="stylesheet" type="text/css"/>
<!--https://codepen.io/geoffgraham/pen/BpwqOE?depth=everything&order=popularity&page=2&q=star+wars&show_forks=false-->
<!--<div id='bodybox'>-->
<!--    <h4>Holocron</h4>
    <p> Holocrom é um assistente virtual criado que conversa com você sobre a franquia de series e filmes
        <a href="Star_Wars">Star Wars</a>, criado por Patrick de Medeiros Fernandes como projeto de conclusão de curso, 
    </p>
    <br>-->
<!-- I did not find the text of the original generic. So here is a translation into my native language. -->
<!--//https://github.com/phalt/swapi-->
<audio loop id="audio">
    <source src="ANEXO/sw.ogg" type="audio/ogg">
    <source src="ANEXO/sw.mp3" type="audio/mpeg">
</audio>
<div id="wrapper">
    <div id="container">
        <div id="paragraph">
            <h2>Episode TCC</h2>
            <h1>Holocron o ChatBot de Star Wars</h1><Br><br>
            <p>Holocron é um chatbot criado por Patrick de Medeiros Fernandes, como trabalho de conclusão de curso.
                Para o curso de Analise e Desenvolvimento de sistemas, na Faculdade Senac da cidade de Pelotas, no 
                estado do Rio Grande do Sul.
                Criado no ano de 2018, sua primeira versão beta.
            </p>
            <p>
                Holocron foi criado, como um assistente virtual, para ajudar as fãns da franquia,
                podesse conversar e interagir, com um software sobre a franquia, um sistema que aloca-se um grande
                numero de informações, de uma forma que não fica-se tão formal e padrão como muitas Wikis, e sim um 
                sistema que pudesse conversar com as pessoas sobre aquele assunto, que ele gosta.</p>
            <p>
                Que é Star Wars
            </p>
            <p>
                O nome Holocron, surgiu com referencia a  receptáculos de informações,
                sendo a maioria deles usada para guardar os segredos do uso da Força para futuras gerações.
                O criador de um holocron praticamente transfere um pouco de sua personalidade para dentro do objeto e
                muitos deles têm um tipo de componente orgânico cristalizado, uma rara facilidade encontrada apenas em mundos remotos.
                E por este motivo teve a inspiração deste nome, já que de certa, forma, o HOLOCRON
                é um "receptáculo" de informações sobre a franquia.
            </p>
        </div>
    </div>
</div>
<script>
    audio = document.getElementById('audio');

    function play() {
        audio.play();
    }

    function pause() {
        audio.pause();
    }

    function stop() {
        audio.pause();
        audio.currentTime = 0;
    }

    function aumentar_volume() {
        if (audio.volume < 1)
            audio.volume += 0.1;
    }

    function diminuir_volume() {
        if (audio.volume > 0)
            audio.volume -= 0.1;
    }

    function mute() {
        if (audio.muted) {
            audio.muted = false;
        } else {
            audio.muted = true;
        }
    }


////////////////// replay e play do sobre holo
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
<!--=========================================================================================-->

<!--</div>-->
<?php

include '../includes/rodape.php';
