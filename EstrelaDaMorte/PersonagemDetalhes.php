<?php
include './includes/cabeca.php';

include './Buscas/Lista_pergunta.php';
$id = $_GET['id'];
$user = $_SESSION['id'];
?>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Área administrativa</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <!-- /.panel -->
            <div class="panel-body">
                <div class="row">
                    <div class="col-lg-12">
                        <?php
                        $result3 = lista_personagem_Unico($id);
                        if (mysqli_num_rows($result3) > 0) {
                            // output data of each row
                            $row3 = mysqli_fetch_assoc($result3)
                            ?>
                            <H2>Nome: <?= $row3["nome"] ?></H2>


                            <h3><strong>Dados:</strong></h3>

                            <div class="table-responsive">
                                <table class="table-responsive table">
                                    <tr>
                                        <th>Id</th>
                                        <TH>Valor</TH>
                                        <TH>Dado</TH>
                                        <th>Ações</th>
                                    </tr>
                                    <?php
                                    $result = lista_personagem_dados($row3["id_personagem"]);
                                    if (mysqli_num_rows($result) > 0) {
                                        // output data of each row
                                        while ($row6 = mysqli_fetch_assoc($result)) {
                                            ?>
                                            <tr>
                                                <td><?= $row6["id_valor"]; ?></td>
                                                <td><?= $row6["valor"]; ?></td>
                                                <td><?= $row6["dado"]; ?></td>
                                                <td>                   
                                                    <a style="cursor: pointer;}" 
                                                       onclick="window.open('Editar_Dado-<?= $row6["id_valor"]; ?>',
     'Pagina', 'STATUS=NO, TOOLBAR=NO, LOCATION=NO, DIRECTORIES=NO, RESISABLE=NO, SCROLLBARS=YES, TOP=10, LEFT=10, WIDTH=770, HEIGHT=400');">
                                                        Editar</a>
</td>
                                            </tr>
                                            <?php
                                        }
                                    } else {
                                        ?>
                                        <tr>
                                            <td>Sem nenhum resultado</td>
                                        </tr>    
                                        <?php
                                    }
                                    ?>
                                </table>
                            </div>

                            <div>

                                <form class="form-group"  enctype="multipart/form-data"
                                      name="myForm" id="myForm"  action="../controller/AdValor.php" method="POST">
                                    <input type="hidden" id="fone" class="form-control" name="id" value="<?= $row3["id_personagem"] ?>"/>
                                    <br><br>
                                    Para outros ou mais detalhes clieque no botão de +
                                    <span  class="btn btn-info form" style="cursor: pointer;" onclick="duplicarCampos();">+</span>
                                    <span  class="btn btn-danger form" style="cursor: pointer;" onclick="removerCampos(this);">-</span>
                                    <br>

                                    <div id="origem">
                                        Valor <input type="text" class="form-control" id="fone" name="VALOR[]" />
                                        Dado <input type="text" class="form-control" id="fone" name="DADO[]" /> 
                                        <br>
                                    </div>

                                    <div id="destino">
                                    </div>

                                    <input type="submit" class="btn btn-block btn-success" value="enviar" /> 
                                </form>


                            </div>



                            <br>
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>

            <!-- /.col-lg-4 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
    <?php
    include './includes/rodape.php';
}