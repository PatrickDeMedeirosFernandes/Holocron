<?php
if (isset($_GET['fala'])) {
    $fala = $_GET['fala'];
} else {
    $fala = "nullteste";
}
set_time_limit(120);
$bi='';
//$n = rand(1, 16);
include '../includes/top.php';
?>



 
        <div id='caixa'> 
            <div class="img3">
                <h1>Holocron</h1>
                <h3>O chatterbot de Star Wars</h3>
            </div>
            <div class="img">
                <img  class="img2"  src="img/Holocron.png"  alt="logo"/></div>
        </div>
<?php
include '../includes/menu.php';
