<?php
	class SubscriptionController{

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

		// @listing
		public function listing(){
			$data['title'] = 'Subscription';
			$data['description'] = 'Subscription';
			
			$data['subscriptions'] = DB::table('subscriptions');
			$data['subscriptions'] = $data['subscriptions']->orderBy('subscriptions_id', 'DESC');
			$data['subscriptions'] = $data['subscriptions']->get();
			$data['subscriptions'] = $data['subscriptions']->toArray();
			
			return admin('subscription/add', $data);
		}
		
		// @store 
		public function store(){
			$values = [
				'subscriptions_name' => $_POST['subscription_name'],
				'subscriptions_amount' => $_POST['subscription_amount'],
				'subscriptions_users' => Auth::user($_SESSION)->user_id,
				'subscriptions_status' => 1,
				'subscriptions_created_on' => date('Y-m-d H:i:s')
			];
			$subscriptionId = DB::table('subscriptions')->insert($values);
			
			if(!empty($_POST['meta_value'])){
				foreach($_POST['meta_value'] as $meta){
					if($meta!==NULL){
						$metaValues = [
							'subscriptions_meta_subscription_id' => $subscriptionId,
							'subscriptions_meta_value' => $meta
						];
						DB::table('subscriptions_meta')->insert($metaValues);
					}
				}
			}			
			return redirect('admin/subscriptions/list');
		}
		
		// @update
		public function update(){
			$id = $_POST['id'];
			$values = [
				'subscriptions_name' => $_POST['subscription_name'],
				'subscriptions_amount' => $_POST['subscription_amount'],
			];
			DB::table('subscriptions')->where('subscriptions_id', '=', $id)->update($values);
			return redirect('admin/subscriptions/list');
		}
		
		// @getSubscriptionById
		public function getSubscriptionById(){
			$id = $_POST['id'];
			$data['subscription'] = DB::table('subscriptions');
			$data['subscription'] = $data['subscription']->where('subscriptions_id', '=', $id);
			$data['subscription'] = $data['subscription']->first();
			$data['subscription'] = $data['subscription']->toArray();
			
			$data['metaValues'] = DB::table('subscriptions_meta');
			$data['metaValues'] = $data['metaValues']->where('subscriptions_meta_subscription_id', '=', $id);
			$data['metaValues'] = $data['metaValues']->get();
			$data['metaValues'] = $data['metaValues']->toArray();
			
			echo rendor_modal('subscription/edit-subscription-modal', $data);
		}
		
    }
