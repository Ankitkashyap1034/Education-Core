	<style>
		.select2.select2-container.select2-container--default, .select2-search.select2-search--inline, .select2-search__field{
		 width: 100% !important;
		}
	</style>
	
	<div class="sp-global">
		<div id="sp-vue-container"></div>
		<div class="landing-teacher-v4">
			<div class="landing-v4-teacher-header-sticky">
				<div class="wrapper-sticky">
					<a href=""><img src="//c.superprof.com/style/images/logo-202002142301.svg" width="123" height="40" alt=""></a>
					<div class="create-profil connect-modal" data-connect-id="signup">Create my Superprof Ad</div>
				</div>
			</div>
			<div class="landing-v4-create-profil-sticky">
				<div class="landing-v4-create-profil-button connect-modal" data-connect-id="signup">Create my Superprof Ad</div>
			</div>
			<div>
				<div class="landing-teacher-v4-header">
					<div class="header-shape"></div>
					<div class="container">
						<div class="landing-teacher-v4-header-upper">
							<div class="left-part">
								<h1 class="landing-teacher-v4-header-title">Registration</h1>
								<div class="landing-teacher-v4-header-subtitle"><strong><u>Become A Home Tutor on India's #1 Site For Online Tutoring Jobs</u><br></strong>
									<p>
									</p>
									<p>
									</p>
									<p>
										<br>Your search for "<em>online</em>&nbsp;<em>tutoring jobs</em>" ends with Superprof!</p>
									<p>Whether you are looking for <strong>work from home</strong> jobs online&nbsp;or want to <strong>earn full-time</strong>, you can become a tuition teacher on Superprof. Our efforts are intended towards providing a teaching
										platform for everyone to share and gain knowledge.</p>
									<p>
										<br>🗓️&nbsp;<strong>Plan At-home Online tutoring - </strong>Become A Tuition Teacher</p>
									<p>💻&nbsp;<strong></strong>Give Private Tuition near me For 1000+ Subjects</p>
									<p></p>
									<p>💸 <strong>Earn From Home</strong> ₹500 per hour&nbsp;or More</p>
									<br>Teach at home or online across on&nbsp;our Superprof network with over <strong style="background-color: initial;">1000</strong>+ subjects (languages, sports, music, art, hobbies, and academics).&nbsp;
									<p></p>
									<br>
									<p>
										<strong>Sign up using the Superprof Login - No commission charged - No Registration Fee</strong></p>
									<p>
									</p>
								</div>
							</div>
							<div class="right-part">
								<p class="landing-teacher-v4-header-title">Registration</p>

								<div class="landing-teacher-v4-dynamic-bloc">
									<div class="wrapper-teacher">
										<p class="landing-teacher-v4-header-title">Create your profile</p>
										<form method="POST" action="<?=SITEURL;?>" id="register-form" autocomplete="off" enctype="multipart/form-data">
											<div class="landing-teacher-v4-choice">
												<div class="landing-teacher-v4-choice-wrapper">
													<span class="landing-teacher-v4-choice-text">or</span>
													<span class="landing-teacher-v4-choice-line"></span>
												</div>
												<div class="inputN-container check-input landing-teacher-v4-input">
													<input class="inputN " type="text" placeholder="Name" name="name" data-rule="text" autocomplete="off">
													<span class="landing-teacher-v4-input-icon"></span>
												</div>												
												<div class="inputN-container check-input landing-teacher-v4-input">
													<select class="select2" name="courses[]" multiple> 
														<option value="">Select Subjects</option>
														<?php if($data['categories']){ foreach($data['categories'] as $category){ ?>
															<option value="<?=$category['categories_id'];?>"><?=substr($category['categories_name'], 0, 20);?></option>
														<?php } } ?>
													</select>
													<span class="landing-teacher-v4-input-icon"></span>
												</div>	


												<div class="inputN-container check-input landing-teacher-v4-input">
													<select class="select_city" name="city"> 
														<option value="">Select City</option>
														<?php if($data['categories']){ foreach($data['categories'] as $category){ ?>
															<option value="<?=$category['categories_id'];?>"><?=substr($category['categories_name'], 0, 20);?></option>
														<?php } } ?>
													</select>
													<span class="landing-teacher-v4-input-icon"></span>
												</div>												
												<div class="inputN-container check-input landing-teacher-v4-input">
													<input class="inputN landing-teacher-v4-input number" type="text" placeholder="Phone" name="phone" data-rule="text" autocomplete="off"> 
													<span class="landing-teacher-v4-input-icon"></span>
												</div>
												<div class="inputN-container check-input landing-teacher-v4-input">
													<input class="inputN landing-teacher-v4-input" type="text" placeholder="Email" name="email" data-rule="email" autocomplete="off">
													<span class="landing-teacher-v4-input-icon"></span>
												</div>
												<div class="inputN-container check-input landing-teacher-v4-input">
													<input class="inputN landing-teacher-v4-input" type="text" placeholder="Password" name="password" data-rule="password" style="-webkit-text-security: disc; text-security: disc;" autocomplete="off">
													<span class="landing-teacher-v4-input-icon"></span>
												</div>
											</div>
											<input type="hidden" name="role" value="2">
											<button type="submit" class="btn-loader submit-btn" id="load1"><i class='fa fa-circle-o-notch fa-spin data-icon-loader d-none'></i> Sign Up</button>
										</form>
										<p class="cgu-text">By signing up, you agree to our <a href="<?=(SITEURL.'terms-&-conditions');?>">terms</a>.</p>
									</div>
								</div>
								<div class="landing-teacher-v4-header-subtitle">
									<p><u>Welcome to the no. 1 Online Tutoring Platform For Online Tutoring in India&nbsp;</u></p>
									<p>🗓️&nbsp;<strong></strong><strong style="font-family: " helvetica="" neue ",=" " helvetica,=" " arial,=" " sans-serif;"="">Plan At-home Online tutoring -&nbsp;</strong>Make Your Own Schedules</p>
									<p>💻 Give Coaching Classes&nbsp;<strong>O</strong><strong>nline or In-Person&nbsp;</strong></p>
									<p>💸 Earn Per Hour<strong>&nbsp;(between ₹500 per hour or more)</strong></p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="landing-teacher-v4-content">
					<span itemscope="" itemprop="product" itemtype="https://schema.org/Product"><meta itemprop="brand" content="superprof.co.in"><meta itemprop="name" content="Online Tutoring Jobs For Beginners &amp; Experienced in 3 clicks"><meta itemprop="description" content="Become A Home Tutor on India's #1 Site For Online Tutoring Jobs    Your search for  online&nbsp;tutoring jobs  ends with Superprof!Whether you are looking for work from home jobs online&nbsp;or want to earn full-time, you can become a tuition teacher on Superprof. Our efforts are intended towards providing a teaching platform for everyone to share and gain knowledge.🗓️&nbsp;Plan At-home Online tutoring - Become A Tuition Teacher💻&nbsp;Give Private Tuition near me  For 1000+ Subjects💸 Earn From Home ₹500 per hour&nbsp;or MoreTeach at home or online across on&nbsp;our Superprof network with over 1000+ subjects (languages, sports, music, art, hobbies, and academics).&nbsp;   	Sign up using the Superprof Login - No commission charged - No Registration Fee  ">

					<span itemscope="" itemprop="AggregateRating" itemtype="https://schema.org/AggregateRating"><meta itemprop="ratingValue" content="5.0"><meta itemprop="bestRating" content="5"><meta itemprop="ratingCount" content="218190">
					</span>
					</span>
				</div>
			</div>

			