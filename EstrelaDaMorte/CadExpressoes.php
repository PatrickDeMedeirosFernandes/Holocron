<?php
// error 403 https://codepen.io/team/nclud/pen/GJpdVo?q=%20404%20&order=popularity&depth=everything&show_forks=false
include './includes/cabeca.php';
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
        <!-- /.panel-heading -->
        <div class="panel-body">
            <div class="row">
                <div class="col-lg-7">
                    <div class="table-responsive">
                        <form class="form-group"  enctype="multipart/form-data"
                              name="myForm" id="myForm"  action="../controller/AdDicionario.php" method="POST">
                            <label>Termo:</label>
                            <input type="text" id="fone" class="form-control" name="expressao"/>
                            <br>
                            <label>termos:</label>
                            <textarea type="text" id="fone" class="form-control" name="termos" placeholder="separar por ;"></textarea>
                            <br>
                            <input type="submit" class="btn btn-block btn-success" value="enviar" /> 
                        </form>

                    </div>
                    <!-- /.table-responsive -->

                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.panel-body -->
    </div>
    </div>
    <!-- /.row -->
    </div>

    <!-- /#page-wrapper -->
    <?php
    include './includes/rodape.php';
}