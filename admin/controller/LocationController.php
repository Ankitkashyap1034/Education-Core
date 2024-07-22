<?php
	class LocationController{

		function __construct() {
			require_once DIR_SYSTEM . 'helper/helper.php';
			authentication();
			$userData = Auth::user($_SESSION);
			$GLOBALS['menus'] = DB::table('menus');
			$GLOBALS['menus'] = $GLOBALS['menus']->where('menus_parent', '=', 0);
			$GLOBALS['menus'] = $GLOBALS['menus']->whereIn('menus_role_permission', [$userData->user_role]);
			$GLOBALS['menus'] = $GLOBALS['menus']->where('menus_status', '=', 1);
			$GLOBALS['menus'] = $GLOBALS['menus']->orderBy('menus_order', 'ASC');
			$GLOBALS['menus'] = $GLOBALS['menus']->get()->toArray();
		}

		// @countryStore
		public function countryStore(){
			$slug = makeSlug($_POST['name'], 'countries');
			$values = [
				'countries_name' => $_POST['name'],
				'countries_slug' => $slug,
				'countries_users' => session('user_id'),
				'countries_status' => 1,
				'countries_created_on' => date('Y-m-d H:i:s')
			];
			DB::table('countries')->insert($values);
			return redirect('admin/locations/country/list');
		}
		
		// @countryUpdate
		public function countryUpdate(){
			$id = $_POST['id'];
			$slug = makeSlug($_POST['name'], 'countries');
			$values = [
				'countries_name' => $_POST['name'],
				'countries_slug' => $slug,
			];
			DB::table('countries')->where('countries_id', '=', $id)->update($values);
			return redirect('admin/locations/country/list');
		}
		
		// @countryListing
		public function countryListing(){
			$data['title'] = 'Country';
			$data['description'] = 'Country';
			return admin('location/country/listing', $data);
		}
		
		// @countryListingData
		public function countryListingData(){
			$data['countries'] = DB::table('countries');
			$data['countries'] = $data['countries']->orderBy('countries_id', 'DESC');
			$data['countries'] = $data['countries']->get();
			$data['countries'] = $data['countries']->toArray();
			
			echo json_encode($data['countries']);
			exit;
		}
		
		// @getCountryById
		public function getCountryById(){
			$id = $_POST['id'];
			$data['country'] = DB::table('countries');
			$data['country'] = $data['country']->where('countries_id', '=', $id);
			$data['country'] = $data['country']->first();
			$data['country'] = $data['country']->toArray();
			echo rendor_modal('location/country/edit-country-modal', $data);
		}
		
		// @locationListing
		public function locationListing(){
			$data['title'] = 'Location';
			$data['description'] = 'Location';
			$data['countries'] = DB::table('countries');
			$data['countries'] = $data['countries']->orderBy('countries_id', 'DESC');
			$data['countries'] = $data['countries']->get();
			$data['countries'] = $data['countries']->toArray();
			return admin('location/location/listing', $data);
		}

		// @locationStore
		public function locationStore(){
			$slug = makeSlug($_POST['name'], 'locations');
			$values = [
				'locations_country_id' => $_POST['country_id'],
				'locations_name' => $_POST['name'],
				'locations_slug' => $slug,
				'locations_users' => session('user_id'),
				'locations_status' => 1,
				'locations_created_on' => date('Y-m-d H:i:s')
			];
			DB::table('locations')->insert($values);
			return redirect('admin/locations/locations/list');
		}
		
		// @getLocationById
		public function getLocationById(){
			$id = $_POST['id'];
			
			$data['countries'] = DB::table('countries');
			$data['countries'] = $data['countries']->orderBy('countries_id', 'DESC');
			$data['countries'] = $data['countries']->get();
			$data['countries'] = $data['countries']->toArray();
			
			$data['location'] = DB::table('locations');
			$data['location'] = $data['location']->leftJoin('cp_countries', 'cp_countries.countries_id', '=', 'cp_locations.locations_country_id');
			$data['location'] = $data['location']->where('locations_id', '=', $id);
			$data['location'] = $data['location']->first();
			$data['location'] = $data['location']->toArray();
			
			echo rendor_modal('location/location/edit-location-modal', $data);
		}
		
		// @locationListingData
		public function locationListingData(){
			$data['locations'] = DB::table('locations');
			$data['locations'] = $data['locations']->leftJoin('cp_countries', 'cp_countries.countries_id', '=', 'cp_locations.locations_country_id');
			$data['locations'] = $data['locations']->orderBy('locations_id', 'DESC');
			$data['locations'] = $data['locations']->get();
			$data['locations'] = $data['locations']->toArray();
			
			echo json_encode($data['locations']);
			exit;
		}
		
		// @locationUpdate
		public function locationUpdate(){
			$id = $_POST['id'];
			$slug = makeSlug($_POST['name'], 'locations');
			$values = [
				'locations_country_id' => $_POST['country_id'],
				'locations_name' => $_POST['name'],
				'locations_slug' => $slug,
			];
			DB::table('locations')->where('locations_id', '=', $id)->update($values);
			return redirect('admin/locations/locations/list');
		}
		
		// @locationCategoryListing
		public function locationCategoryListing(){
			$data['title'] = 'Location';
			$data['description'] = 'Location';
			
			$data['locations'] = DB::table('locations');
			$data['locations'] = $data['locations']->orderBy('locations_id', 'DESC');
			$data['locations'] = $data['locations']->get();
			$data['locations'] = $data['locations']->toArray();
			
			$data['categories'] = DB::table('categories');
			$data['categories'] = $data['categories']->orderBy('categories_id', 'DESC');
			$data['categories'] = $data['categories']->get();
			$data['categories'] = $data['categories']->toArray();
			
			return admin('location/category/listing', $data);
		}

		// @locationCategoryStore
		public function locationCategoryStore(){
			$categories = $_POST['category_id'];
			$categoryIds = implode(',',$categories);
			$values = [
				'location_categories_location_id' => $_POST['location_id'],
				'location_categories_category_id' => $categoryIds,
				'location_categories_users' => session('user_id'),
				'location_categories_status' => 1,
				'location_categories_created_on' => date('Y-m-d H:i:s')
			];
			DB::table('location_categories')->insert($values);
			return redirect('admin/locations/category/list');
		}
		
    }
