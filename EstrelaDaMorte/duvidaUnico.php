<?php
    include './includes/cabeca.php';

include './Buscas/Envia_Report.php';
$id = $_GET['id'];
$user =  $_SESSION['id'];
if (atualiza_quem_viu($id, $user)) {
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
                            $result3 = lista_report_unico($id);
                            if (mysqli_num_rows($result3) > 0) {
                                // output data of each row
                                $row = mysqli_fetch_assoc($result3)
                                ?>
                                <?php $string = $row["texto"]; ?>
                                <H2>Mesagem de: <?= $row["nome"] ?></H2>
                                <h3>Email: <?= $row["email"] ?></h3>
                                <p><b>Mensagem de ID:</b>      <?= $row["id_report"] ?><BR>
                                    <strong>Data enviada: <?= $row["data_envio"] ?></strong> </p><BR><BR>
                                <h3><strong>Mensagem</strong></h3>
                                <p><?= $string ?></p><br>


                                <BR><BR><BR><BR><BR><BR><BR>
                                <p>Ip do Usuario que enviou:  <?= $row["ip"] ?><br>
                                    <strong>Quem Visualisou: </strong>  <?= $row["user"] ?><br>
                                    <strong>Data da visualização: </strong> <?= $row["data_visto"] ?>

                                </p>

                           
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
}