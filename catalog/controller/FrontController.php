<?php
	class FrontController{

		function __construct(){
			require_once DIR_SYSTEM . 'helper/helper.php';
			$GLOBALS['categories'] = DB::table('categories');
			$GLOBALS['categories'] = $GLOBALS['categories']->where('categories_status', '=', 1);
			$GLOBALS['categories'] = $GLOBALS['categories']->where('categories_show_on_header', '=', 1);
			$GLOBALS['categories'] = $GLOBALS['categories']->get();
			$GLOBALS['categories'] = $GLOBALS['categories']->toArray();
		}

		// @index
		public function index(){
			$data['title'] = 'Home | '. STORENAME;
			$data['description'] = 'Home '. STORENAME;
			
			$data['testimonials'] = DB::table('testimonials');
			$data['testimonials'] = $data['testimonials']->orderBy('testimonials_id', 'DESC');
			$data['testimonials'] = $data['testimonials']->get();
			$data['testimonials'] = $data['testimonials']->toArray();
			
			$data['locationCategories'] = DB::table('location_categories');
			$data['locationCategories'] = $data['locationCategories']->orderBy('location_categories_id', 'DESC');
			$data['locationCategories'] = $data['locationCategories']->get();
			$data['locationCategories'] = $data['locationCategories']->toArray();
			
			$data['categories'] = DB::table('categories');
			$data['categories'] = $data['categories']->orderBy('categories_id', 'DESC');
			$data['categories'] = $data['categories']->get();
			$data['categories'] = $data['categories']->toArray();
			
			$data['tutors'] = DB::table('users');
			$data['tutors'] = $data['tutors']->where('users_role', '=', 2);
			$data['tutors'] = $data['tutors']->where('users_status', '=', 1);
			$data['tutors'] = $data['tutors']->orderBy('users_id', 'DESC');
			$data['tutors'] = $data['tutors']->get();
			$data['tutors'] = $data['tutors']->toArray();
			
			return view('index', $data);
		}

		// @login
		public function login(){
			$userData = Auth::user($_SESSION);
			if(empty($userData)){			
				$data['title'] = 'Login | '. STORENAME;
				$data['description'] = 'Login | '. STORENAME;
				return view('login', $data);
			}else{
				return redirect(null);
			}
		}
		
		// @register
		public function register(){
			$userData = Auth::user($_SESSION);
			if(empty($userData)){			
				$data['title'] = 'Register | '. STORENAME;
				$data['description'] = 'Register | '. STORENAME;
				
				$data['categories'] = DB::table('categories');
				$data['categories'] = $data['categories']->orderBy('categories_id', 'DESC');
				$data['categories'] = $data['categories']->get();
				$data['categories'] = $data['categories']->toArray();
				
				return view('register', $data);
			}else{
				return redirect(null);
			}
		}
		
		// @logout 
		public function logout(){
			$session = new session();
			$session->destroy();
			return redirect(null);
		}
		
		// @contactUs
		public function contactUs(){
			$data['title'] = 'Contact Us | '. STORENAME;
			$data['description'] = 'Contact Us | '. STORENAME;
			return view('contact-us', $data);
		}

		// @aboutUs
		public function aboutUs(){
			$data['title'] = 'About Us | '. STORENAME;
			$data['description'] = 'About Us | '. STORENAME;
			return view('about-us', $data);
		}

		// @subscriptions
		public function subscriptions(){
			$userData = Auth::user($_SESSION);
			if($userData->user_role===2){
				$data['title'] = 'Subscriptions | '. STORENAME;
				$data['description'] = 'Subscriptions | '. STORENAME;
				
				$data['subscriptions'] = DB::table('subscriptions');
				$data['subscriptions'] = $data['subscriptions']->where('subscriptions_status', '=', 1);
				$data['subscriptions'] = $data['subscriptions']->get();
				$data['subscriptions'] = $data['subscriptions']->toArray();
				
				return view('subscriptions', $data);	
			}else{
				return redirect(null);
			}
		}
		
		// @becomeTutor
		public function becomeTutor(){
			$userData = Auth::user($_SESSION);
			if(empty($userData)){			
				$data['title'] = 'Become a Tutor | '. STORENAME;
				$data['description'] = 'Become a Tutor | '. STORENAME;
				
				$data['categories'] = DB::table('categories');
				$data['categories'] = $data['categories']->orderBy('categories_id', 'DESC');
				$data['categories'] = $data['categories']->get();
				$data['categories'] = $data['categories']->toArray();
				
				return view('become-a-tutor', $data);
			}else{
				return redirect(null);
			}
		}
		
		// @getListingByCategorySlug
		public function getListingByCategorySlug($slug){
			echo $slug;
			die;
			// $categorySlug = $_GET['ct'];
			// $userData = Auth::user($_SESSION);
			// if(empty($userData)){
				// return redirect('?login=re-login');
			// }
		}
		
		// @emailVerify
		public function emailVerify(){
			if(!empty($_GET['email'])){
				$email = base64_decode($_GET['email']);
				$values = [
					'users_status' => 1
				];
				DB::table('users')->where('users_email', '=', $email)->update($values);
				return redirect('?login=re-login');
			}else{
				return redirect(null);
			}
		}
		
	}
