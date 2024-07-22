			<div class="main-content">
                <div class="page-content">
                    <div class="container-fluid">
                        <!-- start page title -->
                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box d-sm-flex align-items-center justify-content-between">
                                    <h4 class="mb-sm-0">Profile</h4>
                                </div>
                            </div>
                        </div>
                        <!-- end page title -->
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title mb-0">Edit Profile</h4>
                                    </div><!-- end card header -->
                                    <div class="card-body">
										<form method="POST" action="<?=SITEURL.'admin/settings/profile/update';?>" id="form">
											<div class="row gy-4">
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Name <span class="required">*</span></label>
	                                                    <input type="text" class="form-control" placeholder="Name" name="name" value="<?=$data['profileData'][0]['users_name'];?>" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Email <span class="required" data-toggle="tooltip" title="If you need to edit your email address, Kindly connect with Administration">*</span></label>
	                                                    <input type="email" class="form-control tutor-email" placeholder="Email" name="email" value="<?=$data['profileData'][0]['users_email'];?>" autocomplete="off" readonly required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Phone <span class="required">*</span></label>
	                                                    <input type="text" class="form-control number" placeholder="Phone" name="phone" value="<?=$data['profileData'][0]['users_phone'];?>" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Gender <span class="required">*</span></label>
	                                                    <select class="form-control" placeholder="Gender" name="gender" autocomplete="off" required>
															<option value="">Select Gender</option>
															<option value="male" <?php if($data['profileData'][0]['users_gender']==='male'){ echo 'selected'; } ?>>Male</option>
															<option value="female" <?php if($data['profileData'][0]['users_gender']==='female'){ echo 'selected'; } ?>>Female</option>
															<option value="other" <?php if($data['profileData'][0]['users_gender']==='other'){ echo 'selected'; } ?>>Other</option>
														</select>
	                                                </div>
	                                            </div>
												<div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Address <span class="required">*</span></label>
	                                                    <input type="text" class="form-control number" placeholder="Address" name="address" value="<?=$data['profileData'][0]['users_address'];?>" autocomplete="off" required>
	                                                </div>
	                                            </div>
	                                            <div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Courses <span class="required">*</span></label>
														<div>
															<?php if(!empty($data['profileData'][0]['users_courses'])){ ?>
																<?php 
																	$courses = explode(',',$data['profileData'][0]['users_courses']);
																	foreach($courses as $course){ 
																?>
																	<?php 
																		$get_data_by_id = get_data_by_id($course, 'categories');
																		echo '<button type="button" class="btn btn-sm btn-primary">'.$get_data_by_id[0]['categories_name'].'</button>';
																	?>
																<?php } ?>
															<?php } ?>
														</div>
	                                                </div>
	                                            </div>
												<div class="col-xxl-6 col-md-6">
	                                                <div>
	                                                    <label for="basiInput" class="form-label">Profile Image <span class="required">*</span></label>
	                                                    <input type="file" class="form-control" placeholder="Profile Image" name="file" autocomplete="off" required accept="image/*">
	                                                </div>
	                                            </div>
												<div class="col-lg-12">
	                                                <div class="input-group">
	                                                    <button class="btn btn-sm btn-primary submit" type="submit">Update Profile</button>
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
