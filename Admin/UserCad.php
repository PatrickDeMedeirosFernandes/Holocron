<?php include './includes/cabeca.php'; ?>



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
                  action="controller/AdUser.php" method="POST">
                <div class="form-group">
                    <label>Login* </label>
                    <input type="text" name="login" class="form-control" >
                </div>
                <div class="form-group">
                    <label>Senha* </label>
                    <input type="password" name="senha" class="form-control" >
                </div>
                <div class="form-group">
                    <label>Confirmar Senha* </label>
                    <input type="password" name="senha2" class="form-control" >
                </div>     

                <div class="form-group">
                    <label>Pergunta </label>
                    <textarea class="form-control" rows="3" name="pergunta"></textarea>
                </div>
                <div class="form-group">
                    <label>Resposta </label>
                    <textarea class="form-control" rows="3" name="resposta"></textarea>
                </div>
                <div class="form-group">
                    <label>Valida*</label>
                    <select class="form-control" name="valida">
                        <option value="1">sim</option>
                        <option value="0">não</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Nivel*</label>
                    <select class="form-control" name="nivel">
                        <option value="1">Visualizador</option>
                        <option value="2">Editor</option>
                        <option value="3">Admin</option>
                        <option value="0">Desativado</option>
                    </select>
                </div>
                <div class="form-group">
                    <label style="color: red">* Obrigatorio</label>

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
    