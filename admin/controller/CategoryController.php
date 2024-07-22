<?php
	class CategoryController{

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
			$data['title'] = 'Category';
			$data['description'] = 'Category';
			$data['categories'] = DB::table('categories');
			$data['categories'] = $data['categories']->orderBy('categories_id', 'DESC');
			$data['categories'] = $data['categories']->get();
			$data['categories'] = $data['categories']->toArray();
			return admin('category/add', $data);
		}

		public function store(){
			$slug = makeSlug($_POST['category_name'], 'categories');
			$values = [
				'categories_name' => $_POST['category_name'],
				'categories_slug' => $slug,
				'categories_show_on_header' => $_POST['show_on_header'],
				'categories_users' => session('user_id'),
				'categories_status' => 1,
				'categories_created_on' => date('Y-m-d H:i:s')
			];
			DB::table('categories')->insert($values);
			return redirect('admin/category/add');
		}

		public function update(){
			$id = $_POST['id'];
			$slug = makeSlug($_POST['category_name'], 'categories');
			$values = [
				'categories_name' => $_POST['category_name'],
				'categories_slug' => $slug,
				'categories_show_on_header' => $_POST['show_on_header'],
			];
			DB::table('categories')->where('categories_id', '=', $id)->update($values);
			return redirect('admin/category/add');
		}

		public function getCategoryById(){
			$id = $_POST['id'];
			$data['category'] = DB::table('categories');
			$data['category'] = $data['category']->where('categories_id', '=', $id);
			$data['category'] = $data['category']->first();
			$data['category'] = $data['category']->toArray();
			echo rendor_modal('category/edit-category-modal', $data);
		}

	}
