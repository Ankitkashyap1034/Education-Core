<?php
	class UserController{

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

		public function add(){
			$data['title'] = 'User';
			$data['description'] = 'User';
			$data['menus'] = DB::table('menus');
			$data['menus'] = $data['menus']->where('menus_parent', '=', 0);
			$data['menus'] = $data['menus']->orderBy('menus_order', 'ASC');
			$data['menus'] = $data['menus']->get();
			$data['menus'] = $data['menus']->toArray();
			return admin('user/add', $data);
		}

    }
