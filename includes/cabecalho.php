<?php
if (isset($_GET['fala'])) {
    $fala = $_GET['fala'];
} else {
    $fala = "nullteste";
}
$n = rand(1, 16);
include '../includes/top.php';
?>



 
        <div id='caixa'> 
            <div class="img3">
                <h1>Holocrom</h1>
                <h3>O chatterbot de Star Wars</h3>
            </div>
            <div class="img">
                <img  class="img2"  src="img/Holocron.png"  alt="logo"/></div>
        </div>
<?php
include '../includes/menu.php';
