<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>InMate | Signup</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/signup.png"/>
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
	<link rel="stylesheet" type="text/css" href="css/registration_user.css">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <script src="js/alert.js"></script>
<!--===============================================================================================-->
<style>
                   .buttdis{
                    font-family: Montserrat-Bold;
                    font-size: 15px;
                    line-height: 1.5;
                    color: #fff;
                    text-transform: uppercase;
                    width: 100%;
                    height: 50px;
                    border-radius: 25px;
                    background: grey;
                    display: -webkit-box;
                    display: -webkit-flex;
                    display: -moz-box;
                    display: -ms-flexbox;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    padding: 0 25px;
                    -webkit-transition: all 0.4s;
                    -o-transition: all 0.4s;
                    -moz-transition: all 0.4s;
                    transition: all 0.4s;
               }
</style>
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
				<div class="login100-pic js-tilt" data-tilt style="margin-top: -40px">
					<img src="assets/signup.png" alt="IMG">
				</div>

				<form class="login100-form validate-form" action="http://localhost:8080/InMate/RegistrationSess" onsubmit="return checkValid()" name="regform">
					<span class="login100-form-title" style='margin-top: -134px'>
						Member Registration
					</span>
                                    
                                    	<div class="wrap-input100 validate-input" data-validate = "Full name is required">
                                            <input class="input100" type="text" name="name" id="name" placeholder="Your full name" maxlength="40"
                                                   >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                            <input class="input100" type="email" name="email" id="email" placeholder="Your email address" maxlength="40" onkeyup="buttonStateListener()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
                                    
					<div class="wrap-input100 validate-input" data-validate = "Contact number is required">
                                            <input class="input100" type="tel" name="contact" id="contact" placeholder="Your contact no." maxlength="10" onkeyup="buttonStateListener()">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-phone" aria-hidden="true"></i>
						</span>
					</div>
                                    
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" id="pass" placeholder="Your password" 
                                                                             minlength="8" maxlength="16" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$" 
                                                                        title="Password must contain uppercase character, lowercase character, 
                                                                        special character as well as having minimum 8 characters long" 
                                                                            >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                                        </div>
                                    	<div class="wrap-input100 validate-input" data-validate = "Confirm password is required">
						<input class="input100" type="password" name="re_pass" id="re_pass" placeholder="Confirm your password" 
                                                                            >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                                        </div>
                                    	
                                    <div class="text-center p-t-12">
                                        <input type="checkbox" name="agree-term" id="agree-term"
                                                 checked="true">
						<span class="txt1">
							I have read and accept
						</span>
						<a class="txt2" name="myBtn" id="myBtn" href="javascript:openTerms()">
                                                    <u>terms & conditions</u></a>
					</div>
                                    
					<div class="container-login100-form-btn">
                                            <input class="login100-form-btn" id="subreg" type="submit" value="Register" name="subreg" style="cursor:pointer">
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="http://localhost:8080/InMate/login.jsp">
							I'm already a member
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
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
		});
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
            function checkValid(){
                        let x = document.getElementById("pass").value;
        let y = document.getElementById("re_pass").value;
            if (x !== y){
                 Swal.fire({
                    icon: 'error',
                    text: 'Confirmation password didn\'t match !',
                    showConfirmButton: false
                });
                return false;
            }
            if (!document.getElementById('agree-term').checked){
                    Swal.fire({
                    icon: 'info',
                    text: 'Please accept our terms & conditions to create an account',
                    showConfirmButton: false
                    });
                return false;
                }
            }
                function openTerms(){
                    Swal.fire({
                    title: '<strong>Terms & Conditions</strong>',
                    html:
                      '<p><b>Introduction</b></p><p>Welcome to our website. The Website is owned and operated by InMate. By using the Website,you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these Terms, you should not use the Website.</p><p><b> # Use of the Website</b></p><p><b>1) Eligibility:</b>&nbsp;&nbsp;You must be at least 18 years old to use the Website.</p><p><b>2) Account:</b>&nbsp;&nbsp;You may need to create an account to use some features of the Website. You are responsible for maintaining the confidentiality of your account information and for any activity that occurs under your account.</p><p><b> # InMate Services</b></p><p><b>1) Hosts:</b>&nbsp;&nbsp;Hosts are responsible for the accuracy and completeness of their listings, including pricing, availability, and other relevant details. Hosts must comply with all applicable laws, rules, and regulations, including those related to taxes, permits, and licenses.</p><p><b>2) Guests:</b>&nbsp;&nbsp;Guests are responsible for selecting a suitable accommodation based on their needs and preferences. Guests must comply with all applicable laws, rules, and regulations, and respect the rules and policies of the Host.</p>',
                    showCloseButton: true,
                    showCancelButton: false,
                    focusConfirm: false,
                    showConfirmButton: false,
                    focusClose: false
                  });
            }
        </script>
</body>
</html>