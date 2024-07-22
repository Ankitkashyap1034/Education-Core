			<div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">Testimonial</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title mb-0">Add Testimonial</h4>
                                    </div><!-- end card header -->
                                    <div class="card-body">
										<form method="POST" action="<?=SITEURL.'admin/testimonial/store';?>" id="form" enctype="multipart/form-data">
											<div class="row gy-4">
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Profile Image <span class="required">*</span></label>
	                                                    <input type="file" class="form-control" placeholder="Profile Image" name="file" autocomplete="off" required accept="image/*">
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Name <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="Name" name="name" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Designation <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="Designation" name="designation" autocomplete="off" required>
	                                                </div>
	                                            </div>
												<div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Rating <span class="required">*</span></label>
	                                                    <select class="form-control" placeholder="Rating" name="rating" autocomplete="off" required>
															<option value="">Select</option>
															<option value="1">1 Star</option>
															<option value="2">2 Star</option>
															<option value="3">3 Star</option>
															<option value="4">4 Star</option>
															<option value="5">5 Star</option>
														</select>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-12 col-md-12">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Description <span class="required">*</span></label>
	                                                    <textarea class="form-control" placeholder="Description" name="description" autocomplete="off" required></textarea>
	                                                </div>
	                                            </div>
												<div class="col-lg-12">
	                                                <div class="input-group">
	                                                    <button class="btn btn-sm btn-primary submit" type="submit">Save Testimonial</button>
	                                                </div>
	                                            </div>
											</div>
										</form>
                                        <!--end col-->
									</div>
								</div>
							</div
						</div>
					</div>
				</div>
			</div>
