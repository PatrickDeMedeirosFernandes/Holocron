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
                    <i class="fa fa-bar-chart-o fa-fw"></i>Lista de personagens
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
                                            Nome
                                        </TH>
                                        <TH>Mostar Dados</TH>

                                        <th>Ações</th>
                                    </tr>
                                    <?php
                                    $result = lista_personagem();
                                    if (mysqli_num_rows($result) > 0) {
                                        // output data of each row
                                        while ($row = mysqli_fetch_assoc($result)) {
                                            ?>
                                            <tr>
                                                <td><?= $row["id_personagem"]; ?></td>
                                                <td><?= $row["nome"]; ?></td>
                                                <td><a href="Detalhes_Personagem-<?= $row["id_personagem"]; ?>">Detalhes</a></td>
                                                <td>
                                                    <a style="cursor: pointer;}" 
                                                       onclick="window.open('Editar_Personagem-<?= $row["id_personagem"]; ?>',
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