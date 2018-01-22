
<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Holocron - Chatbot de SW</a>
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <?php
                        $i = 0;
                        include './Buscas/Lista_Report.php';
                        $result2 = lista_report_limit10();
                        while (mysqli_fetch_assoc($result2)) {
                            $i++;
                        }
                        ?>
                        <strong> <span style="color: red; font-size: 15px;"><?php
                                if ($i >= 10) {
                                    echo "+".$i;
                                } ELSE {
                                    echo $i;
                                }
                                ?></span> </strong>
                        <i class="fa fa-envelope fa-fw"></i><i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages">
                        <?php
                        $result1 = lista_report_limit10();

                        if (mysqli_num_rows($result1) > 0) {
                            // output data of each row
                            while ($row = mysqli_fetch_assoc($result1)) {
                                ?>
                                <?php $string = mb_strimwidth($row["texto"], 0, 10, ""); ?>
                                <li>
                                    <a href="Duvida<?php echo $row["id_report"] ?>">
                                        <div>
                                            <strong><?= $row["nome"] ?></strong>
                                            <span class="pull-right text-muted">
                                                <em><?= $row["data_envio"] ?></em>
                                            </span>
                                        </div>
                                        <div><?= mb_strimwidth($string, 0, 20, "..."); ?></div>
                                    </a>
                                </li><br>
                                <?php
                            }
                        } else {
                            ?>
                            <li>
                                <a href="Report">
                                    <div>
                                        <strong>Sem Mensagens novas</strong>
                                    </div>
                                    <div>Sem Mensagens novas</div>
                                </a>
                            </li>   
                            <?php
                        }
                        ?>

                        <li class="divider"></li>


                        <li>
                            <a class="text-center" href="Report">
                                <strong>ver restantes</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>



                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-tasks">
                        <li>
                            <a href="#">
                                <div>
                                    <p>
                                        <strong>Pergunta</strong><br>
                                        <span>data</span>
                                    </p>

                                </div>
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a class="text-center" href="#">
                                <strong>Ver todas as resposta sem reposta</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-tasks -->
                </li>





                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="Editar_Usuario-<?=  $_SESSION['id'] ?>"><i class="fa fa-user fa-fw"></i>Meu Perfil</a>
                        </li>
                         <li class="divider"></li>
                        <li><a href="Sair"><i class="fa fa-sign-out fa-fw"></i> Sair</a>
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->