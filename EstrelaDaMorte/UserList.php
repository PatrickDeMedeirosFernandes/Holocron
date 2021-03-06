<?php
include './includes/cabeca.php';
include './Buscas/Lista_usuer.php';
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
                    <i class="fa fa-bar-chart-o fa-fw"></i>Lista de Usuarios         
                </div>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table-responsive table">
                                    <tr>
                                        <th>ID</th>
                                        <TH>Login</TH>
                                        <th>Nivel</th>
                                        <th>Ativo</th>
                                        <TH>frase</TH>
                                        <TH>frase_resposta</TH>
                                        <th>Ações</th>
                                    </tr>         
                                    <?php
                                    $result = lista_usuarios();
                                    if (mysqli_num_rows($result) > 0) {
                                        // output data of each row
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            ?>
                                            <tr>
                                                <td><?= $row["id_user"]; ?></td>
                                                <td><?= $row["login"]; ?></td>
                                                <td><?= $row["nivel"]; ?></td>
                                                <td><?php
                                                    if ($row["ativo"] == 1) {
                                                        echo 'Ativo';
                                                    } else {
                                                        echo 'Desativado';
                                                    }
                                                    ?></td>
                                                <td><?= $row["frase"]; ?></td>
                                                <td><?= $row["frase_resposta"]; ?></td>
                                                <td><a href="Editar_Usuario-<?= $row["id_user"]; ?>">Editar</a></td>
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
<!-- /#page-wrapper -->
<?php
include './includes/rodape.php';
