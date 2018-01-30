<?php
if (!isset($_POST['NOME']) || $_POST['NOME'] == "" ||
        // !isset($_POST['reposta']) || $_POST['reposta'] == "" ||
        !isset($_POST['NOME']) || $_POST['NOME'] == "") {
    ?><script>
        alert('Verifique os campos');
        window.history.go(-1);
        //            window.location.href = '../EstrelaDaMorte';
    </script>
    <?PHP
} else {



    $I = 0;

    foreach ($_POST["VALOR"] as $produto) {
        if (empty($produto) || empty($_POST['DADO'][$I]) ||
                $produto == "" || $_POST['DADO'][$I] == "" 
                || $produto == " " || $_POST['DADO'][$I] == " ") {
        } else {
        
            echo $produto . "<É -->" . $_POST['DADO'][$I] . "<bR><bR>";    
        }

        $I++;
    }
}