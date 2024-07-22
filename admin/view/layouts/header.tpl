<?php
	// logged in user :: auth user 
	$userData = Auth::user($_SESSION);
?>
<!doctype html>
<html lang="en" data-layout="vertical" data-sidebar="dark" data-sidebar-size="lg" data-preloader="disable" data-theme="default" data-topbar="light" data-bs-theme="light">
	<head>
		<meta charset="utf-8">
		<title><?=$data['title'];?> | <?=STORENAME;?></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta content="<?=$data['description'];?>" name="description">
		<meta content="<?=STORENAME;?>" name="author">
		<!-- App favicon -->
		<link rel="shortcut icon" href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/favicon.ico">
		<!-- Fonts css load -->
		<link rel="preconnect" href="https://fonts.googleapis.com/">
		<link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
		<link id="fontsLink" href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&amp;display=swap" rel="stylesheet">
		<!-- jsvectormap css -->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/jsvectormap/css/jsvectormap.min.css" rel="stylesheet" type="text/css">
		<!--Swiper slider css-->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/swiper/swiper-bundle.min.css" rel="stylesheet" type="text/css">
		<!-- Layout config Js -->
		<script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/layout.js"></script>
		<!-- Bootstrap Css -->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">

		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/sweetalert2/sweetalert2.min.css" rel="stylesheet" type="text/css">
		<!-- Icons Css -->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/css/icons.min.css" rel="stylesheet" type="text/css">
		<!-- App Css-->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/css/app.min.css" rel="stylesheet" type="text/css">
		<!-- custom Css-->
		<link href="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/css/custom.min.css" rel="stylesheet" type="text/css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.min.css">
		<style>
			.swal2-html-container{ font-size: 15px !important; }
			.swal2-confirm{ padding: 5px 10px !important; }
			.swal2-cancel{ padding: 5px 10px !important; }
			.required{ color: red !important; }
		</style>
	</head>
	<body>
		<!-- Begin page -->
		<div id="layout-wrapper">
			<!-- ========== App Menu ========== -->
			<div class="app-menu navbar-menu">
				<!-- LOGO -->
				<div class="navbar-brand-box">
					<a href="<?=BASEURL;?>" class="logo logo-dark">
						<span class="logo-sm" style="color: white;">
							<?=STORENAME;?>
						</span>
						<span class="logo-lg" style="color: white;">
							<?=STORENAME;?>
						</span>
					</a>
					<a href="<?=BASEURL;?>" class="logo logo-light">
						<span class="logo-sm" style="color: white;">
							<?=STORENAME;?>
						</span>
						<span class="logo-lg" style="color: white;">
							<?=STORENAME;?>
						</span>
					</a>
					<button type="button" class="btn btn-sm p-0 fs-3xl header-item float-end btn-vertical-sm-hover" id="vertical-hover">
					<i class="ri-record-circle-line"></i>
					</button>
				</div>
				<div id="scrollbar">
					<div class="container-fluid">
						<div id="two-column-menu"></div>
						<ul class="navbar-nav" id="navbar-nav">
							<?php if(count($GLOBALS['menus'])>0){ foreach($GLOBALS['menus'] as $menu){ ?>
								<li class="nav-item">
									<?php
										$subMenus = DB::table('menus');
										$subMenus = $subMenus->where('menus_parent', '=', $menu['menus_id']);
										$subMenus = $subMenus->where('menus_status', '=', 1);
										$subMenus = $subMenus->get();
										$subMenus = $subMenus->toArray();
										if(count($subMenus)>0){
									?>
										<a href="#<?=$menu['menus_id']?>" class="nav-link menu-link collapsed" data-bs-toggle="collapse" role="button" aria-expanded="false" aria-controls="<?=$menu['menus_id']?>">
											<i class="<?=$menu['menus_icons'];?>"></i> <span data-key="t-settings"><?=$menu['menus_name'];?></span>
										</a>
										<div class="collapse menu-dropdown " id="<?=$menu['menus_id'];?>">
											<ul class="nav nav-sm flex-column">
												<?php foreach($subMenus as $subMenu){ ?>
													<li class="nav-item">
														<a href="<?=SITEURL.$subMenu['menus_route'];?>" class="nav-link" data-key="t-products"><?=$subMenu['menus_name'];?></a>
													</li>
												<?php } ?>
											</ul>
										</div>
									<?php }else{ ?>
										<a href="<?=SITEURL.$menu['menus_route'];?>" class="nav-link menu-link"> <i class="<?=$menu['menus_icons'];?>"></i> <span data-key="t-dashboard"><?=$menu['menus_name'];?></span> </a>
									<?php } ?>
								</li>
							<?php } } ?>
						</ul>
					</div>
					<!-- Sidebar -->
				</div>
				<div class="sidebar-background"></div>
			</div>
			<!-- Left Sidebar End -->
			<!-- Vertical Overlay-->
			<div class="vertical-overlay"></div>
			<header id="page-topbar">
				<div class="layout-width">
					<div class="navbar-header">
						<div class="d-flex">
							<!-- LOGO -->
							<div class="navbar-brand-box horizontal-logo">
								<a href="<?=BASEURL;?>" class="logo logo-dark">
									<span class="logo-sm">
										<img src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/logo-sm.png" alt="" height="22">
									</span>
									<span class="logo-lg">
										<img src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/logo-dark.png" alt="" height="22">
									</span>
								</a>
								<a href="<?=BASEURL;?>" class="logo logo-light">
									<span class="logo-sm">
										<img src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/logo-sm.png" alt="" height="22">
									</span>
									<span class="logo-lg">
										<img src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/logo-light.png" alt="" height="22">
									</span>
								</a>
							</div>
							<button type="button" class="btn btn-sm px-3 fs-16 header-item vertical-menu-btn topnav-hamburger shadow-none" id="topnav-hamburger-icon">
							<span class="hamburger-icon">
								<span></span>
								<span></span>
								<span></span>
							</span>
							</button>
							<form class="app-search d-none d-md-inline-flex">
								<div class="position-relative">
									<input type="text" class="form-control" placeholder="Search..." autocomplete="off" id="search-options" value="">
									<span class="mdi mdi-magnify search-widget-icon"></span>
									<span class="mdi mdi-close-circle search-widget-icon search-widget-icon-close d-none" id="search-close-options"></span>
								</div>
							</form>
						</div>
						<div class="d-flex align-items-center">
							<div class="ms-1 header-item d-none d-sm-flex">
								<button type="button" class="btn btn-icon btn-topbar btn-ghost-dark rounded-circle" data-toggle="fullscreen">
								<i class='bi bi-arrows-fullscreen fs-lg'></i>
								</button>
							</div>
							<div class="dropdown topbar-head-dropdown ms-1 header-item">
								<button type="button" class="btn btn-icon btn-topbar btn-ghost-dark rounded-circle mode-layout" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<i class="bi bi-sun align-middle fs-3xl"></i>
								</button>
								<div class="dropdown-menu p-2 dropdown-menu-end" id="light-dark-mode">
									<a href="#!" class="dropdown-item" data-mode="light"><i class="bi bi-sun align-middle me-2"></i> Default (light mode)</a>
									<a href="#!" class="dropdown-item" data-mode="dark"><i class="bi bi-moon align-middle me-2"></i> Dark</a>
									<a href="#!" class="dropdown-item" data-mode="auto"><i class="bi bi-moon-stars align-middle me-2"></i> Auto (system default)</a>
								</div>
							</div>
							<div class="dropdown ms-sm-3 header-item topbar-user">
								<button type="button" class="btn shadow-none" id="page-header-user-dropdown" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
								<span class="d-flex align-items-center">
								<img class="rounded-circle header-profile-user" src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/images/users/32/avatar-1.jpg" alt="Header Avatar">
								<span class="text-start ms-xl-2">
								<span class="d-none d-xl-inline-block ms-1 fw-medium user-name-text"><?=session('user_name');?></span>
								</span>
								</span>
								</button>
								<div class="dropdown-menu dropdown-menu-end">
									<!-- item-->
									<h6 class="dropdown-header">Welcome <?=session('user_name');?></h6>
									<?php if(!empty($userData)){ ?>
										<?php if($userData->user_role===1){ ?>
											<a class="dropdown-item" href="<?=(SITEURL.'profile');?>"><i class="mdi mdi-account-circle text-muted fs-lg align-middle me-1"></i> <span class="align-middle">Profile</span></a>
										<?php }else{ ?>
											<a class="dropdown-item" href="<?=(SITEURL.'admin/settings/profile');?>"><i class="mdi mdi-account-circle text-muted fs-lg align-middle me-1"></i> <span class="align-middle">Profile</span></a>
										<?php } ?>
									<?php } ?>
									<a class="dropdown-item" href="<?=(SITEURL.'logout');?>"><i class="mdi mdi-logout text-muted fs-lg align-middle me-1"></i> <span class="align-middle" data-key="t-logout">Logout</span></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>
		</div>
		<!-- /.modal -->
