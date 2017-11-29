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
              action="controller/AdPergunta.php" method="POST">
                         
                <div class="form-group">
                    <label>Pergunta </label>
                    <textarea class="form-control" rows="3" name="pergunta"></textarea>
                </div>
                <div class="form-group">
                    <label>Resposta </label>
                    <textarea class="form-control" rows="3" name="reposta"></textarea>
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
    