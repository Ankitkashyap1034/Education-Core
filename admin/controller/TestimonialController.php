<?php
	class TestimonialController{

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

		// @add
		public function add(){
			$data['title'] = 'Testimonial';
			$data['description'] = 'Testimonial';
			return admin('testimonial/add', $data);
		}

		// @store
		public function store(){
			$image = File::upload();
			if($image!==NULL){
				$values = [
					'testimonials_name' => $_POST['name'],
					'testimonials_designation' => $_POST['designation'],
					'testimonials_description' => $_POST['description'],
					'testimonials_rating' => $_POST['rating'],
					'testimonials_image' => $image,
					'testimonials_users' => session('user_id'),
					'testimonials_status' => 1,
					'testimonials_created_on' => date('Y-m-d H:i:s')
				];
				DB::table('testimonials')->insert($values);
				return redirect('admin/testimonials/add');
			}
		}
		
		// @listing
		public function listing(){
			$data['title'] = 'Testimonial';
			$data['description'] = 'Testimonial';
			return admin('testimonial/listing', $data);
		}
		
		// @listingData
		public function listingData(){
			$data['testimonials'] = DB::table('testimonials');
			$data['testimonials'] = $data['testimonials']->orderBy('testimonials_id', 'DESC');
			$data['testimonials'] = $data['testimonials']->get();
			$data['testimonials'] = $data['testimonials']->toArray();
			
			echo json_encode($data['testimonials']);
			exit;
		}

    }
