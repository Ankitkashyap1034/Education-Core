<!doctype html>
<html lang="en" data-layout="vertical" data-sidebar="dark" data-sidebar-size="lg" data-preloader="disable" data-theme="default" data-topbar="light" data-bs-theme="light">
	<head>
		<meta charset="utf-8">
		<title>Sign In | <?=STORENAME;?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta content="Minimal Admin & Dashboard Template" name="description">
		<meta content="Themesbrand" name="author">
		<!-- App favicon -->
		<link rel="shortcut icon" href="<?=DIR_SYSTEM.'admin-assets/';?>assets/images/favicon.ico">
		<!-- Fonts css load -->
		<link rel="preconnect" href="https://fonts.googleapis.com/">
		<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
		<link id="fontsLink" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet">
		<!-- Layout config Js -->
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/layout.js"></script>
		<!-- Bootstrap Css -->
		<link href="<?=DIR_SYSTEM.'admin-assets/';?>assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
		<!-- Icons Css -->
		<link href="<?=DIR_SYSTEM.'admin-assets/';?>assets/css/icons.min.css" rel="stylesheet" type="text/css">
		<!-- App Css-->
		<link href="<?=DIR_SYSTEM.'admin-assets/';?>assets/css/app.min.css" rel="stylesheet" type="text/css">
		<!-- custom Css-->
		<link href="<?=DIR_SYSTEM.'admin-assets/';?>assets/css/custom.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.min.css">
		<style>
			*{font-family: 'Poppins', sans-serif !important;}
		</style>
	</head>
	<body>
		<section class="auth-page-wrapper py-5 position-relative d-flex align-items-center justify-content-center min-vh-100">
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-6">
						<div class="card mb-0">
							<div class="row g-0 align-items-center">
								<div class="col-xxl-12 mx-auto">
									<div class="card mb-0 border-0 shadow-none mb-0">
										<div class="card-body p-sm-5">
											<div class="text-center mt-5">
												<h5 class="fs-3xl">Sign In</h5>
												<p class="text-muted">Sign in to continue to <?=STORENAME;?>.</p>
											</div>
											<div class="p-2 mt-5">
												<form method="POST" action="<?=SITEURL.'admin/dashboard'?>" id="form" autocomplete="off">
													<div class="mb-3">
														<label for="username" class="form-label">Username <span class="text-danger">*</span></label>
														<div class="position-relative ">
															<input type="text" class="form-control  password-input username" id="username" name="username" placeholder="Enter username" required autocomplete="off">
														</div>
													</div>
													<div class="mb-3">
														<div class="float-end">
															<a href="auth-pass-reset.html" class="text-muted">Forgot password?</a>
														</div>
														<label class="form-label" for="password-input">Password <span class="text-danger">*</span></label>
														<div class="position-relative auth-pass-inputgroup mb-3">
															<input type="password" class="form-control pe-5 password-input password" placeholder="Enter password" id="password-input" name="password" required autocomplete="off">
															<button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"><i class="ri-eye-fill align-middle"></i></button>
														</div>
													</div>
													<div class="form-check">
														<input class="form-check-input" type="checkbox" value="" id="auth-remember-check">
														<label class="form-check-label" for="auth-remember-check">Remember me</label>
													</div>
													<div class="mt-4">
														<button class="btn btn-primary w-100 submit" type="submit">Sign In</button>
													</div>
												</form>
												<!-- <div class="text-center mt-5">
													<p class="mb-0">Don't have an account ? <a href="auth-signup.html" class="fw-semibold text-secondary text-decoration-underline"> SignUp</a> </p>
												</div> -->
                                                <div class="text-center">
    												<p class="text-black opacity-75 mb-0 mt-3">
    													&copy; <script>document.write(new Date().getFullYear())</script> <?=STORENAME;?>. Develop by <?=COMPANY;?>
    												</p>
    											</div>
											</div>
										</div>
										<!-- end card body -->
									</div>
									<!-- end card -->
								</div>
								<!--end col-->
							</div>
							<!--end row-->
						</div>
					</div>
					<!--end col-->
				</div>
				<!--end row-->
			</div>
			<!--end container-->
		</section>
		<!-- JAVASCRIPT -->
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/libs/simplebar/simplebar.min.js"></script>
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/plugins.js"></script>
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/pages/password-addon.init.js"></script>
		<!--Swiper slider js-->
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/libs/swiper/swiper-bundle.min.js"></script>
		<!-- swiper.init js -->
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/pages/swiper.init.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"></script>
		<script src="<?=DIR_SYSTEM.'admin-assets/';?>assets/js/auth/auth.js"></script>
	</body>
</html>
