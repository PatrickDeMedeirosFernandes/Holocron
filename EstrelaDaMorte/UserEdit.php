<?php
include './includes/cabeca.php';
include './Buscas/Lista_usuer.php';
IF ($_SESSION['nivel'] == 3) {
    $id = $_GET['id'];
} ELSE {
    $id = $_SESSION['id'];
}

$result = lista_usuarios_unico($id);
// output data of each row
$row = mysqli_fetch_assoc($result)
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
            <?php
            ?>
            <form class="form-group"  enctype="multipart/form-data"
                  action="../controller/EdtUser.php" method="POST">
                <input type="hidden" value="<?= $row["id_user"] ?>" name="id">
                <div class="form-group">
                    <label>Login </label>
                    <input type="text" name="login" class="form-control" value="<?= $row["login"] ?>" >
                </div>
                <div class="form-group">
                    <label>Senha </label>
                    <input type="password" name="senha" class="form-control"  value="">
                </div>
                <div class="form-group">
                    <label>Confirmar Senha </label>
                    <input type="password" name="senha2" class="form-control" value="">
                </div>       
                <div class="form-group">
                    <label>Pergunta </label>
                    <textarea class="form-control" rows="3" name="pergunta" value=""><?= $row["frase"] ?></textarea>
                </div>
                <div class="form-group">
                    <label>Resposta </label>
                    <textarea class="form-control" rows="3" name="resposta" ><?= $row["frase_resposta"] ?></textarea>
                </div>
                <?php IF ($_SESSION['nivel'] == 3) { ?>
                    <div class="form-group">
                        <label>Valida</label>
                        <select class="form-control" name="valida">
                            <option value="1" >sim</option>
                            <option value="0">não</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nivel</label>
                        <select class="form-control" name="nivel">
                            <option value="1">Visualizador</option>
                            <option value="2">Editor</option>
                            <option value="3">Admin</option>
                            <option value="0">Desativado</option>


                        </select>
                    </div>
                    <?php } ELSE {
                    ?>
                    <input type="hidden" value="<?= $row["nivel"] ?>" name="nivel">
                    <input type="hidden" value="<?= $row["ativo"] ?>" name="valida">

                <?php } ?>         



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
    