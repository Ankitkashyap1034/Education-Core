	function toJSONString(form) {
        var obj = {};
        var elements = form.querySelectorAll("input, select, textarea");
        for (var i = 0; i < elements.length; ++i) {
            var element = elements[i];
            var name = element.name;
            var value = element.value;
            if (name) { obj[name] = value}
        }
        return JSON.stringify(obj);
    }

    document.addEventListener("DOMContentLoaded", function() {
        var form = document.getElementById("form");
        var action = document.getElementById('form').action;
        form.addEventListener("submit", function(e) {
            e.preventDefault();
            var json = toJSONString(this);
            var formData = json;
            // console.log(formData);

            var xhr = new XMLHttpRequest();
            xhr.open("POST", "admin/check/login");
            xhr.setRequestHeader("Content-Type", "application/json");

            xhr.onreadystatechange = function() {
                if (xhr.readyState == XMLHttpRequest.DONE) {
                    if (xhr.status == 200) {
                        if(xhr.responseText==1){
                            toast('info', 'Login Successfull');
                            window.location.href = action;
                        }else if(xhr.responseText==2){
                            toast('error', 'Invalid Password');
                        }else if(xhr.responseText==3){
                            toast('error', 'Unknown User');
                        }else{
							window.location.href = xhr.responseText;
						}
                    } else if (xhr.status == 400) {
                        toast('error', 'There was an error 400');
                    } else {
                        toast('error', 'Unknown Error');
                    }
                }
            };
            xhr.send(formData);
        });
    });
	
	document.addEventListener("DOMContentLoaded", function() {
		var form = document.getElementById("register-form");
		var action = form.action;
		
		form.addEventListener("submit", function(e) {
			e.preventDefault();
			
			// Serialize regular form fields
			var formData = $(this).serializeArray();
			
			// Handle multiple select fields
			$(this).find('select[multiple]').each(function() {
				var fieldName = $(this).attr('name');
				var selectedValues = $(this).val();
				if (selectedValues) {
					selectedValues.forEach(function(value) {
						formData.push({ name: fieldName, value: value });
					});
				}
			});

			// Convert formData to JSON format
			var jsonData = JSON.stringify(formData);

			// Disabling UI elements
			$('body').css('pointer-events', 'none');
			$('.data-icon-loader').removeClass('d-none');
			$('.submit-btn').prop('disabled', true);
			$('.submit-btn').css('cursor', 'no-drop');

			// AJAX request
			var xhr = new XMLHttpRequest();
			xhr.open("POST", "admin/check/register");
			xhr.setRequestHeader("Content-Type", "application/json");

			xhr.onreadystatechange = function() {
				if (xhr.readyState == XMLHttpRequest.DONE) {
					if (xhr.status == 200) {
						var response = xhr.responseText;
						if (response == 2) {
							toast('error', 'Email already in use, kindly register with a different Email Address');
						} else if (response == 3) {
							toast('error', 'Kindly fill all required fields');
						}else {
							toast('info', 'Register Successfull, Kindly check your registered Email');
							window.location.href = response;
						}
					} else if (xhr.status == 400) {
						toast('error', 'There was an error 400');
					} else {
						toast('error', 'Unknown Error');
					}

					// Re-enable UI elements
					$('.data-icon-loader').addClass('d-none');
					$('body').css('pointer-events', '');
					$('.submit-btn').prop('disabled', false);
					$('.submit-btn').css('cursor', 'pointer');
				}
			};
			xhr.send(jsonData);
		});
	});


    function otp(int){
        return true;
    }

    function toast(type, value){
        return iziToast.info({
            message: value,
            timeout: 8000,
            close: true,
            displayMode: 'once',
            position: 'topRight',
        });
    }
