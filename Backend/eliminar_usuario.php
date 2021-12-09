<?php
require("../conexion.php");
require("../componentes/variables_session.php");
$id_user=$_SESSION['id_usuario'];
 
$id = $_REQUEST['id'];

$consulta="DELETE FROM usuarios where id_usuario='$id'";
$result=$mysqli->query($consulta);

$insertar = $mysqli->query("INSERT INTO tbl_log (tbl_log.id_registro, tbl_log.id_usuario, tbl_log.Modulo, tbl_log.accion, tbl_log.fecha) VALUES (NULL,'$id_user', 'Usuarios', 'Delete', '$fecha_hora')");

echo '<script>alert("Registro eliminado con exito")</script>';
echo "<script>location.href='../usuarios.php'</script>";
?>