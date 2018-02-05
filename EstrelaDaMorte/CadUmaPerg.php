<?php
include './includes/cabeca.php';

include './Buscas/Lista_pergunta.php';
//header('Content-Type: text/html; charset=utf-8');
//session_start();
if (!isset($_SESSION['login'])) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else if ($_SESSION['nivel'] == 0) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else {
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
                <form class="form-group"  enctype="multipart/form-data"
                      action="../controller/AdPergunta.php" method="POST">

                    <div class="form-group">
                        <label>Pergunta </label>
                        <textarea class="form-control" rows="3" name="pergunta"></textarea>
                    </div>

                    <div class="form-group">
                        <label>Resposta Não Cadastradas </label>
                        <textarea class="form-control" rows="3" name="reposta"></textarea>

                        <label>Resposta Cadastradas</label>
                        <select class="form-control" name="repostaQW">
                            <option value=" ">Não tem resposta</option>
                            <?php
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
                                <option value=" ">Não tem pergunta Cadastrada</option>

                                <?php
                            }
                            ?>
                        </select>
                    </div>


                    <div class="form-group">
                        <label>Valida</label>
                        <select class="form-control" name="valida">
                            <option value="1">sim</option>
                            <option value="0">não</option>
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
    }