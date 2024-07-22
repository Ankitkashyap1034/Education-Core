<?php
	
	// Debug
	define('APP_DEBUG', TRUE);
	
	if(APP_DEBUG===TRUE){
		ini_set('display_errors', 1);
		ini_set('display_startup_errors', 1);
		error_reporting(E_ALL);
	}else{
		ini_set('display_errors', 0);
		ini_set('display_startup_errors', 0);
		error_reporting(E_ALL);
	}
	
	// Configuration
	if (is_file('startup.php')) {
		require_once('startup.php');
	}
	
	