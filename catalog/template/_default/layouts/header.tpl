<?php
	// logged in user :: auth user 
	$userData = Auth::user($_SESSION);
?>
<!DOCTYPE html>
<html lang="en-IN">
<head>
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <title><?=$data['title'];?></title>
    <link rel="canonical" href="index.html" />
    <script>window.cdn = "//c.superprof.com";</script>
    <meta name="robots" content="index, follow" />
    <meta name="bingbot" content="index, follow, max-snippet:-1, max-image-preview:large, max-video-preview:-1" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1, maximum-scale=1, user-scalable=0" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/style-202404051503.css" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/mod-home-202404051503.css" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/mod-divers-202404051503.css" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/mod-landing-v4-teacher-202404051503.css" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/style-202404181041.css" />
    <link rel="stylesheet" type="text/css" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/mod-home-202404181041.css" />
    <link rel="apple-touch-icon" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_76.png" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_76.png" />
    <link rel="apple-touch-icon" sizes="120x120" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_120.png" />
    <link rel="apple-touch-icon" sizes="152x152" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_152.png" />
    <link rel="apple-touch-icon" sizes="180x180" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_180.png" />
    <link rel="icon" sizes="192x192" href="<?=DIR_SYSTEM.'web-assets';?>style/images/favicon/s_rose_192.png" />
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose_76.ico" />
    <link rel="mask-icon" href="<?=DIR_SYSTEM.'web-assets/';?>style/images/favicon/s_rose.svg" color="#FF5A5F" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/css/iziToast.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/css/select2.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.1.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="<?=DIR_SYSTEM.'web-assets/';?>style/css/new.css">
	<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <meta name="msapplication-TileColor" content="#ffffff" />
    <meta name="theme-color" content="#ffffff" />
    <meta name="google" content="nositelinkssearchbox" />
    <style type="text/css">
        .popin-overlay.hidden,
		.popin-global.hidden,
		.notification.hidden {
			visibility: hidden
		}
		.static-content.active{
			position: fixed;
			width: 100%;
			background: white !important;
			border-radius: 0px !important;
		}
		.home-v4 .opinions .content ul li .comment {
			font-size: 15px !important;
		}
		.home-v4 .opinions .content ul li .details .infos .name{
			font-size: 18px !important;
		}
		.home-v4 .opinions .content ul li .details .infos .desc{
			font-size: 18px !important;
		}
		
		#load1{
			background-color: #fcc748;
			color: #222222;
			border: none;
			width: 100%;
			padding: 16px 0px;
			font-weight: 600;
			border-radius: 40px;
		}
		.d-none{
			display: none !important;
		}
		.notification-badge{
			display: none !important;
		}
		.category-list a {
			margin-bottom: 25px !important;
		}
    </style>
</head>

<body class="p14">
    <div id="fb-root"></div>
    <div class="sp-global">
        <div id="sp-vue-container">
            <header is="super-header" class="super-header" v-bind="header_config">
                <div class="placeholder-header absolute-mode">
                    <div class="static-content themes transparent">
                        <div class="trademark">
                            <a href="<?=BASEURL;?>" style="background-image: url(http://c.superprof.com/style/images/logos/superprof.svg); mask-image: url(//c.superprof.com/style/images/logos/superprof.svg)" aria-label="<?=BASEURL;?>" title="<?=BASEURL;?>"></a>
                        </div>
                        <div class="header-buttons">
                            <a href="<?=(SITEURL.'contact-us');?>" class="basic-header-button caption has-icon has-icon-1">
                                <svg data-v-07452373="" xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-help-circle feather__content">
                                    <circle cx="12" cy="12" r="10"></circle>
                                    <path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"></path>
                                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                                </svg>
                                <span class="notification-badge"></span>
                            </a>
							<?php if(!empty($userData)){ ?>
								<?php if($userData->user_role===1){ ?>
									<!--a href="<?=(SITEURL.'profile');?>" class="basic-header-button caption has-icon has-icon-2">Profile <span class="notification-badge"></span></a-->
								<?php }else{ ?>
									<a href="<?=(SITEURL.'subscriptions');?>" class="basic-header-button caption has-icon has-icon-2">Subscriptions <span class="notification-badge"></span></a>
									<a href="<?=(SITEURL.'admin/dashboard');?>" class="basic-header-button caption has-icon has-icon-2">Profile <span class="notification-badge"></span></a>
								<?php } ?>
								<a href="<?=(SITEURL.'logout');?>" class="basic-header-button caption has-icon has-icon-3">Logout <span class="notification-badge"></span></a>
							<?php }else{ ?>	
								<a href="<?=(SITEURL.'become-a-tutor');?>" class="basic-header-button caption has-icon has-icon-2">Give Private classes <span class="notification-badge"></span></a>
								<a href="javascript:void(0)" class="basic-header-button caption has-icon has-icon-3 login-btn">Login<span class="notification-badge"></span></a>
							<?php } ?>
                        </div>
                    </div>
                    
                </div>
            </header>
        </div>