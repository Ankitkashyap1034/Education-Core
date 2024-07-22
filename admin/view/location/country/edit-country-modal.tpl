<form method="POST" action="<?=SITEURL.'admin/locations/country/update';?>" id="form">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Country</h5>
        <!-- <button type="button" class="close"> -->
            <span aria-hidden="true" data-bs-dismiss="modal" aria-label="Close" style="cursor:pointer;">&times;</span>
        <!-- </button> -->
    </div>
    <div class="modal-body">
        <div class="row gy-4">
            <div class="col-xxl-12 col-md-12">
                <div>
                    <label for="basiInput" class="form-label">Name</label>
                    <input type="text" class="form-control" placeholder="Name" name="name" autocomplete="off" value="<?=$data['country'][0]['countries_name'];?>" required>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="hidden" name="id" value="<?=$data['country'][0]['countries_id'];?>">
        <button type="submit" class="btn btn-sm btn-primary submit">Update Country</button>
        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
    </div>
</form>

