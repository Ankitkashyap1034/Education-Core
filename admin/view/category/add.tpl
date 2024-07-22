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
							<h4 class="mb-sm-0">Category</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->
				<div class="row">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Add Category</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<form method="POST" action="<?=SITEURL.'admin/category/store';?>" id="form">
									<div class="row gy-4">
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Category Name <span class="required">*</span></label>
												<input type="text" class="form-control" placeholder="Category Name" name="category_name" autocomplete="off" required>
											</div>
										</div>
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Show on Header <span class="required">*</span></label>
												<select class="form-control" placeholder="Show on Header" name="show_on_header" autocomplete="off" required>
													<option value="">Select</option>
													<option value="1">Yes</option>
													<option value="0">No</option>
												</select>
											</div>
										</div>
										<div class="col-lg-6">
											<div class="input-group">
												<button class="btn btn-sm btn-primary submit" type="submit">Save Category</button>
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
								<h4 class="card-title mb-0">Listing Category</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<div class="row gy-4">
									<div class="col-xxl-12 col-md-12">
										<div class="table-responsive">
											<table class="table table-striped table-listing">
												<thead>
													<tr>
														<th>S. No.</th>
														<th>Category Name</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													<?php $cnt = 1; if(count($data['categories'])>0){ foreach($data['categories'] as $category){ ?>
														<tr>
															<td><?=$cnt++;?></td>
															<td><?=$category['categories_name'];?></td>
															<td>
																<button class="btn btn-sm btn-primary" type="button" onclick="rendor_modal('<?=$category['categories_id'];?>', '<?=BASEURL?>admin/category/get')">Edit</button>
																<button class="btn btn-sm btn-danger" type="button" onclick="remove('<?=$category['categories_id'];?>', '<?=BASEURL?>admin/category/delete')">Delete</button>
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
