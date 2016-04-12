<meta charset="utf-8">
<?php
include("conexion.php");

$nombre = $_POST["nombre"];
$apellido = $_POST["apellido"];
$correo = $_POST["email"];
$taller = $_POST["taller"];



$ids = explode(",", $taller);
foreach ($ids as $id){
    $insertar = mysqli_query($conectar,"INSERT INTO participante (nombre, apellido, correo, idtaller)
VALUES ('$nombre', '$apellido', '$correo', '$id')");
$idparticipante = mysqli_insert_id($conectar);
}
 if(!$insertar){
    die("Fallo".mysql_error());
}
else{
    ?>
    <script>
        alert("Gracias por registrarte <?php echo $nombre; ?>");
    location.href = "index.php";
</script>
    <?php
}

?>