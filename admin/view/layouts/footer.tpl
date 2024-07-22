        <!-- End Page-content -->
        <footer class="footer">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-6">
                        <script>document.write(new Date().getFullYear())</script> © <a href="<?=BASEURL;?>" target="_blank"><?=STORENAME;?></a>.
                    </div>
                    <div class="col-sm-6">
                        <div class="text-sm-end d-none d-sm-block">
                            Design & Develop by <a href="<?=BASEURL;?>" target="_blank"><?=STORENAME;?></a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!--start back-to-top-->
        <button class="btn btn-dark btn-icon" id="back-to-top">
        <i class="bi bi-caret-up fs-3xl"></i>
        </button>
        <!--end back-to-top-->
        <!--preloader-->
        <div id="preloader">
            <div id="status">
                <div class="spinner-border text-primary avatar-sm" role="status">
                    <span class="visually-hidden">Loading...</span>
                </div>
            </div>
        </div>
        <!-- JAVASCRIPT -->
        <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/simplebar/simplebar.min.js"></script>
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/plugins.js"></script>
        <!-- apexcharts -->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/apexcharts/apexcharts.min.js"></script>
        <!-- Vector map-->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/jsvectormap/js/jsvectormap.min.js"></script>
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/jsvectormap/maps/world-merc.js"></script>
        <!--Swiper slider js-->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/swiper/swiper-bundle.min.js"></script>
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/list.js/list.min.js"></script>
        <!-- Dashboard init -->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/pages/dashboard-ecommerce.init.js"></script>
        <!-- Sweet Alerts js -->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/libs/sweetalert2/sweetalert2.min.js"></script>

        <!-- Sweet alert init js-->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/pages/sweetalerts.init.js"></script>
        <!-- App js -->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/app.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/izitoast/1.4.0/js/iziToast.min.js"></script>
        <!-- Custom js -->
        <script src="<?=BASEURL.DIR_SYSTEM.'admin-assets/';?>assets/js/custom/custom.js"></script>
		<script>
			$('.tutor-email').click( function(){
				iziToast.error({
					message: 'If you need to edit your email address, Kindly connect with Administration',
					timeout: 8000,
					close: true,
					displayMode: 'once',
					position: 'topRight',
				});
			});
		</script>
		<script>
			$(document).ready(function () {    
				$('.number').keypress(function (e) {    
					var charCode = (e.which) ? e.which : event.keyCode    
					if (String.fromCharCode(charCode).match(/[^0-9]/g))    
						return false;                        
				});    
			}); 
		</script>
    </body>
</html>
