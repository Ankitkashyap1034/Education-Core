			<div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">Password</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title mb-0">Edit Password</h4>
                                    </div><!-- end card header -->
                                    <div class="card-body">
										<form method="POST" action="<?=SITEURL.'admin/settings/password/update';?>" id="form">
											<div class="row gy-4">
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">New Password <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="New Password" name="new_password" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Confirm Password <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="Confirm Password" name="confirm_password" autocomplete="off" required>
	                                                </div>
	                                            </div>
												<div class="col-lg-12">
	                                                <div class="input-group">
	                                                    <button class="btn btn-sm btn-primary submit" type="submit">Update Password</button>
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
