
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
					<a href=""><img src="<?=DIR_SYSTEM.'web-assets/';?>style/images/logo-202002142301.svg" width="123" height="40" alt=""></a>
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
								<div class="landing-teacher-v4-header-subtitle"><strong><u>Register as a student on India's #1 site for online tutoring opportunities.</u><br></strong>
									<p>
									</p>
									<p>
									</p>
									<p>
										<br>Your quest for "online tutoring opportunities" concludes with Superprof!</p>
									<p>Whether you seek remote work opportunities or aspire to earn a full-time income, you can join Superprof as a tuition teacher. Our mission is to provide a teaching platform for individuals to both share and acquire knowledge.</p>
									<br>
									<p>
										<strong>Sign up using the Superprof Login - No commission charged - No Registration Fee</strong></p>
									<p>
									</p>
								</div>
							</div>
							<div class="right-part">
								<p class="landing-teacher-v4-header-title">Online Tutoring Jobs For Beginners &amp; Experienced in 3 clicks</p>

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
													<select class="form-control" name="class" style="width: 100%; height: 70px;"> 
														<option value="">Select Class</option>
														<option value="Class 1">Class 1</option>
														<option value="Class 2">Class 2</option>
														<option value="Class 3">Class 3</option>
														<option value="Class 4">Class 4</option>
														<option value="Class 5">Class 5</option>
														<option value="Class 6">Class 6</option>
														<option value="Class 7">Class 7</option>
														<option value="Class 8">Class 8</option>
														<option value="Class 9">Class 9</option>
														<option value="Class 10">Class 10</option>
														<option value="Class 11">Class 11</option>
														<option value="Class 12">Class 12</option>
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
											<input type="hidden" name="role" value="1">
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
			</div>
