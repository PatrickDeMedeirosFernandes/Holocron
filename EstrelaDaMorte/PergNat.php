<?php
include './includes/cabeca.php';
include './Buscas/Lista_pergunta.php';
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
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i>Lista de Tabela de perguntas        
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table-responsive table">
                                    <tr>
                                        <th>ID</th>
                                        <TH>
                                            PERGUNTA
                                        </TH>
                                        <TH>resposta</TH>
                                        <th>Valida</th>
                                        <th>Ações</th>
                                    </tr>
                                    <?php
                                    $result = lista_pergunta_nativa();
                                    if (mysqli_num_rows($result) > 0) {
                                        // output data of each row
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            IF ($row["valida"] == 1) {
                                                $STATUS = 'SIM';
                                            } ELSE {
                                                $STATUS = 'NÃO';
                                            }
                                            ?>


                                            <tr>
                                                <td><?= $row["idpergunta_keyworks"]; ?></td>
                                                <td><?= $row["pergunta_key"]; ?></td>
                                                <td><?= $row["resposta"]; ?></td>
                                                <td><?= $STATUS ?></td>
                                                <td><a href="Editar_Pergunta_Nativa-<?= $row["idpergunta_keyworks"]; ?>">Editar</a></td>



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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
include './includes/rodape.php';
?>