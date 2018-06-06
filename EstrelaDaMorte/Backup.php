<?php

header('Content-Type: text/html; charset=utf-8');
session_start();
if (!isset($_SESSION['login'])) {
    echo ' <script language="javascript">
        alert("<Logue>");
        window.history.go(-3);
    </script>';
} else if ($_SESSION['nivel'] == 0 || $_SESSION['nivel'] == 1 || $_SESSION['nivel'] == 2) {
    echo ' <script language="javascript">
        alert("<Logue Direito>");
        window.history.go(-3);
    </script>';
} else {

    date_default_timezone_set('America/Sao_Paulo');

    include '../controller/DB.php';
    $data = date("d-m-Y(H-s-i)");
// arquivo onde ficará os comandos para o restore
    $arq = fopen("../ANEXO/bak_Tcc_$data.sql", "w");
    $baixar = "../ANEXO/bak_Tcc_$data.sql";
// SET FOREIGN_KEY_CHECKS = 0; serve para desabilitar a validação dos relacionamentos
// no momento da restauração. Exemplo: criar a tabela itens_venda antes da venda
    fwrite($arq, "\r\n");

// obtém as tabelas do banco
    $tables = mysqli_query($conn, "show tables");

    echo "<h2> Backup dos dados do sistema </h2>";

    while ($linha_table = mysqli_fetch_array($tables)) {
        // obtém o nome da tabela
        $table = $linha_table[0];

        echo "<p> Copiando Tabela $table... </p>";

        $comando = mysqli_query($conn, "show create table $table");

        $linha = mysqli_fetch_array($comando);

        // grava o comando create table
        fwrite($arq, "\r\n" . $linha[1] . ";\r\n\r\n");

        // obtém os dados já inseridos nesta tabela
        $dados = mysqli_query($conn, "select * from $table");

        // percorre os registros obtidos
        while ($linha = mysqli_fetch_array($dados)) {
            // obtém os campos da tabela
            $campos = mysqli_query($conn, "show fields from $table");

            // variáveis para acumular nome das colunas e conteúdos
            $colunas = "";
            $conteudos = "";

            // percorre todos os campos da tabela
            while ($linha_campos = mysqli_fetch_array($campos)) {
                $campo = $linha_campos["Field"];

                $colunas = $colunas . $campo . ", ";
                $conteudos = $conteudos . "'" . $linha["$campo"] . "', ";
            }

            // para tirar a última ", "
            $colunas = substr($colunas, 0, -2);
            $conteudos = substr($conteudos, 0, -2);

            // comando insert
            $insere = "insert into $table($colunas) values($conteudos)";

            // grava o insert no arquivo
            fwrite($arq, $insere . ";\r\n");
        }
    }
    fclose($arq);

// fecha a conexão
    mysqli_close($conn);

    echo "<h3> Ok! Cópia Concluída </h3>
<a href='$baixar' >Baixar Copia $baixar </a><br>
<a href='index.php' >Voltar </a>

";
}