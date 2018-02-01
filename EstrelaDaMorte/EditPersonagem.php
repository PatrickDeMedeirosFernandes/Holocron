<?php
header('Content-Type: text/html; charset=utf-8');
session_start();
if (!isset($_SESSION['login'])) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-1);
    </script>';
} else {
    header('Content-Type: text/html; charset=utf-8');
    session_start();
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
        <!DOCTYPE html>
        <html lang="pt">
            <head> 
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <title><?= $_SESSION['login'] ?></title>
                <!-- Bootstrap Core CSS -->         
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            </head>
            <?php
            date_default_timezone_set('America/Sao_Paulo');

            if ($_SESSION['nivel'] == 1) {
                ?>
                <style>
                    form{
                        display: none
                    }
                </style> 
                <?php
            }

            include './Buscas/Lista_pergunta.php';
            $id = $_GET['id'];
            $user = $_SESSION['id'];
            ?>
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Atualizar Dado</h1>
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
                                $result3 = lista_personagem_Unico($id);
                                // output data of each row
                                $row3 = mysqli_fetch_assoc($result3)
                                ?>
                                <form class="form-group"  enctype="multipart/form-data"
                                      name="myForm" id="myForm"  action="../controller/AdEditNome.php" method="POST">
                                    <input type="hidden" id="fone" class="form-control" name="id" value="<?= $row3["id_personagem"] ?>"/>
                                    Valor <input type="text" class="form-control" id="fone" name="nome" value="<?= $row3["nome"] ?>" />
                                    <input type="submit" class="btn btn-block btn-success" value="enviar" /> 
                                </form>


                            </div>



                            <br>
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