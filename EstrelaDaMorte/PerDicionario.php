<?php
include './includes/cabeca.php';
include './Buscas/Lista_pergunta.php';

if (!isset($_GET['pagina']))
{
    $pc = "1";
}
else
{
    $pc = $_GET['pagina'];
}
$total_reg = "50";
$inicio = $pc - 1;
$inicio = $inicio * $total_reg;
$limite = lista_dicionario2($inicio, $total_reg);
//$limite = mysqli_query($conn, $sql);
$todos = lista_dicionario();
$result = $limite;
$tr = mysqli_num_rows($todos); // verifica o número total de registros
$tp = $tr / $total_reg;
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

            <?php
            for ($i = 1; $i < $tp + 1; $i++)
            {
                echo "
                                        <a href='?pagina=$i'>
                                            <p  class='btn btn-primary'style='color:#fff; margin:-10px 5px 10px 5px' >"
                . $i .
                "</p></a>";
            }
            ?>
            <div class="panel panel-default">
                <div class="panel-heading">
                    <i class="fa fa-bar-chart-o fa-fw"></i>Lista de Tabela de KeyWord        
                </div>
                <!-- /.panel-heading -->
                <div class="panel-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="table-responsive">


                                <table class="table-responsive table">
                                    <tr>
                                        <th>ID</th>
                                        <TH>Expressão</TH>
                                        <TH>Significado</TH>
                                        <th>Apagar</th>
                                    </tr>
                                    <?php
                                    if (mysqli_num_rows($result) > 0)
                                    {
                                //        d.`texto`, u.expressao, idexpressoes
                                        // output data of each row
                                        while ($row = mysqli_fetch_assoc($result))
                                        {
                                            ?>
                                            <tr>
                                                <td><?= $row["idexpressoes"]; ?></td>
                                                <td><?= $row["texto"]; ?></td>
                                                <td><?= $row["expressao"]; ?></td>

                                                <td>
                                                    <a style="cursor: pointer;}" class="btn btn-danger" 
                                                       href="../Controller/ADExclusao.php?OQUE=<?=
                                                       base64_encode("DIC") . "&id=" .
                                                       base64_encode($row["idexpressoes"])
                                                       ?>">
                                                        EXCLUIR</a>
                                                </td>
                                            </tr>
                                            <?php
                                        }
                                    }
                                    else
                                    {
                                        ?>
                                        <tr>
                                            <td>Sem nenhum resultado</td>
                                        </tr>    
                                        <?php
                                    }
                                    ?>
                                </table>
                                <?php
                                for ($i = 1; $i < $tp + 1; $i++)
                                {
                                    echo "
                                        <a style='color:#fff; margin:0 1px' href='?pagina=$i'>
                                            <p  class='btn btn-primary'style='color:#fff; margin:0 5px' >"
                                    . $i .
                                    "</p></a>";
                                }
                                ?>
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