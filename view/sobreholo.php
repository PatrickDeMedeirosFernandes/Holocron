<?php include '../includes/cabecalho.php'; ?>
<!--https://codepen.io/geoffgraham/pen/BpwqOE?depth=everything&order=popularity&page=2&q=star+wars&show_forks=false-->
<!--<div id='bodybox'>-->
<!--    <h4>Holocron</h4>
    <p> Holocrom é um assistente virtual criado que conversa com você sobre a franquia de series e filmes
        <a href="Star_Wars">Star Wars</a>, criado por Patrick de Medeiros Fernandes como projeto de conclusão de curso, 
    </p>
    <br>-->
<!-- I did not find the text of the original generic. So here is a translation into my native language. -->

    <div id="wrapper">
        <div id="container">

            <div id="paragraph">
                <h2>Episode V</h2>
                <h1>The Empire Strikes Back</h1>
                <p>It is a dark time for the Rebellion. Although the Death Star has been destroyed, Imperial troops have driven the
                    Rebel forces from their hidden base and pursued them across the galaxy.</p>

                <p>Evading the dreaded Imperial Starfleet, a group of freedom fighters led by Luke Skywalker has established a 
                    new secret base on the remote ice world of Hoth.</p>

                <p>The evil lord Darth Vader, obsessed with finding young Skywalker, has dispatched thousands of remote 
                    probes into the far reaches of space...</p>
            </div>
        </div>
    </div>

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

<script type="text/javascript">
    //variables
    var $startButton = $('<div class="tableCellDiv"><input type="button" value="Start"/></div>');
    var $replayButton = $('<div class="tableCellDiv"><input type="button" value="Replay"/></div>');
    var $starWars = $('<div id="title"><img src="https://upload.wikimedia.org/wikipedia/commons/thumb/6/6c/Star_Wars_Logo.svg/2000px-Star_Wars_Logo.svg.png"/></div>');
    var $aLongTimeAgo = $('<div class="tableCellDiv"><div id="aLongTimeAgo">A long time ago in a galaxy far, far away...</div></div>');
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
<!--</div>-->
<?php
include '../includes/rodape.php';
