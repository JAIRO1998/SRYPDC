<?php 
$mysqli=new mysqli ("localhost", "root", "", "bd_srpdc");
	if($mysqli->connect_errno){
		echo "fallo al conectar: (".$mysqli->connect_errno.")".$mysqli
		->connect_error;

	}
?>