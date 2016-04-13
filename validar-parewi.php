<meta charset="utf-8">
<?php
include("conexion.php");

$nombre = $_POST["nombre"];
$tipoequipo = $_POST["tipoequipo"];
$correo = $_POST["correo"];
$ram = $_POST["ram"];
$procesador = $_POST["procesador"];

$insertar = mysqli_query($conectar,"INSERT INTO parewi (nombredonador, tipoequipo, ram, procesador, email)
VALUES ('$nombre', '$tipoequipo', '$ram', '$procesador', '$correo')");
$idparticipante = mysqli_insert_id($conectar);
 
if(!$insertar){
    die("Fallo".mysql_error());
}
else{
    ?>
    <script>
        alert("Gracias por registrar tu equipo <?php echo $nombre; ?> te enviaremos un correo pronto");
    location.href = "index.php";
</script>
    <?php
}

?>