<div class="navbar-default sidebar" role="navigation">
    <div class="sidebar-nav navbar-collapse">
        <ul class="nav" id="side-menu">
         <li>
                <a href="./ADM"><i class="fa fa-dashboard fa-fw active"></i> Home</a>
            </li>
            <li>
                <a href="Report"><i class="fa fa-edit fa-fw"></i>Duvidas</a>
            </li>
            <li>
                <a href="#"><i class="fa fa-wrench fa-fw"></i>Dados da Franquia<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="Cadastro_de_Personagem">Cadastro de Personagem</a>
                    </li> 
                    <li>
                            <a href="Lista_Personagem">Lista Personagem</a>
                    </li> 
       

                </ul>
                <!-- /.nav-second-level -->
            </li>
            <li>
                <a href="#"><i class="fa fa-wrench fa-fw"></i>Perguntas<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="Perguntas_Nativas">Perguntas Nativas</a>
                    </li> 
                    <li>
                        <a href="Perguntas_Sem_Resp">Pergunta do user sem resposta</a>
                    </li> 
                    <li>
                        <a href="Perguntas_Usuarios">Perguntas dos Usuarios resposta bot</a>
                    </li>
                    <li>
                        <!--<a href="Perguntas_Criadas_PorBot">Perguntas criadas do Bot</a>-->
                    </li>    
                    
            <?php if ($_SESSION['nivel'] == 3||$_SESSION['nivel'] == 2) { ?>
                    <li>
                        <a href="#">Cadastro de Perguntas <span class="fa arrow"></span></a>
                        <ul class="nav nav-third-level">
                            <li>
                                <a href="Cad-Lote-PergResp">Cadastro em Lote de Perguntas e respostas</a>
                            </li>
                            <li>
                                <a href="Cad-Uma-PergResp">Cadastro de uma Pergunta e resposta</a>
                            </li>
                        </ul>
                    </li>
            <?php } ?>

                </ul>
                <!-- /.nav-second-level -->
            </li>
            <?php if ($_SESSION['nivel'] == 3) { ?>
                <li>
                    <a href="#"><i class="fa fa-sitemap fa-fw"></i> Usuário<span class="fa arrow"></span></a>
                    <ul class="nav nav-second-level">
                        <li>
                            <a href="Lista_Usuarios">Lista usuário</a>
                        </li>
                        <li>
                            <a href="Cadastro_Usuario">Cadastro de Usuario</a>
                        </li>
                        <!--                              menu dendtro do menu
                        <li>
                                                            <a href="#">Third Level <span class="fa arrow"></span></a>
                                                            <ul class="nav nav-third-level">
                                                                <li>
                                                                    <a href="#">Third Level Item</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Third Level Item</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Third Level Item</a>
                                                                </li>
                                                                <li>
                                                                    <a href="#">Third Level Item</a>
                                                                </li>
                                                            </ul>
                                                             /.nav-third-level 
                                                        </li>-->
                    </ul>
                    <!-- /.nav-second-level -->
                </li>
                
                   <li>
                       <a href="./Backup.php"><i class="fa fa-dashboard fa-fw"></i> BackUp</a>
            </li>
            <?php } ?>
            <li>
                <a href="../home"><i class="fa fa-dashboard fa-fw"></i> Chatbot</a>
            </li>
        </ul>      
    </div>
    <!-- /.sidebar-collapse -->
</div>
<!-- /.navbar-static-side -->
</nav>

