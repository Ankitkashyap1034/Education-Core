<form method="POST" action="<?=SITEURL.'admin/subscriptions/update';?>" id="form">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Subscription</h5>
        <!-- <button type="button" class="close"> -->
            <span aria-hidden="true" data-bs-dismiss="modal" aria-label="Close" style="cursor:pointer;">&times;</span>
        <!-- </button> -->
    </div>
    <div class="modal-body">
        <div class="row gy-4">
            <div class="col-xxl-12 col-md-12">
				<div>
					<label for="basiInput" class="form-label">Subscription Name <span class="required">*</span></label>
					<select class="form-control" placeholder="Subscription Name" name="subscription_name" autocomplete="off" required style="pointer-events: none;">
						<option value="">Select Subscription Name</option>
						<option value="basic" <?php if($data['subscription'][0]['subscriptions_name']==='basic'){ echo 'selected'; } ?>>Basic</option>
						<option value="standard" <?php if($data['subscription'][0]['subscriptions_name']==='standard'){ echo 'selected'; } ?>>Standard</option>
						<option value="advance" <?php if($data['subscription'][0]['subscriptions_name']==='advance'){ echo 'selected'; } ?>>Advance</option>
					</select>
				</div>
			</div>
			<div class="col-xxl-12 col-md-12">
				<div>
					<label for="basiInput" class="form-label">Subscription Amount <span class="required">*</span></label>
					<input type="text" class="form-control number" placeholder="Subscription Amount" name="subscription_amount" value="<?=$data['subscription'][0]['subscriptions_amount'];?>" autocomplete="off" required>
				</div>
			</div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="hidden" name="id" value="<?=$data['subscription'][0]['subscriptions_id'];?>">
        <button type="submit" class="btn btn-sm btn-primary submit">Update Subscription</button>
        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
    </div>
</form>
