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
							<h4 class="mb-sm-0">Country</h4>
						</div>
					</div>
				</div>
				<!-- end page title -->
				<div class="row">
					<div class="col-lg-4">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Add Country</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<form method="POST" action="<?=SITEURL.'admin/locations/country/store';?>" id="form">
									<div class="row gy-4">
										<div class="col-xxl-12 col-md-12">
											<div>
												<label for="basiInput" class="form-label">Name <span class="required">*</span></label>
												<input type="text" class="form-control" placeholder="Name" name="name" autocomplete="off" required>
											</div>
										</div>
										<div class="col-lg-12">
											<div class="input-group">
												<button class="btn btn-sm btn-primary submit" type="submit">Save Country</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-lg-8">
						<div class="card">
							<div class="card-header">
								<h4 class="card-title mb-0">Listing Country</h4>
							</div><!-- end card header -->
							<div class="card-body">
								<div class="row gy-4">
									<div class="col-xxl-12 col-md-12">
										<div class="table-responsive">
											<table class="table table-striped table-listing">
												<thead>
													<tr>
														<th>S. No.</th>
														<th>Name</th>
														<th>Action</th>
													</tr>
												</thead>
												<tbody>
													
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
		$(document).ready(function() {
			$('.table-listing').DataTable({
				"ajax": {
					"url": "<?= BASEURL.'admin/locations/country/list-data'; ?>",
					"type": "GET",
					"dataType": "json",
					"dataSrc": "",
					"error": function(xhr, error, thrown) {
						console.log("AJAX Error:", xhr, error, thrown);
					}
				},
				"columns": [
					{ 
						"data": null,
						"render": function(data, type, row, meta) {
							return meta.row + 1; // Display auto-incremented number
						}
					},
					{ "data": "countries_name" },
					{
						"data": null,
						"render": function(data, type, row) {
							return `
								<button class="btn btn-sm btn-primary" onclick="rendor_modal('${row.countries_id}', '<?= BASEURL ?>admin/locations/country/get')">Edit</button>
								<button class="btn btn-sm btn-danger" onclick="remove('${row.countries_id}', '<?= BASEURL ?>admin/locations/country/delete')">Delete</button>
							`;
						}
					}
				]
			});
		});
	</script>
