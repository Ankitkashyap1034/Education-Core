	<div class="page contact">	
		<div class="content">
			<?php if(count($data['subscriptions'])>0){ foreach($data['subscriptions'] as $subscription){ ?>
				<div class="<?php if($subscription['subscriptions_name']=='basic'){ ?>basic<?php }elseif($subscription['subscriptions_name']=='standard'){ ?>standard<?php }else{ ?>business<?php } ?> box">
					<h2 class="title"><?=ucfirst($subscription['subscriptions_name']);?></h2>
					<div class="view">
						<div class="icon">
							<?php if($subscription['subscriptions_name']=='basic'){ ?>
								<img src="https://i.postimg.cc/2jcfMcf4/hot-air-balloon.png" alt="hot-air-balloon">
							<?php }elseif($subscription['subscriptions_name']=='standard'){ ?>
								<img src="https://i.postimg.cc/DzrTN72Z/airplane.png" alt="airplane">
							<?php }else{ ?>
								<img src="https://i.postimg.cc/wvFd6FRY/startup.png" alt="startup">
							<?php } ?>
						</div>
						<div class="cost">
							<p class="amount">INR <?=$subscription['subscriptions_amount'];?></p>
							<p class="detail">for month</p>
						</div>
					</div>
					<?php 
						$data['metaValues'] = DB::table('subscriptions_meta');
						$data['metaValues'] = $data['metaValues']->where('subscriptions_meta_subscription_id', '=', $subscription['subscriptions_id']);
						$data['metaValues'] = $data['metaValues']->get();
						$data['metaValues'] = $data['metaValues']->toArray();
					?>
					<div class="description">
						<ul>
							<?php if(count($data['metaValues'])>0){ foreach($data['metaValues'] as $meta){ ?>
								<li><?=$meta['subscriptions_meta_value'];?></li>
							<?php } } ?>
						</ul>
					</div>
					<div class="buttons">
						<button type="button" >PURCHASE SUBSCRIPTION</button>
					</div>
				</div>
			<?php } } ?>
        </div>
	</div>
	
