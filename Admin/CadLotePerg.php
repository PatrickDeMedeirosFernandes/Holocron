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
                        <h2>Adcionar arquivo CSV</h2>
                        <form class="form-group"  enctype="multipart/form-data"
                              name="myForm" id="myForm"  action="admin/controller/CSVADC.php" method="POST">
                            <input type="file" name="userfile"  class="btn btn-block btn-default">
                            <input type="submit" class="btn btn-block btn-success" value="enviar" /> 
                        </form>
                        <P>
                            <B>NOTA PARA O ENVIO DE ARQUIVO:</B>
                            <BR>
                            Para o enivio arquivos para o cadastro em massa no sistema, é necessário seguir oo arquivo .csv
                            <br>
                            ser arquivo tem que ser salvo em CSV separado por ponto e virgula ou virgulas.
                        </P>
                    </div>
                    <!-- /.table-responsive -->
                    <H4>Lista de Arquivos no sistema:</H4>
                    <?php
                    $pasta = '../admin/ANEXO/';

                    if (is_dir($pasta)) {
                        $diretorio = dir($pasta);

                        while (($arquivo = $diretorio->read()) !== false) {
                            if ($arquivo != "." && $arquivo != "..") {
                                echo '<br><a href="admin/ANEXO/' . $arquivo . '">' . $arquivo . '</a><br />';
                                $arquivo2 = fopen("../admin/ANEXO/" . $arquivo, "r");
//                            // Lê o conteúdo do arquivo
                            }
                        }

                        $diretorio->close();
                    } else {
                        echo 'A pasta não existe.';
                    }
                    ?>
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
