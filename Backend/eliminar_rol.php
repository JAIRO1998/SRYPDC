<?php
require("../conexion.php");
require("../componentes/variables_session.php");
$id_user=$_SESSION['id_usuario'];
 
$id = $_REQUEST['id'];

$delete_rel = $mysqli->query("DELETE from rel_roles_modulos where id_rol='$id'");
$delete_rol = $mysqli->query("DELETE from roles where id_rol='$id'");


$insertar = $mysqli->query("INSERT INTO tbl_log (tbl_log.id_registro, tbl_log.id_usuario, tbl_log.Modulo, tbl_log.accion, tbl_log.fecha) VALUES (NULL,'$id_user', 'Roles', 'Delete', '$fecha_hora')");

echo '<script>alert("Registro eliminado con exito")</script>';
echo "<script>location.href='../gestion_roles.php'</script>";
?>