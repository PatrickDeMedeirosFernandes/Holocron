<?php

// error 403 https://codepen.io/team/nclud/pen/GJpdVo?q=%20404%20&order=popularity&depth=everything&show_forks=false
include './includes/cabeca.php';
//header('Content-Type: text/html; charset=utf-8');
//session_start();
if (!isset($_SESSION['login'])) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else if ($_SESSION['nivel'] == 0) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else {
    ?>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Área administrativa</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-7">
                    <div class="table-responsive">
                        <h2>Adcionar novo personagem</h2>

                        <form class="form-group"  enctype="multipart/form-data"
                              name="myForm" id="myForm"  action="../controller/AdPersonagem.php" method="POST">
                            <label>Nome:</label>
                            <input type="text" id="fone" class="form-control" name="NOME"/>
                            <br>
                            <select  id="selecionar" class="form-control"  onchange="optionCheck()">
                                <option data-section="" value="">Selecione Uma Opção......</option>
                                <option data-section="per" value="per">Personagem</option>
                                <option data-section="nav"  value="nav">Nave</option>
                                <option data-section="rac"value="rac">Especie</option>
                                <option data-section="pla" value="pla">Planeta</option>
                                <option data-section="fc" value="fc">Fã Club</option>
                                <option data-section="droid"  value="droid">Droid</option>
                                <option data-section="ling"  value="ling">Lingua</option>
                                <option data-section="era"  value="era">Era</option>
                                <option data-section="cid"  value="cid">Cidade</option>
                                <option data-section="act"  value="act">Acontecimentos</option>

                                <option data-section="outro" value="outro">Outro</option>
                            </select>
                            <br>
                            Valor <input type="text" style="background-color: #000; color:#fff"  value="Sobre" class="form-control" id="fone" name="VALOR[]" />
                            Dado <input type="text" class="form-control" id="fone" name="DADO[]" /> 
                            <br>
                            Valor <input type="text" style="background-color: #000; color:#fff"  style="display: block" value="Resumo sobre" class="form-control" id="fone" name="VALOR[]" />
                            Dado <input type="text" class="form-control" id="fone" name="DADO[]" /> 
                            <br>
                            <div data-name="per" class="hide">
                                <?php
                                include './TIPOS/personagem.php';
                                ?>
                            </div>
                            <div data-name="nav" class="hide">
                                <?php
                                include './TIPOS/nave.php';
                                ?>
                            </div>
                            <div data-name="rac" class="hide">
                                <?php
                                include './TIPOS/raca.php';
                                ?>

                            </div>
                            <div data-name="pla"class="hide">
                                <?php
                                include './TIPOS/planeta.php';
                                ?>

                            </div>
                            <div data-name="fc" class="hide">
                                <?php
                                include './TIPOS/fanClube.php';
                                ?>
                            </div>
                            <div data-name="droid" class="hide">
                                <?php
                                include './TIPOS/droid.php';
                                ?>

                            </div> 
                            <div data-name="ling" class="hide">
                                <?php
                                include './TIPOS/lingua.php';
                                ?>
                            </div>
                            <div data-name="era" class="hide">
                                <?php
                                include './TIPOS/era.php';
                                ?>
                            </div> 
                            <div data-name="cid" class="hide">
                                <?php
                                include './TIPOS/cidade.php';
                                ?>
                            </div> 
                            
                                 <div data-name="act" class="hide">
                                <?php
                                include './TIPOS/acontecimento.php';
                                ?>
                            <div data-name="outro" class="hide">

                            </div> 
                            <br><br>
                            Para outros ou mais detalhes clieque no botão de +
                            <span  class="btn btn-info form" style="cursor: pointer;" onclick="duplicarCampos();">+</span>
                            <span  class="btn btn-danger form" style="cursor: pointer;" onclick="removerCampos(this);">-</span>
                            <br>

                            <div id="origem">
                                Valor <input type="text" style="background-color: #000; color:#fff" class="form-control" id="fone" name="VALOR[]" />
                                Dado <input type="text" class="form-control" id="fone" name="DADO[]" /> 
                                <br>
                            </div>

                            <div id="destino">
                            </div>

                            <input type="submit" class="btn btn-block btn-success" value="enviar" /> 
                        </form>

                    </div>
                    <!-- /.table-responsive -->

                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.panel-body -->
    </div>
    </div>
    <!-- /.row -->
    </div>

    <!-- /#page-wrapper -->
    <?php
    include './includes/rodape.php';
}