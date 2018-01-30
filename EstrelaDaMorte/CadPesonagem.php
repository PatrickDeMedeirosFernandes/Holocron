<?php include './includes/cabeca.php'; ?>



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
                    <script>

                        function duplicarCampos() {
                            var clone = document.getElementById('origem').cloneNode(true);
                            var destino = document.getElementById('destino');
                            destino.appendChild(clone);
                            var camposClonados = clone.getElementById('fone');
                            for (i = 0; i < camposClonados.length; i++) {
                                camposClonados[i].value = '';
                            }
                        }
                        function removerCampos(id) {
                            var node1 = document.getElementById('destino');
                            node1.removeChild(node1.childNodes[0]);
                        }

                    </script>
                    
                    arrumar isso
<select id="options" onchange="optionCheck()">
<script type="text/javascript">
    function optionCheck(){
        var option = document.getElementById("options").value;
        if(option == "show"){
            document.getElementById("hiddenDiv").style.visibility ="hidden";
        }
        if(option == "goto"){
              document.getElementById("hiddenDiv").style.visibility ="visible";
        }
    }
</script>

<option value="show">Mostra Div</option>
<option value="goto">Vai para o Google</option>

</select>

<div id="hiddenDiv" style="height:100px;width:300px;border:1px;visibility:hidden;">
Eu estou visível agora!
</div>
                    <form class="form-group"  enctype="multipart/form-data"
                          name="myForm" id="myForm"  action="../controller/AdPersonagem.php" method="POST">
                        <label>Nome:</label>

                        <input type="text" id="fone" class="form-control" name="NOME"/>
                        <br>
                        <select>
                            <option></option>
                        </select><br>
                        Valor <input value="Espécie" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="Gênero" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="Altura" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="Cor do cabelo" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="Cor dos olhos" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="Cor da pele" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
                        <br>
                        Valor <input value="" type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                        Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 

                        <br>
                        Para outros ou mais detalhes clieque no botão de +
                        <span  class="btn btn-info form" style="cursor: pointer;" onclick="duplicarCampos();">+</span>
                        <span  class="btn btn-danger form" style="cursor: pointer;" onclick="removerCampos(this);">-</span>
                        <br>

                        <div id="origem">
                            Valor <input type="text" class="form-control" id="fone" name="VALOR[]"  maxlength="14" size="14"/>
                            Dado <input type="text" class="form-control" id="fone" name="DADO[]"  maxlength="14" size="14"/> 
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
