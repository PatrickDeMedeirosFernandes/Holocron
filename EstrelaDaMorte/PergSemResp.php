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
                                            Pergunta
                                        </TH>
                                        <TH>resposta</TH>
                                        <th>Data de Envio</th>
                                        <th>Ip</th>
                                        <th>Ações</th>
                                    </tr>
                                    <?php
                                    $result = lista_pergunta_Sem_Resp();
                                    if (mysqli_num_rows($result) > 0) {
                                        // output data of each row
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            ?>
                                            <tr>
                                                <td><?= $row["id_perg_sem_resp"]; ?></td>
                                                <td><?= $row["pergunta"]; ?></td>
                                                <td><?= $row["respostaEscrita"] . $row["respostaReal"]; ?></td>
                                                <td><?= $row["data"]; ?></td>
                                                <td><?= $row["ip"]; ?></td>
                                                <td><a href="Editar_Pergunta_SemResp-<?= $row["id_perg_sem_resp"]; ?>">Editar</a></td>
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