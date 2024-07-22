<form method="POST" action="<?=SITEURL.'admin/locations/locations/update';?>" id="form">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Location</h5>
        <!-- <button type="button" class="close"> -->
            <span aria-hidden="true" data-bs-dismiss="modal" aria-label="Close" style="cursor:pointer;">&times;</span>
        <!-- </button> -->
    </div>
    <div class="modal-body">
        <div class="row gy-4">
			<div class="col-xxl-12 col-md-12">
				<div>
					<label for="basiInput" class="form-label">Country Name <span class="required">*</span></label>
					<select class="form-control" placeholder="Country Name" name="country_id" autocomplete="off" required>
						<option value="">Select Country Name</option>
						<?php if($data['countries']){ foreach($data['countries'] as $country){ ?>
							<option value="<?=$country['countries_id'];?>" <?php if($data['location'][0]['locations_country_id']===$country['countries_id']){ echo 'selected'; } ?>><?=$country['countries_name'];?></option>
						<?php } } ?>
					</select>
				</div>
			</div>
			<div class="col-xxl-12 col-md-12">
				<div>
					<label for="basiInput" class="form-label">Name <span class="required">*</span></label>
					<input type="text" class="form-control" placeholder="Name" name="name" autocomplete="off" value="<?=$data['location'][0]['locations_name'];?>" required>
				</div>
			</div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="hidden" name="id" value="<?=$data['location'][0]['locations_id'];?>">
        <button type="submit" class="btn btn-sm btn-primary submit">Update Location</button>
        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
    </div>
</form>

