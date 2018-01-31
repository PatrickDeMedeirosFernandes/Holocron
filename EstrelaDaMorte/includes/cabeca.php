<?php
header('Content-Type: text/html; charset=utf-8');
session_start();
if (!isset($_SESSION['login'])) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else if ($_SESSION['nivel'] == 0) {
    ?>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title><?= $_SESSION['login'] ?></title>
    <!-- Bootstrap Core CSS -->
    </head>
    <body>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">
                        <div class="input-group custom-search-form">
                            <a href="Sair"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
                        </div>
                        <!-- /input-group -->
                    </li>
                </ul>
            </div>
        </div>
        <?php
        date_default_timezone_set('America/Sao_Paulo');
    } else {
        ?>
        <!DOCTYPE html>
    <html lang="pt">
        <head>  <?php
            if ($_SESSION['nivel'] != 3) {
                ?>
                <script type='text/javascript'>
                    //desabilita menu de opcoes ao clicar no botao direito
                    function desabilitaMenu(e)
                    {
                        if (window.Event)
                        {
                            if (e.which == 2 || e.which == 3)
                                return false;
                        } else
                        {
                            event.cancelBubble = true
                            event.returnValue = false;
                            return false;
                        }
                    }
                    //desabilita botao direito
                    function desabilitaBotaoDireito(e)
                    {
                        if (window.Event)
                        {
                            if (e.which == 2 || e.which == 3)
                                return false;
                        } else
                        if (event.button == 2 || event.button == 3)
                        {
                            event.cancelBubble = true
                            event.returnValue = false;
                            return false;
                        }

                    }
                    //desabilita botao direito do mouse
                    if (window.Event)
                        document.captureEvents(Event.MOUSEUP);
                    if (document.layers)
                        document.captureEvents(Event.MOUSEDOWN);
                    document.oncontextmenu = desabilitaMenu;
                    document.onmousedown = desabilitaBotaoDireito;
                    document.onmouseup = desabilitaBotaoDireito;
                    //    //////////////////f12
                    //                document.onkeypress = function (event) {
                    //                    event = (event || window.event);
                    //                    if (event.keyCode == 123) {
                    //                        //alert('No F-12');
                    //                        return false;
                    //                    }
                    //                
                    //                };
                    //                document.onmousedown = function (event) {
                    //                    event = (event || window.event);
                    //                    if (event.keyCode == 123) {
                    //                        //alert('No F-keys');
                    //                        return false;
                    //                    }
                    //                    
                    //                };
                    //                document.onkeydown = function (event) {
                    //                    event = (event || window.event);
                    //                    if (event.keyCode == 123) {
                    //                        //alert('No F-keys');
                    //                        return false;
                    //                    }
                    //                  
                    //                };
                    //
                    //
                    //
                    //
                    //    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
                    /*function check(e)
                     {
                     alert(e.keyCode);
                     }*/
                    document.onkeydown = function (e) {
                        if (e.ctrlKey && e.keyCode === 16 && e.keyCode === 73
                                || e.ctrlKey && (e.keyCode === 67 || e.keyCode === 86 || e.keyCode === 85 || e.keyCode === 117)
                                || e.keyCode === 123) {
                            //Alt+c, Alt+v will also be disabled sadly.
                            //alert('not allowed');
                            return false;
                        } else {
                            return true;

                        }

                    };

                </script>
                <?php
            }
            ?>
            <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <title><?= $_SESSION['login'] ?></title>
            <!-- Bootstrap Core CSS -->
           
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

        </head>
        <?php
        date_default_timezone_set('America/Sao_Paulo');
        include 'menuTop.php';
        include 'menu.php';
        if ($_SESSION['nivel'] == 1) {
            ?>
            <style>
                form{
                    display: none
                }
            </style> 
            <?php
        }
    }