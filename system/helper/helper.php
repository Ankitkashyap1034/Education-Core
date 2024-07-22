<?php
	require_once DIR_SYSTEM . 'config/DB.php';

	// authentication
	if(!function_exists('authentication')){
		function authentication(){
			require_once DIR_SYSTEM . 'config/session.php';
			$session = new session();
			if(empty($session->get('user_id'))){
				$session->destroy();
				redirect('login');
				exit;
			}elseif(!empty($session->get('user_id'))){
				if($session->get('user_role')===1){
					redirect(null);
					exit;
				}
				if($session->get('user_role')===2){
					$checkSubscription = check_subscription(Auth::user($_SESSION)->user_id);
					if($checkSubscription===false){						
						// redirect('subscriptions');
						// exit;
					}
				}
			}
		}
	}

	// active menu :: admin
	if(!function_exists('active_menu')){
		function active_menu($params){
			echo $params;
			exit;
		}
	}

	// redirect
	if(!function_exists('redirect')){
		function redirect($url){
			if($url === null){
				header('location: '. BASEURL);
				EXIT;
			}
			header('location: '. BASEURL.$url);
			EXIT;
		}
	}

	// session value
	if(!function_exists('session')){
		function session($key){
			require_once DIR_SYSTEM . 'config/session.php';
			$session = new session();
			return $session->get($key);
		}
	}

	// view
	if(!function_exists('view')){
		function view($params, $data){
			require_once DIR_THEME . 'layouts/header.tpl';
			require_once DIR_THEME . $params.'.tpl';
			require_once DIR_THEME . 'layouts/footer.tpl';
		}
	}

	// admin view
	if(!function_exists('admin')){
		function admin($params, $data){
			require_once DIR_ADMIN . 'view/layouts/header.tpl';
			require_once DIR_ADMIN . 'view/' . $params.'.tpl';
			require_once DIR_ADMIN . 'view/layouts/footer.tpl';
		}
	}

	// rendor modal view
	if(!function_exists('rendor_modal')){
		function rendor_modal($params, $data){
			require_once DIR_ADMIN . 'view/' . $params.'.tpl';
		}
	}

	// view modal view
	if(!function_exists('view_modal')){
		function view_modal($params, $data){
			require_once DIR_THEME . 'view/' . $params.'.tpl';
		}
	}

	// makeSlug
	if(!function_exists('makeSlug')){
		function makeSlug($title, $table){
			$text = preg_replace('~[^\pL\d]+~u', '-', $title);
		    $text = iconv('utf-8', 'us-ascii//TRANSLIT', $text);
		    $text = preg_replace('~[^-\w]+~', '', $text);
		    $text = trim($text, '-');
		    $text = preg_replace('~-+~', '-', $text);
		    $text = strtolower($text);

			$slug = DB::table($table);
			$slug = $slug->where($table.'_name', '=', $title);
			$slug = $slug->get()->toArray();
			$nowSlug = $text.'-'.count($slug)+1;
			return $nowSlug;
		}
	}
	
	// dd
	if(!function_exists('dd')){
		function dd($args) {
			echo '<pre>';
				print_r($args);
			echo '</pre>';
			exit;
		}
	}
	
	// get data by id 
	if(!function_exists('get_data_by_id')){
		function get_data_by_id($id, $table) {
			$data = DB::table($table);
			$data = $data->where($table.'_id', '=', $id);
			$data = $data->first()->toArray();
			return $data;
		}
	}

	// check subscription
	if(!function_exists('check_subscription')){
		function check_subscription($id){
			$todayDate = date('Y-m-d');
			$data = DB::table('users');
			$data = $data->where('users_id', '=', $id);
			$data = $data->first()->toArray();
			if($data[0]['users_subscription_end_on']!==NULL){				
				if(date('Y-m-d')<date('Y-m-d', strtotime($data[0]['users_subscription_end_on']))){
					return true;
				}
				return false;
			}
			return false;
		}
	}