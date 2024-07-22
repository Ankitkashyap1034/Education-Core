// rendor modal
function rendor_modal(id, url){
    $('#modal').modal('show');
    $.ajax({
        url: url,
        type: "POST",
        cache: false,
        data : { id : id },
        beforeSend: function(){
            $('.pasteHere').html(`<div class="row">
                <div class="col-md-12">
                    <div class="text-center mb-3 mt-3">
                        Loading...
                    </div>
                </div>
            </div>`);
        },
        success: function(result){
            $('.pasteHere').html(result);
        },
        error: function(){
            $('#modal').modal('hide');
        },
    });
}

// remove
function remove(id, url){
    Swal.fire({
        // title: "Are you sure?",
        text: "Are you sure, You want to remove ?",
        type: "warning",
        showCancelButton: true,
        closeOnConfirm: false,
        confirmButtonText: "Yes, remove it!",
        confirmButtonColor: "#ec6c62"
    }, function() {
        $.ajax({
        	url: url,
        	type: "GET",
        	cache: false,
        	data : { id : id },
        	beforeSend: function(){},
        	success: function(result){if(result==1){location.reload();}},
        	error: function(){},
        })
        .done(function(result) {
            swal("Cancelled!", "Your data has been removed.", "success");
        })
        .error(function(result) {
            swal("Oops", "We couldn't connect to the server!", "error");
        });
    });
}

// remove
// function remove(id, url){
//     alert(id);
//     alert(url);
//     Swal.fire({
//         // title: "",
//         text: "Are you sure, You want to remove ?",
//         icon: "warning",
//         showCancelButton: !0,
//         confirmButtonClass: "btn btn-primary w-xs me-2 mt-2",
//         cancelButtonClass: "btn btn-danger w-xs mt-2",
//         confirmButtonText: "Yes, remove it!",
//         buttonsStyling: !1,
//         showCloseButton: !0
//     }).then(function(t){
//         $.ajax({
//         	url: url,
//         	type: "GET",
//         	cache: false,
//         	data : { id : id },
//         	beforeSend: function(){},
//         	success: function(result){if(result==1){location.reload();}},
//         	error: function(){},
//         });
//         t.value && Swal.fire({
//             // title: "Deleted!",
//             text: "Your data has been removed.",
//             icon: "success",
//             confirmButtonClass: "btn btn-primary w-xs mt-2",
//             buttonsStyling: !1
//         });
//     });
// }
