			<div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">User</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title mb-0">Add User</h4>
                                    </div><!-- end card header -->
                                    <div class="card-body">
										<form method="POST" action="<?=SITEURL.'admin/user/store';?>" id="form">
											<div class="row gy-4">
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Name <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="Name" name="name" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Email <span class="required">*</span></label>
	                                                    <input type="email" class="form-control" placeholder="Email" name="email" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Phone <span class="required">*</span></label>
	                                                    <input type="text" class="form-control number" placeholder="Phone" name="phone" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Gender <span class="required">*</span></label>
	                                                    <select class="form-control" placeholder="Gender" name="gender" autocomplete="off" required>
															<option value="">Select Gender</option>
															<option value="male">Male</option>
															<option value="female">Female</option>
															<option value="other">Other</option>
														</select>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">User Type <span class="required">*</span></label>
	                                                    <select class="form-control" placeholder="User Type" name="type" autocomplete="off" required>
															<option value="">Select User Type</option>
															<option value="1">Tutor</option>
															<option value="2">User</option>
														</select>
	                                                </div>
	                                            </div>
												<div class="col-lg-12">
	                                                <div class="input-group">
	                                                    <button class="btn btn-sm btn-primary submit" type="submit">Save User</button>
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
