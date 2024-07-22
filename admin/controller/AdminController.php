<?php
	class AdminController{

		function __construct() {
			require_once DIR_SYSTEM . 'helper/helper.php';
			authentication();
			$userData = Auth::user($_SESSION);
			$GLOBALS['menus'] = DB::table('menus');
			$GLOBALS['menus'] = $GLOBALS['menus']->where('menus_parent', '=', 0);
			$GLOBALS['menus'] = $GLOBALS['menus']->whereIn('menus_role_permission', [$userData->user_role]);
			$GLOBALS['menus'] = $GLOBALS['menus']->where('menus_status', '=', 1);
			$GLOBALS['menus'] = $GLOBALS['menus']->orderBy('menus_order', 'ASC');
			$GLOBALS['menus'] = $GLOBALS['menus']->get()->toArray();
		}

		// @dashboard
		public function dashboard(){
			$data['title'] = 'Home';
			$data['description'] = 'Home';
			return admin('dashboard', $data);
		}
		
		// @profile
		public function profile(){
			$userData = Auth::user($_SESSION);
			
			$data['title'] = 'Profile';
			$data['description'] = 'Profile';
			
			$data['profileData'] = DB::table('users');
			$data['profileData'] = $data['profileData']->where('users_id', '=', $userData->user_id);
			$data['profileData'] = $data['profileData']->get();
			$data['profileData'] = $data['profileData']->toArray();
			
			return admin('profile/profile', $data);
		}
		
		// @password
		public function password(){
			$userData = Auth::user($_SESSION);
			
			$data['title'] = 'Password';
			$data['description'] = 'Password';
			
			$data['profileData'] = DB::table('users');
			$data['profileData'] = $data['profileData']->where('users_id', '=', $userData->user_id);
			$data['profileData'] = $data['profileData']->get();
			$data['profileData'] = $data['profileData']->toArray();
			
			return admin('profile/password', $data);
		}

	}
