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
							<h4 class="mb-sm-0">Menu</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->
				<div class="row">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Add Menu</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<form method="POST" action="<?=SITEURL.'admin/menu/store';?>" id="form">
									<div class="row gy-4">
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Menu Name</label>
												<input type="text" class="form-control" placeholder="Menu Name" name="menu_name" autocomplete="off" required>
											</div>
										</div>
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Menu Order</label>
												<input type="text" class="form-control" placeholder="Menu Order" name="menu_order" autocomplete="off" required>
											</div>
										</div>
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Menu Route</label>
												<input type="text" class="form-control" placeholder="Menu Route" name="menu_route" autocomplete="off" required>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="input-group">
												<button class="btn btn-sm btn-primary submit" type="submit">Save Menu</button>
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
								<h4 class="card-title mb-0">Listing Menu</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<div class="row gy-4">
									<div class="col-xxl-12 col-md-12">
										<div class="table-responsive">
											<table class="table table-striped table-listing">
												<thead>
													<tr>
														<td>S. No.</td>
														<td>Menu Name</td>
														<td>Menu Order</td>
														<td>Menu Status</td>
														<td>Action</td>
													</tr>
												</thead>
												<tbody>
													<?php $cnt = 1; if(count($data['menus'])>0){ foreach($data['menus'] as $menu){ ?>
														<tr>
															<td><?=$cnt++;?></td>
															<td><?=$menu['menus_name'];?></td>
															<td><?=$menu['menus_order'];?></td>
															<td>
																<?php if($menu['menus_status']==1){ ?>
																	<button class="btn btn-sm btn-primary" type="button">Enable</button>
																<?php }else{ ?>
																	<button class="btn btn-sm btn-danger" type="button">Disable</button>
																<?php } ?>
															</td>
															<td>
																<button class="btn btn-sm btn-primary" type="button" onclick="rendor_modal('<?=$menu['menus_id'];?>', '<?=BASEURL?>admin/menu/get')">Edit</button>
																<button class="btn btn-sm btn-danger" type="button" onclick="remove('<?=$menu['menus_id'];?>', '<?=BASEURL?>admin/menu/delete')">Delete</button>
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
