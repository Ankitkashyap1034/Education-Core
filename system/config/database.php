<?php
	$host 			= 		'localhost';
	$dbname 		= 		'education';
	$user 			= 		'root';
	$password 		= 		'';
	$dsn 			= 		"mysql:host=$host;dbname=$dbname;charset=UTF8";
	try {
		$pdo = new PDO($dsn, $user, $password);
		$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		if ($pdo) {
			$GLOBALS['pdo'] = $pdo;
		}
	} catch (PDOException $e) {
		echo "Connection failed: " . $e->getMessage();
		die();
	}