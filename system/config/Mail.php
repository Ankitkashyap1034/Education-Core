<?php

	class Mail {
	
		private $bcc = [];
		private $cc = [];
		private $to = [];
		private $subject;

		public static function send($view, $data, $callback){
			
			require(DIR_SYSTEM . "library/phpmailer/src/PHPMailer.php");
			require(DIR_SYSTEM . "library/phpmailer/src/Exception.php");
			require(DIR_SYSTEM . "library/phpmailer/src/SMTP.php");
			
			$mailSelf = new self();
			$callback($mailSelf);
			
			$multipleBccs = $mailSelf->bcc;
			$multipleCcs = $mailSelf->cc;
			$multipleTos = $mailSelf->to;
			
			// Create an instance; passing `true` enables exceptions
			$mail = new PHPMailer\PHPMailer\PHPMailer();

			try {
				// Server settings
				$mail->SMTPDebug = FALSE;                      				//Enable verbose debug output
				$mail->isSMTP();                                            //Send using SMTP
				$mail->Host       = MAIL_HOST;                     			//Set the SMTP server to send through
				$mail->SMTPAuth   = TRUE;                                   //Enable SMTP authentication
				$mail->Username   = MAIL_USERNAME;                     		//SMTP username
				$mail->Password   = MAIL_PASSWORD;                          //SMTP password
				$mail->SMTPSecure = 'TLS';            						//Enable implicit TLS encryption
				$mail->Port       = MAIL_PORT;                              //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

				// Sender
				$mail->setFrom(MAIL_USERNAME, STORENAME);
				
				// To
				foreach($multipleTos as $multipleTo){
					$mail->addAddress($multipleTo);
				}
				
				// $mail->addReplyTo('info@example.com', 'Information');
				// $mail->addCC('cc@example.com');
				// $mail->addBCC('bcc@example.com');

				// Attachments
				// $mail->addAttachment('/var/tmp/file.tar.gz');         	//Add attachments
				// $mail->addAttachment('/tmp/image.jpg', 'new.jpg');    	//Optional name

				// Content
				$mail->isHTML(true);                                  		//Set email format to HTML
				$mail->Subject = $mailSelf->subject;
				$mail->Body = file_get_contents(DIR_THEME . 'mail/' . $view . '.tpl');
				
				extract($data);
				ob_start();
				include(DIR_THEME . 'mail/' . $view . '.tpl');
				$mail->Body = ob_get_clean();
				
				$mail->send();
				return true;
			} catch (Exception $e) {
				// echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
				return $mail->ErrorInfo;
			}
		}

		public function bcc($bcc){
			if (is_array($bcc)) {
				$this->bcc = array_merge($this->bcc, $bcc);
			} else {
				$this->bcc[] = $bcc;
			}
		}

		public function cc($cc){
			if (is_array($cc)) {
				$this->cc = array_merge($this->cc, $cc);
			} else {
				$this->cc[] = $cc;
			}
		}

		public function to($to){
			if (is_array($to)) {
				$this->to = array_merge($this->to, $to);
			} else {
				$this->to[] = $to;
			}
		}
		
		public function subject($subject){
			$this->subject = $subject;
		}
		
	}
	