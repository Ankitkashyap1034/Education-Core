<form method="POST" action="<?=SITEURL.'admin/category/update';?>" id="form">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Category</h5>
        <!-- <button type="button" class="close"> -->
            <span aria-hidden="true" data-bs-dismiss="modal" aria-label="Close" style="cursor:pointer;">&times;</span>
        <!-- </button> -->
    </div>
    <div class="modal-body">
        <div class="row gy-4">
            <div class="col-xxl-12 col-md-12">
                <div>
                    <label for="basiInput" class="form-label">Category Name</label>
                    <input type="text" class="form-control" placeholder="Category Name" name="category_name" autocomplete="off" value="<?=$data['category'][0]['categories_name'];?>" required>
                </div>
            </div>
			<div class="col-xxl-12 col-md-12">
				<div>
					<label for="basiInput" class="form-label">Show on Header <span class="required">*</span></label>
					<select class="form-control" placeholder="Show on Header" name="show_on_header" autocomplete="off" required>
						<option value="">Select</option>
						<option value="1" <?php if($data['category'][0]['categories_show_on_header']===1){ echo 'selected'; } ?>>Yes</option>
						<option value="0" <?php if($data['category'][0]['categories_show_on_header']===0){ echo 'selected'; } ?>>No</option>
					</select>
				</div>
			</div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="hidden" name="id" value="<?=$data['category'][0]['categories_id'];?>">
        <button type="submit" class="btn btn-sm btn-primary submit">Update Category</button>
        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
    </div>
</form>
