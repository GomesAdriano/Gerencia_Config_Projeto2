<?php
	define('HOST', 'localhost');
	define('USER', 'root');
	define('PASS', '');
	define('DB', 'acolhemais');		
	
	$conn = mysqli_connect(HOST, USER, PASS, DB) or die('Não foi possivel se conectar ao Banco de dados!');
?>