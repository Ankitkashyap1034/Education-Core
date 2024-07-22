	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css">
	<style>
		.dataTables_wrapper .dataTables_paginate .paginate_button{
			padding: unset !important;
		}
	</style>
	<div class="main-content">
		<div class="page-content">
			<div class="container-fluid">
				<!-- start page title -->
				<div class="row">
					<div class="col-12">
						<div class="page-title-box d-sm-flex align-items-center justify-content-between">
							<h4 class="mb-sm-0">Subscription</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->
				<div class="row">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Add Subscription</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<form method="POST" action="<?=SITEURL.'admin/subscriptions/store';?>" id="form">
									<div class="row gy-4">
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Subscription Name <span class="required">*</span></label>
												<select class="form-control" placeholder="Subscription Name" name="subscription_name" autocomplete="off" required>
													<option value="">Select Subscription Name</option>
													<option value="basic">Basic</option>
													<option value="standard">Standard</option>
													<option value="advance">Advance</option>
												</select>
											</div>
										</div>
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Subscription Amount <span class="required">*</span></label>
												<input type="text" class="form-control number" placeholder="Subscription Amount" name="subscription_amount" autocomplete="off" required>
											</div>
										</div>
										<div class="col-xxl-9 col-md-9">
											<div>
												<label for="basiInput" class="form-label">Meta Value <span class="required">*</span></label>
												<input type="text" class="form-control" placeholder="Meta Value" name="meta_value[]" autocomplete="off" required>
											</div>
										</div>
										<div class="col-xxl-3 col-md-3" style="align-content: end;">
											<div class="input-group">
												<button class="btn btn-primary addon-meta-button w-100" type="button">Add</button>
											</div>
										</div>
										<div class="addon-meta"></div>
										<div class="col-lg-6">
											<div class="input-group">
												<button class="btn btn-sm btn-primary submit" type="submit">Save Subscription</button>
											</div>
										</div>
									</div>
								</form>
								<!--end col-->
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Listing Subscription</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<div class="row gy-4">
									<div class="col-xxl-12 col-md-12">
										<div class="table-responsive">
											<table class="table table-striped table-listing">
												<thead>
													<tr>
														<th>S. No.</th>
														<th>Subscription Name</th>
														<th>Subscription Amount</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<?php $cnt = 1; if(count($data['subscriptions'])>0){ foreach($data['subscriptions'] as $subscription){ ?>
														<tr>
															<td><?=$cnt++;?></td>
															<td><?=ucfirst($subscription['subscriptions_name']);?></td>
															<td>INR <?=$subscription['subscriptions_amount'];?></td>
															<td>
																<button class="btn btn-sm btn-primary" type="button" onclick="rendor_modal('<?=$subscription['subscriptions_id'];?>', '<?=BASEURL?>admin/subscription/get')">Edit</button>
																<button class="btn btn-sm btn-danger" type="button" onclick="remove('<?=$subscription['subscriptions_id'];?>', '<?=BASEURL?>admin/subscription/delete')">Delete</button>
															</td>
														</tr>
													<?php } } ?>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- modal -->
	<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content pasteHere">

			</div>
		</div>
	</div>
	
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
	<script src="https://cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js" defer="defer"></script>
	<script src="https://cdn.datatables.net/1.10.12/js/dataTables.bootstrap4.min.js" defer="defer"></script>
	<script>
		$(document).ready(function () {
			$('.table-listing').DataTable({});
		});
	</script>
	<script>
		$('.addon-meta-button').click( function(){
			$('.addon-meta').append(
				`<div class="row mb-4">
					<div class="col-xxl-9 col-md-9">
						<div>
							<label for="basiInput" class="form-label">Meta Value <span class="required">*</span></label>
							<input type="text" class="form-control" placeholder="Meta Value" name="meta_value[]" autocomplete="off" required>
						</div>
					</div>
					<div class="col-xxl-3 col-md-3" style="align-content: end;">
						<div class="input-group">
							<button style="font-size: 12px" class="btn btn-danger remove" type="button">Remove</button>
						</div>
					</div>
				</div>`
			);
		});
		$(document).on('click', '.remove', function() {
			$(this).closest('.row').remove();
		});
	</script>