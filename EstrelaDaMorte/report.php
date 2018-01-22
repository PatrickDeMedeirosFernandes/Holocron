<?php
include './includes/cabeca.php';
//include './Buscas/Lista_Report.php';
?>



<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Área EstrelaDaMorteistrativa</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <!-- /.panel -->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i>Lista de Reports        
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">
                                <table class="table-responsive table">
                                    <thead class="thead-inverse">
                                        <tr>
                                            <TH>ID</TH>
                                            <TH>Nome</TH>
                                            <th>E-mail</th>
                                            <th>Data de envio</th>
                                            <th>Data de visualizado</th>
                                            <th>Visto?</th>
                                            <th>Quem Visualizou</th>
                                            <th>Texto</th>
                                        <tr>
                                    </thead>
                                    <tbody>

                                        <?php
                                       $result = lista_report();
                                        if (mysqli_num_rows($result) > 0) {
                                            // output data of each row
                                            while ($row = mysqli_fetch_assoc($result)) {
                                                ?>
                                                <?php $string = $row["texto"]; ?>

                                                <tr class="form-group">
                                                    <td><?= $row["id_report"] ?></td>       
                                                    <td><?= $row["nome"] ?></td>
                                                    <td><?= $row["email"] ?></td>
                                                    <td><?= $row["data_envio"] ?></td>
                                                    <td><?= $row["data_visto"] ?></td>
                                                    <td><?php
                                                        if ($row["visto"] == 0) {
                                                            echo 'não';
                                                        } else {
                                                            echo "sim";
                                                        }
                                                        ?></td>
                                                    <td><?= $row["user"] ?></td>
                                                    <td> <a href="Duvida<?php echo $row["id_report"] ?>"><?= mb_strimwidth($string, 0, 10, "..."); ?><br>Ver resto da mensagem</a></td>

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

                                    <tbody>


                                </table>

                            </div>
                            <!-- /.table-responsive -->
                        </div>
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
