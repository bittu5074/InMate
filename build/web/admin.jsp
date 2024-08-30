<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>InMate | Admin Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/admin.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/adminst.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <script src="js/alert.js"></script>
<!--===============================================================================================-->
</head>
<body>
   <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
                window.history.forward();
 </script>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt style="margin-top: -100px">
					<img src="assets/admin.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="adminLogConfirm.jsp" onsubmit="return validate()" style="margin-top: -100px">
					<span class="login100-form-title">
						Admin Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                            <input class="input100" type="email" name="admin_username" id="username" placeholder="Admin E-mail Address" maxlength="40">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="admin_password" id="password" 
                                                       placeholder="Admin Password" maxlength='16'>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                                        </div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							I want to
						</span>
						<a class="txt2" href="javascript:loadAccess()">
							exit from admin portal
						</a>
					</div>
				</form>
                        </div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
        <script>
             window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            );
          };
          function loadAccess(){
                            Swal.fire({
                title: 'Do you want to exit ?',
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: 'Stay',
                denyButtonText: `Exit`,
              }).then((result) => {
        if (result.isConfirmed) {
                Swal.DismissReason;
            } else if (result.isDenied) {
                window.open("login.jsp","_self");
            }
      })
          }
                    function validate (){
                if (document.getElementById('username').value === "" || 
                      document.getElementById('password').value === ""){
                  Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Username or Password can\'t be empty !'
                    })
                    return false;
                } else {
                    return true;
                }
          }
        </script>
</body>
</html>