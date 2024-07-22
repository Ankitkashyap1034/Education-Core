<?php
	class AuthController{

		function __construct() {
			require_once DIR_SYSTEM . 'helper/helper.php';
		}

		public function authLogin(){
			require_once DIR_ADMIN . 'view/auth/login.tpl';
		}

		// @checkLogin
		public function checkLogin(){
		    $json = file_get_contents('php://input');
		    $request = json_decode($json, true);

			$username = $request['username'];
			$password = $request['password'];

			// check user exist in table
			$userExist = DB::table('users')->where('users_email', '=', $username)->where('users_status', '=', 1)->first()->toArray();
			if(!empty($userExist)){
				if(password_verify($password, $userExist[0]['users_password'])){
					$session = new session();
					$session->set("user_id", $userExist[0]['users_id']);
					$session->set("user_name", $userExist[0]['users_name']);
					$session->set("user_email", $userExist[0]['users_email']);
					$session->set("user_role", $userExist[0]['users_role']);
					if($userExist[0]['users_role']==121){
						echo 1; // user verified now user login
						die;
					}else{
						echo SITEURL;
						die;
					}
				}else{
					$session = new session();
					$session->destroy();
					echo 2; // wrong password
					die;
				}
			}else{
				$session = new session();
				$session->destroy();
				echo 3; // unknown user
				die;
			}
		}

		// @checkRegister
		public function checkRegister(){
			$json = file_get_contents('php://input');
			
			$requestData = json_decode($json, true);
			
			$username = "";
			$phone = "";
			$email = "";
			$role = "";
			$password = "";
			$userCourses = [];
			
			foreach ($requestData as $request) {
				if ($request['name'] === 'name') {
					$username = $request['value'];
				} elseif ($request['name'] === 'phone') {
					$phone = $request['value'];
				} elseif ($request['name'] === 'email') {
					$email = $request['value'];
				} elseif ($request['name'] === 'role') {
					$role = $request['value'];
				} elseif ($request['name'] === 'password') {
					$password = $request['value'];
				} elseif ($request['name'] === 'courses[]') {
					$userCourses[] = $request['value'];
				}
			}

			$uniqueArr = array_unique($userCourses);
			$courses = implode(',',$uniqueArr);
		
			$encodePhone = substr($phone, -10);
			
			// $encodeEmail = base64_encode($email);
			// $data = [
				// 'username' => $username,
				// 'encodeEmail' => $encodeEmail,
				// 'phone' => $encodePhone,
			// ];
			// Whatsapp::register($data);
			// die;
			
			if(!empty($username) && !empty($phone) && !empty($email) && !empty($password)){
				$encodeEmail = base64_encode($email);
				
				// Check if user exists in the table
				$userExist = DB::table('users')->where('users_email', '=', $email)->first()->toArray();
				if(empty($userExist)){
					$values = [
						'users_name' => $username,
						'users_email' => $email,
						'users_phone' => '+91'.$encodePhone,
						'users_password' => password_hash($password, PASSWORD_DEFAULT),
						'users_role' => $role,
						'users_courses' => $courses,
						'users_status' => 1,
						'users_created_on' => date('Y-m-d H:i:s')
					];
					DB::table('users')->insert($values);
					
					// Send verification link in WhatsApp //
					
					// Auto Login 
					$userExistNow = DB::table('users')->where('users_email', '=', $email)->first()->toArray();
					$session = new session();
					$session->set("user_id", $userExistNow[0]['users_id']);
					$session->set("user_name", $userExistNow[0]['users_name']);
					$session->set("user_email", $userExistNow[0]['users_email']);
					$session->set("user_role", $userExistNow[0]['users_role']);
					
					echo SITEURL;
					die;
				}else{
					echo 2; // already exists
					die;
				}
			}else{
				echo 3; // kindly fill all fields
				die;
			}
		}


	}
