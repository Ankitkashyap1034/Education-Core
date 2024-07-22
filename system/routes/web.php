<?php
	require_once DIR_SYSTEM . 'config/Route.php';

	// website routes
	Route::get('/', 'FrontController@index');
	Route::get('/register', 'FrontController@register');
	Route::get('/become-a-tutor', 'FrontController@becomeTutor');
	Route::get('/contact-us', 'FrontController@contactUs');
	Route::get('/about-us', 'FrontController@aboutUs');
	Route::get('/email-verify/email', 'FrontController@emailVerify');
	// Route::get('/ct', 'FrontController@getListingByCategorySlug');
	Route::get('/ct/{slug}', 'FrontController@getListingByCategorySlug');
	Route::get('/subscriptions', 'FrontController@subscriptions');

	// admin routes
	// auth admin or web
	Route::get('/admin-login', 'AuthController@authLogin');
	Route::post('/admin/check/login', 'AuthController@checkLogin');
	Route::post('/admin/check/register', 'AuthController@checkRegister');
	
	// logout
	Route::get('/logout', 'FrontController@logout');

	// dashboard
	Route::get('/admin/dashboard', 'AdminController@dashboard');
	
	// profile
	Route::get('/admin/settings/profile', 'AdminController@profile');
	Route::get('/admin/settings/password', 'AdminController@password');

	// category
	Route::get('/admin/category/add', 'CategoryController@add');
	Route::get('/admin/category/store', 'CategoryController@store');
	Route::get('/admin/category/update', 'CategoryController@update');
	Route::post('/admin/category/get', 'CategoryController@getCategoryById');

	// menu
	Route::get('/admin/settings/menu', 'MenuController@add');
	Route::get('/admin/menu/store', 'MenuController@store');
	Route::get('/admin/menu/update', 'MenuController@update');
	Route::post('/admin/menu/get', 'MenuController@getMenuById');
	Route::get('/admin/menu/delete', 'MenuController@delete');

	// users
	Route::get('/admin/users/add', 'UserController@add');

	// testimonials
	Route::get('/admin/testimonials/add', 'TestimonialController@add');
	Route::post('/admin/testimonial/store', 'TestimonialController@store');
	Route::get('/admin/testimonials/list', 'TestimonialController@listing');
	Route::get('/admin/testimonials/list-data', 'TestimonialController@listingData');

	// countries
	Route::post('/admin/locations/country/store', 'LocationController@countryStore');
	Route::get('/admin/locations/country/list', 'LocationController@countryListing');
	Route::get('/admin/locations/country/get', 'LocationController@getCountryById');
	Route::post('/admin/locations/country/update', 'LocationController@countryUpdate');
	Route::get('/admin/locations/country/list-data', 'LocationController@countryListingData');

	// location
	Route::post('/admin/locations/location/store', 'LocationController@locationStore');
	Route::get('/admin/locations/locations/list', 'LocationController@locationListing');
	Route::get('/admin/locations/locations/get', 'LocationController@getLocationById');
	Route::post('/admin/locations/locations/update', 'LocationController@locationUpdate');
	Route::get('/admin/locations/locations/list-data', 'LocationController@locationListingData');
	
	// location category
	Route::get('/admin/locations/category/list', 'LocationController@locationCategoryListing');
	Route::post('/admin/locations/category/store', 'LocationController@locationCategoryStore');
	
	// subscriptions
	Route::get('/admin/subscriptions/list', 'SubscriptionController@listing');
	Route::post('/admin/subscriptions/store', 'SubscriptionController@store');
	Route::get('/admin/subscription/get', 'SubscriptionController@getSubscriptionById');
	Route::post('/admin/subscriptions/update', 'SubscriptionController@update');
