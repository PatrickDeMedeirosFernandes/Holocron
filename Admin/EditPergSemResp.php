<?php
include './includes/cabeca.php';
include './Buscas/Lista_pergunta.php';
IF ($_SESSION['nivel'] == 3 || $_SESSION['nivel'] == 2) {
    $id = $_GET['id'];
} ELSE {
    echo ' <script language="javascript">
        alert("<Tu não tem poder nessa pagina>");
        window.history.go(-1);
    </script>';
}
$result = lista_pergunta_Sem_Resp_unica($id);
// output data of each row
$row = mysqli_fetch_assoc($result)
?>
<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Área administrativa </h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
        <div class="col-lg-12">
            <form class="form-group"  enctype="multipart/form-data"
                  action="controller/AdEdtPergSemResp.php" method="POST">
                <input type="hidden" value="<?= $row["id_perg_sem_resp"] ?>" name="id">

                <div class="form-group">
                    <label>Pergunta </label>
                    <textarea class="form-control" rows="3" name="pergunta"><?= $row["pergunta"] ?></textarea>
                </div>
                <div class="form-group">
                    <label>Resposta Não Cadastradas </label>
                    <textarea class="form-control" rows="3" name="reposta"></textarea>


                    <label>Resposta Cadastradas</label>
                    <select class="form-control" name="respostaQR">
                        <option value="">Não tem pergunta Cadastrada</option>
                        <?php
                        //=========================================
                        $result2 = resposta_Escolida($row["id"]);
                        if (mysqli_num_rows($result2) > 0) {
                            // output data of each row
                            while ($row = mysqli_fetch_assoc($result2)) {
                                ?>
                                <option value="<?= $row["id"] ?>"><?= $row["resposta"] ?></option>

                                <?php
                            }
                        } else {
                            ?>
                            <option value="">Não tem pergunta Cadastrada</option>

                            <?php
                        }
                        $resul = resposta();
                        if (mysqli_num_rows($resul) > 0) {
                            // output data of each row
                            while ($row = mysqli_fetch_assoc($resul)) {
                                ?>
                                <option value="<?= $row["id"] ?>"><?= $row["resposta"] ?></option>
                                <?php
                            }
                        } else {
                            ?>
                            <option value="">Não tem pergunta Cadastrada</option>
                            <?php
                        }
                        ?>
                    </select>
                </div>
                <button type="submit" class="btn btn-default">Enviar </button>
                <button type="reset" class="btn btn-default">Resetar</button>
            </form>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
    <?php
    include './includes/rodape.php';
    