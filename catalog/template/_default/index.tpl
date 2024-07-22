	<div id="homeV4" class="home-v4">
		<div class="primary-content">
			<div class="main-search">
				<div class="main-search-container">
					<div class="main-search-tool">
						<div class="main-text">
							<h1>Find the <br>perfect teacher</h1>
							<h2 class="mobile-only">Online or en face-to-face,<br>Choose from <b>27 million home tutors</b> </h2>
						</div>
						<div class="mobile-style-container">
							<div class="search search-placeholder suggest-city">
								<form class="search-box-v3-2 home-search-form" method="post" action="" data-type="toute_matiere">
									<div class="home-search-form-container search-header-form-visibility-trigger opened">
										<div class="placeholder-picto desktop-only"></div>
										<label for="search-placeholder-trigger" class="placeholder-animated" style="--n-subjects: 3;">
											<span class="subjects"> 
												<span class="specific">Maths</span>
												<span class="default">What do you want to learn?</span>
												<span class="random"></span>
											</span>
										</label>
										<div class="home-search-form-inner autocomplete">
											<input data-proxy="subject.input" data-proxy-field="subject" data-sync="subject" class="HomeV2_input Search_box_input autocomplete-search-empty autocomplete-input HomeV2_wSubject" id="search_subject" type="text" placeholder="Try “Maths Tuition”" name="search_subject"
											autocomplete="off"/>
										</div>
										<div class="home-search-form-inner">
											<div class="HomeV2_adress">
												<input data-proxy="city.input" data-proxy-field="city" data-sync="gplace" name="search_city" class="HomeV2_input Search_box_input HomeV2_inputAddress HomeV2_GoogleAutocomplete" id="search_city" data-country-code="IN" type="text" placeholder="Course location" autocomplete="off" />
											</div>
										</div>
										<div class="btn-container">
											<?php if(!empty($userData)){ ?>
												<button class="btn HomeV2_searchButton search-header-submit button-topHide" type="submit"><span class="text">Search</span></button>
											<?php }else{ ?>	
												<a class="btn HomeV2_searchButton search-header-submit button-topHide basic-header-button search-modal" href="<?=(SITEURL.'register');?>"><span class="text">Search</span></a>
											<?php } ?>
										</div>
									</div>
								</form>
							</div>
							<?php if(!empty($GLOBALS['categories'])){ ?>
								<div class="search-subject-container">
									<ul>
										<?php if($GLOBALS['categories']){ foreach($GLOBALS['categories'] as $category){ ?>
											<li>
												<a class="list-item" href="<?=(SITEURL.'ct?ct='.$category['categories_slug']);?>">
													<span class="name"><?=substr($category['categories_name'], 0, 20);?></span>
												</a>
											</li>
										<?php } } ?>
									</ul>
								</div>
							<?php } ?>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="secondary-content">
			<div class="viewed ads-pagination no-nav not-visible" style="--page: 1; --per-page: 3; --per-page-mobile: 2;">
				<div class="title">
					<h2>Recently viewed ads</h2>
					<div class="controls">
						<button class="btn prev"></button>
						<button class="btn next"></button>
					</div>
				</div>
				<div class="container">
					<div class="landing-v4-ads"></div>
				</div>
			</div>
			
			<?php if(!empty($data['tutors'])){ ?>
				<div class="announcements ads-pagination" style="--page: 1; --per-page: 3; --per-page-mobile: 1;">
					<div class="title">
						<h2 class="stars-suffix"><?=count($data['tutors']);?> teachers to choose your home tutor from!</h2>
						<div class="controls">
							<button class="btn prev"></button>
							<button class="btn next"></button>
						</div>
					</div>
					<div class="SP-51-teacher-list">
					
						<div class="landing-v4-ads">
							<?php foreach($data['tutors'] as $tutor){ ?>
								<div class="landing-v4-ads-bloc-container">
									<div class="landing-v4-ads-bloc tck-announce-link" data-version="2" data-value="" target="_blank">
										<div class="landing-v4-ads-wrapper">
											<div class="landing-v4-ads-pic">
												<div class="img lazy-bg" data-src="//c.superprof.com/i/m/16200786/600/20231227145623/16200786.webp">
												</div>
												<div class="landing-v4-ads-pic-mask"><img src="https://images.unsplash.com/photo-1506126613408-eca07ce68773?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8eW9nYXxlbnwwfHwwfHx8MA%3D%3D" alt=""></div>
												<div class="landing-v4-ads-pic-text-container">
													<p class="landing-v4-ads-pic-firstname"><?=$tutor['users_name'];?></p>
													<div class="landing-v4-ads-pic-location">
														<span class="landing-v4-ads-pic-text">Bengaluru (online)</span>
													</div>
												</div>
											</div>
											<div class="bottom-part">
												<h3 class="landing-v4-ads-text">
													<span class="first-subject">Yoga&nbsp;-&nbsp;</span>
													<span>Yoga is a blessing, a blessing that gives you a deep understanding
													of how valuable and peaceful you are. everything will change as soon
													as you start practicing yoga.</span>
												</h3>
												<div class="chips-wrapper">
													<ul class="chips">
														<li class="pricing">
															<span class="picto"></span>
															<span class="text">₹2,000/hr</span>
														</li>
													</ul>
												</div>
											</div>
										</div>
									</div>
								</div>
							<?php } ?>
						</div>
						
						<div class="btn-container">
							<div class="btn landing-v4-more-teacher">
								<div class="text">
									<span>See more teachers</span>
									<span class="picto"></span>
								</div>
							</div>
						</div>
					</div>
				</div>
			<?php } ?>
			
			<?php if(!empty($data['testimonials'])){ ?>
				<div class="opinions init">
					<div class="opinions-container">
						<div class="title-wrapper">
							<div class="title-stars"></div>
							<h2 class="title">Perfect match</h2>
							<h3 class="subtitle"><span class="emphasis">Over one million students</span> gave a review of <span class="emphasis"><b> 5 stars</b></span><b> to their teacher!</b></h3>
							<div class="controls">
								<span class="prev"></span>
								<span class="next active"></span>
							</div>
						</div>
						<div class="content" style="--opinion-total: 6;">
							<ul style="transform: translateX(0px);">
								<?php foreach($data['testimonials'] as $testimonial){ ?>
									<li style="z-index: -1;">
										<div class="review">
											<div class="details">
												<div class="avatar" data-src="//c.superprof.com/i/a/10205111/13332208/160/20240408031354/can-teach-you-driving-your-vehicle-your-place-both-manual-and-automatic-cars-years-experience-and-also-also.jpg" style="background-image: url(&quot;//c.superprof.com/i/a/10205111/13332208/160/20240408031354/can-teach-you-driving-your-vehicle-your-place-both-manual-and-automatic-cars-years-experience-and-also-also.jpg&quot;);">
												</div>
												<div class="infos">
													<p class="name"><?=$testimonial['testimonials_name'];?></p>
													<p class="desc"><?=$testimonial['testimonials_designation'];?></p>
												</div>
											</div>
											<p class="comment"><?=$testimonial['testimonials_description'];?></p>
											<div class="rating-container">
												<div class="rating">
													<p>KPR</p>
													<div class="stars" data-star="5.0"><span class="star-fullV2"></span><span class="star-fullV2"></span><span class="star-fullV2"></span><span class="star-fullV2"></span><span class="star-fullV2"></span>
													</div>
												</div>
											</div>
										</div>
									</li>
								<?php } ?>
							</ul>
						</div>
					</div>
				</div>
			<?php } ?>
			<a href="<?=(SITEURL.'become-a-tutor');?>" class="join-us">
				<img  src="https://c.superprof.com/style/images/home/v4/become-teacher.webp" alt="a teacher giving a lesson">
				<div class="content">
					<h2 class="title">You too, can become<br>a Super Prof!</h2>
					<p class="subtitle">Share your knowledge, live off your passion, earn from home and be atmanirbhar!
					</p>
					<div class="btn-cta">
						<span class="text">Find out more</span>
						<span class="preview-icon">
							<span class="icon-container">
								<span class="icon"></span>
								<span class="icon"></span>
							</span>
						</span>
					</div>
				</div>
			</a>
			<div class="seo">
				<?php if(!empty($data['categories'])){ ?>
					<section>
						<h2 class="title-lvl-one">Learn what you want</h2>
						<ul class="blocks-container subjects">
							<div>
								<li class="block category-list">
									<?php foreach($data['categories'] as $category){ ?>
										<a href="<?=(SITEURL.'ct?ct='.$category['categories_slug']);?>"><?=substr($category['categories_name'], 0, 20);?></a>
									<?php } ?>
								</li>
							</div>
						</ul>
					</section>
				<?php } ?>
				<?php if(!empty($data['locationCategories'])){ ?>
					<section>
						<h2 class="title-lvl-one">Learn, <br>Explore your city</h2>
						<ul class="blocks-container towns">
							<li class="block city-list">
								<?php 
									foreach($data['locationCategories'] as $locationCategory){ 
									$get_location_data = get_data_by_id($locationCategory['location_categories_location_id'], 'locations');
								?>
									<div>
										<a href="<?=(SITEURL.'city?city='.$get_location_data[0]['locations_slug'])?>" class="link_city"><?=$get_location_data[0]['locations_name'];?></a>
										<?php $getLocationCategories = explode(',',$locationCategory['location_categories_category_id']); ?>
										<ul class="subjects-list">
											<?php 
												if(!empty($getLocationCategories)){ foreach($getLocationCategories as $getLocationCategory){ 
												$get_category_data = get_data_by_id($getLocationCategory, 'categories');
											?>
												<li class="subject"><a href="<?=(SITEURL.'ct?ct='.$get_category_data[0]['categories_slug']);?>"><?=$get_category_data[0]['categories_name'];?></a></li>
											<?php } } ?>
										</ul>
									</div>
								<?php } ?>
							</li>
						</ul>
					</section>
				<?php } ?>
			</div>
			<div class="header-search-cta mobile-only search-header-form-visibility-trigger">
				<div class="cta-wrapper">
					<span class="text">What do you want to learn?</span>
					<div class="btn-container">
						<div class="btn">
							<span class="icon"></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="notification valid hidden" id="errorNotification" data-timeout="15000">
		<div class="wrapper">
			<p class="notification-text"></p>
			<div class="notification-close"></div>
		</div>
	</div>
	
	

