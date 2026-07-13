<?php
include "conexion.php";

$correo = $_POST["correo"];
$clave = $_POST["clave"];

$sql = "SELECT * FROM usuarios WHERE correo='$correo' AND password='$clave'";
$resultado = $conexion->query($sql);

if ($resultado->num_rows > 0) {
    echo "ok";
} else {
    echo "error";
}
?>