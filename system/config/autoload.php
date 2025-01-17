<?php
	class Autoloader{
		public static function register(){
			@session_start();
			spl_autoload_register(function ($class) {
				$file = DIR_SYSTEM . 'config/' . $class.'.php';
				if (file_exists($file)) {
					require $file;
					return true;
				}
				return false;
			});
		}
	}
	Autoloader::register();