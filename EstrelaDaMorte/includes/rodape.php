<?php
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
    </div>
    <link href="estilo/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="estilo/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="estilo/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="estilo/vendor/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="estilo/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="EstrelaDaMorte/estilo/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- MetisMenu CSS -->
    <link href="EstrelaDaMorte/estilo/vendor/metisMenu/metisMenu.min.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="EstrelaDaMorte/estilo/dist/css/sb-admin-2.css" rel="stylesheet">
    <!-- Morris Charts CSS -->
    <link href="EstrelaDaMorte/estilo/vendor/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="EstrelaDaMorte/estilo/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="estilo/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="estilo/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="estilo/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="estilo/vendor/raphael/raphael.min.js"></script>
    <script src="estilo/vendor/morrisjs/morris.min.js"></script>
    <script src="estilo/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="estilo/dist/js/sb-admin-2.js"></script>





    <!-- jQuery -->
    <script src="EstrelaDaMorte/estilo/vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="EstrelaDaMorte/estilo/vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="EstrelaDaMorte/estilo/vendor/metisMenu/metisMenu.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="EstrelaDaMorte/estilo/vendor/raphael/raphael.min.js"></script>
    <script src="EstrelaDaMorte/estilo/vendor/morrisjs/morris.min.js"></script>
    <script src="EstrelaDaMorte/estilo/data/morris-data.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="EstrelaDaMorte/estilo/dist/js/sb-admin-2.js"></script>


    <script>
        $("#selecionar").change(function () {
            var $this, secao, atual, campos;

            campos = $("div[data-name]");

            campos.addClass("hide");

            if (this.value !== "") {
                secao = $('option[data-section][value="' + this.value + '"]', this).attr("data-section");

                atual = campos.filter("[data-name=" + secao + "]");

                if (atual.length !== 0) {
                    atual.removeClass("hide");
                }
            }
        });</script>
    <style>.hide
        {
            display: none;
        }</style>



    <script>

        function duplicarCampos() {
            var clone = document.getElementById('origem').cloneNode(true);
            var destino = document.getElementById('destino');
            destino.appendChild(clone);
            var camposClonados = clone.getElementById('fone');
            for (i = 0; i < camposClonados.length; i++) {
                camposClonados[i].value = '';
            }
        }
        function removerCampos(id) {
            var node1 = document.getElementById('destino');
            node1.removeChild(node1.childNodes[0]);
        }

    </script>
    </body>

    </html>

<?php
}