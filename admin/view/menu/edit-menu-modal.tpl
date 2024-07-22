<form method="POST" action="<?=SITEURL.'admin/menu/update';?>" id="form">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit Menu</h5>
        <!-- <button type="button" class="close"> -->
            <span aria-hidden="true" data-bs-dismiss="modal" aria-label="Close" style="cursor:pointer;">&times;</span>
        <!-- </button> -->
    </div>
    <div class="modal-body">
        <div class="row gy-4">
            <div class="col-xxl-12 col-md-12">
                <div>
                    <label for="basiInput" class="form-label">Menu Name</label>
                    <input type="text" class="form-control" placeholder="Menu Name" name="menu_name" autocomplete="off" value="<?=$data['menu'][0]['menus_name'];?>" required>
                </div>
            </div>
            <div class="col-xxl-12 col-md-12">
                <div>
                    <label for="basiInput" class="form-label">Menu Order</label>
                    <input type="text" class="form-control" placeholder="Menu Order" name="menu_order" autocomplete="off" value="<?=$data['menu'][0]['menus_order'];?>" required>
                </div>
            </div>
            <div class="col-xxl-12 col-md-12">
                <div>
                    <label for="basiInput" class="form-label">Menu Route</label>
                    <input type="text" class="form-control" placeholder="Menu Route" name="menu_route" autocomplete="off" value="<?=$data['menu'][0]['menus_route'];?>" required>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <input type="hidden" name="id" value="<?=$data['menu'][0]['menus_id'];?>">
        <button type="submit" class="btn btn-sm btn-primary submit">Update Menu</button>
        <button type="button" class="btn btn-sm btn-danger" data-bs-dismiss="modal">Close</button>
    </div>
</form>
