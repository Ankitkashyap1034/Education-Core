<?php

	class Whatsapp {
	
		private $data;

		public static function register($data){
			$curl = curl_init();
			curl_setopt_array($curl, array(
				CURLOPT_URL => 'https://aksender.in/api/send?number='.$data["phone"].'&type=text&message=Hello%20'.$data["username"].'%20Your%20account%20verification%20link%20:%20'.(SITEURL.'email-verify/email?email='.$data["encodeEmail"]).'&instance_id='.WHATSAPP_INSTANCE_ID.'&access_token='.WHATSAPP_ACCESS_TOKEN,
				CURLOPT_RETURNTRANSFER => true,
				CURLOPT_ENCODING => '',
				CURLOPT_MAXREDIRS => 10,
				CURLOPT_TIMEOUT => 0,
				CURLOPT_FOLLOWLOCATION => true,
				CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
				CURLOPT_CUSTOMREQUEST => 'GET',
			));

			$response = curl_exec($curl);

			curl_close($curl);
			echo '<pre>';
			print_r($response);
		}

	}