<?php
	class MenuController{

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
			$data['title'] = 'Menu';
			$data['description'] = 'Menu';
			$data['menus'] = DB::table('menus');
			$data['menus'] = $data['menus']->where('menus_parent', '=', 0);
			$data['menus'] = $data['menus']->orderBy('menus_order', 'ASC');
			$data['menus'] = $data['menus']->get();
			$data['menus'] = $data['menus']->toArray();
			return admin('menu/add', $data);
		}

		public function store(){
			$slug = makeSlug($_POST['menu_name'], 'menus');
			$values = [
				'menus_name' => $_POST['menu_name'],
				'menus_slug' => $slug,
				'menus_route' => $_POST['menu_route'],
				'menus_icons' => 'ph-list-dashes-thin',
				'menus_parent' => 0,
				'menus_order' => $_POST['menu_order'],
				'menus_users' => session('user_id'),
				'menus_status' => 1,
				'menus_created_on' => date('Y-m-d H:i:s'),
			];
			DB::table('menus')->insert($values);
			return redirect('admin/settings/menu');
		}

		public function update(){
			$id = $_POST['id'];
			$slug = makeSlug($_POST['menu_name'], 'menus');
			$values = [
				'menus_name' => $_POST['menu_name'],
				'menus_slug' => $slug,
				'menus_route' => $_POST['menu_route'],
				'menus_order' => $_POST['menu_order'],
			];
			DB::table('menus')->where('menus_id', '=', $id)->update($values);
			return redirect('admin/settings/menu');
		}

		public function delete(){
			$id = $_POST['id'];
			$values = [
				'menus_status' => 0
			];
			DB::table('menus')->where('menus_id', '=', $id)->update($values);
			echo 1;
		}

		public function getMenuById(){
			$id = $_POST['id'];
			$data['menu'] = DB::table('menus');
			$data['menu'] = $data['menu']->where('menus_id', '=', $id);
			$data['menu'] = $data['menu']->first();
			$data['menu'] = $data['menu']->toArray();
			echo rendor_modal('menu/edit-menu-modal', $data);
		}

	}
