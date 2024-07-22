	<div class="footer">
		<div class="wrapper">
			<div class="footer_links">
				<div class="blocs bloc1">
					<div class="title">About</div>
					<ul class="list">
						<li>
							<a href="<?=(SITEURL.'about-us');?>" title="">Who are we?</a>
						</li>
						<li>
							<a href="<?=(SITEURL.'terms-&-conditions');?>" title="">Terms & Conditions</a>
						</li>
						<li>
							<a href="<?=(SITEURL.'privacy-policy');?>" title="">Privacy Policy</a>
						</li>
						<li>
							<a href="<?=(SITEURL.'locations');?>" title="">City</a>
						</li>
					</ul>
				</div>
				<div class="blocs bloc2">
					<div class="title">All subjects</div>
					<ul class="list">
						<?php if($GLOBALS['categories']){ foreach($GLOBALS['categories'] as $category){ ?>
							<li id="cat_11">
								<a href="<?=(SITEURL.'ct?ct='.$category['categories_slug']);?>"><?=$category['categories_name'];?></a>
							</li>
						<?php } } ?>
					</ul>
				</div>
				<div class="blocs bloc3">
					<div class="title">Join the Superprof</div>
					<ul class="list">
						<li><a href="<?=(SITEURL.'become-a-tutor');?>" title="Become a Tutor">Become a Tutor</a></li>
					</ul>
				</div>
				<div class="blocs TODO">
					<div class="title">Help</div>
					<ul class="list">
						<li>
							<a href="<?=(SITEURL.'contact-us');?>" title="">Contact Us</a>
						</li>
						<li>
							<a href="<?=(SITEURL.'about-us');?>" title="">About Us</a>
						</li>
					</ul>
				</div>
				<div class="blocs bloc4">
					<div class="title">Follow us</div>
					<ul class="list footer-socials">
						<li>
							<button class="social-facebook a-js" data-href="https://www.facebook.com/superprof.in/" data-target="_blank" aria-label="Facebook"></button>
						</li>
						<li>
							<button class="social-twitter a-js" data-href="https://twitter.com/superprof_in" data-target="_blank" aria-label="Twitter"></button>
						</li>
						<li>
							<button class="social-instagram a-js" data-href="https://www.instagram.com/superprof.in" data-target="_blank" aria-label="Instagram"></button>
						</li>
					</ul>
				</div>
			</div>
			<div class="footer-infos">
				<div class="logo">© <?=date('Y');?> <?=STORENAME;?>, learn with the best !</div>
			</div>
		</div>
	</div>
	<div id="connect-modal">
		<connect ref="connect" :initial-state="false" :info="null" :complement="null" :id-ads="''" :facebook-url="''"></connect>
	</div>

	<!--Login Modal-->
	<div id="connect-modal">
		<div class="connect">
			<div class="common-modal hide-content">
				<div class="mask-modal"></div>
				<div class="wrapper">
					<div class="container">
						<div class="cross"><span class="picto"></span></div>
						<div class="v-loader center">
							<div class="dot dot1"></div>
							<div class="dot dot2"></div>
							<div class="dot dot3"></div>
							<div class="dot dot4"></div>
						</div>
						<div class="popin-content signup">
							<div class="upper">
								<p class="title">Sign up</p>
								<!---->
								<div class="email-inputs">
									<form id="signup-form recaptcha-enabled">
										<div class="names-wrapper">
											<div class="input-holder pending"><span class="label" style="top: -20px;">Name</span>
												<input placeholder="Name" type="text">
											</div>
											<div class="input-holder pending"><span class="label" style="top: -20px;">Name</span>
												<input placeholder="Name" type="text">
											</div>
										</div>
										<div class="input-holder pending"><span class="label" style="top: -20px;">E-mail address</span>
											<input name="email" placeholder="E-mail address" type="text" autocomplete="off">
										</div>
										<div class="input-holder pending"><span class="label" style="top: -20px;">Create a password</span>
											<input name="password" placeholder="Create a password" autocomplete="off" type="password" style="-webkit-text-security: disc; text-security: disc;" autocomplete="off">
										</div>
									</form>
								</div>
								<p class="error-text" style="display: none;"></p>
							</div>
							<div class="bottom">
								<div class="buttons-container">
									<!--div class="social-buttons">
											<a class="big-button facebook">
												<div class="picto"></div>
												<p class="text long">Register with Facebook</p>
												<p class="text short">Facebook</p>
											</a>
											<div class="big-button google google-connect">
												<div class="picto"></div>
												<p class="text long">Sign up with Google</p>
												<p class="text short">Google</p>
											</div>
										</div-->
									<div class="big-button mail">
										<div class="picto"></div>
										<p class="text">Registration by e-mail</p>
									</div>
								</div>
								<div class="sign-text"><span>You already have an account?</span> <span class="emphasis">Log in</span></div>
								<div class="signin-cgu">
									<p>On registering by email or Facebook, you accept our <a href="/gtu.html">legal terms &amp; conditions</a>.</p>
								</div>
							</div>
						</div>
						<div class="popin-content signin visible">
							<form method="POST" action="<?=SITEURL.'admin/dashboard'?>" id="form" autocomplete="off">
								<div class="upper">
									<p class="title">Log in</p>
									<!---->
									<div class="login">
										<div class="input-holder pending"><span class="label" style="top: -20px;">E-mail address</span>
											<input name="username" class="username" placeholder="E-mail address" type="text" autocomplete="new-password" required>
										</div>
										<div class="input-holder pending"><span class="label" style="top: -20px;">Create a password</span>
											<input name="password" class="password" placeholder="Create a password" type="text" style="-webkit-text-security: disc; text-security: disc;" required>
										</div>
									</div>
									<p class="error-text" style="display: none;"></p>
								</div>
								<div class="bottom">
									<div class="buttons-container">
										<!--div class="social-buttons">
												<a class="big-button facebook">
													<div class="picto"></div>
													<p class="text long">Register with Facebook</p>
													<p class="text short">Facebook</p>
												</a>
												<div class="big-button google google-connect">
													<div class="picto"></div>
													<p class="text long">Sign up with Google</p>
													<p class="text short">Google</p>
												</div>
										</div-->
										<button class="big-button mail text" type="submit">Login</button>
									</div>
									<div class="sign-text"><span>Don't have an account?</span> <a href="<?=(SITEURL.'register')?>"><span class="emphasis">Sign up</span></a></div>
									<p class="forgot-password">Forgot password?</p>
								</div>
							</form>
						</div>
						<div class="popin-content reset">
							<div class="reset">
								<p class="title">Reset my password</p>
								<p class="text">To retrieve your password, please enter the e-mail address you used to register on Superprof.</p>
								<div class="input-holder pending"><span class="label" style="top: -20px;">E-mail address</span>
									<input placeholder="E-mail address" type="text">
								</div>
								<p class="success-text" style="display: none;"></p>
								<p class="error-text" style="display: none;"></p>
								<p class="send-button"><span class="text">Send</span></p>
								<div class="back"><span class="arrow text">Return to Sign-in</span></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Login Modal-->
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"></script>	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.8/js/select2.min.js" defer></script>	
	<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/auth/auth.js"></script>
	<script src="<?=DIR_SYSTEM.'web-assets/';?>js/langue-IN-202311171325.js" type="text/javascript"></script>
	<script src="<?=DIR_SYSTEM.'web-assets/';?>js/js-202404051503.js" type="text/javascript"></script>	
	<script src="<?=DIR_SYSTEM.'web-assets/';?>js/main.js" type="text/javascript"></script>	

	<script defer>
		$(document).ready(function() {
			$('.select2').select2({
				allowClear: true,
				placeholder: 'Select Subjects'
			});
		});
	</script>
	<script defer>
		$(document).ready(function() {
			$('.select_city').select2({
				allowClear: true,
				placeholder: 'Select City'
			});
		});
	</script>
	<script>
		window.addEventListener('scroll', () => {
			const stickyHeader = document.querySelector('.static-content')
			stickyHeader.classList.toggle('active', window.scrollY > 0)
		});
	</script>
	<script>
		document.addEventListener("DOMContentLoaded", (event) => {
			const loginBtns = document.querySelectorAll('.login-btn');
			const loginModals = document.querySelectorAll('.common-modal');
			const crosses = document.querySelectorAll('.cross');

			loginBtns.forEach((btn, index) => {
				btn.addEventListener('click', () => {
					loginModals[index].classList.add('visible');
				});
			});

			crosses.forEach((cross, index) => {
				cross.addEventListener('click', () => {
					loginModals[index].classList.remove('visible');
				});
			});
		});
	</script>
	<?php if(empty($userData)){ ?>
		<script>
			$('#search_subject, #search_city').click( function(){
				window.location.href = '<?=(SITEURL."register")?>';
			});
		</script>
		<?php if(isset($_GET['login']) && $_GET['login']==='re-login'){ ?>
			<script>
				$( function(){
					$('.common-modal').addClass('visible');
				});
			</script>
		<?php } ?>
	<?php } ?>
	<script>
		$(document).ready(function () {    
			$('.number').keypress(function (e) {    
				var charCode = (e.which) ? e.which : event.keyCode    
				if (String.fromCharCode(charCode).match(/[^0-9]/g))    
					return false;                        
			});    
		}); 
	</script>
	</body>
</html>