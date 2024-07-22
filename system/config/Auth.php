<?php
    class Auth {
		
		public static function user($session = null){
			if(!empty($session)){
				return (object) $session;
			}
			return null;
		}
		
	}
		