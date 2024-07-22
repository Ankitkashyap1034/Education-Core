<?php
	// @define
	require_once('system/config/define.php');
	
	// @require
	require_once(DIR_SYSTEM . 			'config/database.php');
	require_once(DIR_SYSTEM . 			'config/autoload.php');
	require_once(DIR_SYSTEM . 			'routes/web.php');

	// @dispatch 
	Route::dispatch();
