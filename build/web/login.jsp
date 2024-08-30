<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>InMate | Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="assets/user.png"/>
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
	<link rel="stylesheet" type="text/css" href="css/login_user.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
        <script src="js/alert.js"></script>
<!--===============================================================================================-->
<style>
            .decor {
                border-radius: 6px;
                background: grey;
                width: 50%;
                height: 30%;
                color: yellow;
                font-style: italic;
                font-weight: bold;
                font-size: 16px;
                text-align: center;
                cursor: default;
            }
                .fp-submit {
               display: inline-block;
               background: #b75924;
               color: #fff;
               border-bottom: none;
               border: 2px solid #b75924;
               width: auto;
               font-size: 16px;
               transition: all 0.5s;
               padding: 15px 39px;
               border-radius: 5px;
               -moz-border-radius: 5px;
               -webkit-border-radius: 5px;
               -o-border-radius: 5px;
               -ms-border-radius: 5px;
               margin-top: 25px;
               cursor: pointer; 
               }
               .fp-submit:hover{
                    background: transparent;
                    color: #b75924;
                    border: 2px solid #b75924;
               }
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
<body style="background-image: url('adback.png')">
   <script>
        function loadHome(){
            window.open('homepage.jsp',"_self")
        }
                        document.addEventListener('contextmenu',
                event => event.preventDefault());
                window.history.forward();
 </script>
         <%
            String raws = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
            StringBuilder sb = new StringBuilder();
            Random random = new Random();
            int length = 6;
                for (int i=0;i<length;i++){
                    int index = random.nextInt(raws.length());
                    char randomChar = raws.charAt(index);
                    sb.append(randomChar);
                }
                    String CODE = sb.toString();
        %>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt style='margin-top: -40px'>
					<img src="assets/user.png" alt="IMG">
				</div>

                            <form class="login100-form validate-form" action="http://localhost:8080/InMate/Requestsess" onsubmit="return checkValid()" method="POST">
					<span class="login100-form-title" style='margin-top: -134px'>
						Member Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                                            <input class="input100" type="email" name="logemail" id="logemail" placeholder="Email" maxlength="40">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="logpassword" id="logpassword" 
                                                       placeholder="Password" maxlength='16'>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
                                        </div>
                                    &nbsp;
					         <div style="display: flex">
                                           <b style="margin-top: 5px;font-size: 14px">Verification Code:</b>
                                             &nbsp;&nbsp;&nbsp;&nbsp;
                                                        <input id="vercodem" class="decor" value="<%=CODE%>" style='text-align: center'/>                                                  
                                                        </div>
                                                        &nbsp;
					<div class="wrap-input100">
						<input class="input100" type="text" id="vercode" 
                                                       placeholder="Enter Verification Code" maxlength='6'>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-shield" aria-hidden="true"></i>
						</span>
                                        </div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" id="sublog">
							Login
						</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1" id="ab">
							Forgot
						</span>
						<a class="txt2" href="javascript:forgotPass()" name="forgotpass" id="forgotpass">
							Username / Password?
						</a>
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="http://localhost:8080/InMate/registration.jsp" id="crea">
							Create your Account
						</a>
                                            &nbsp;&nbsp;
                                            	<span class="txt1" id="cd">
							or 
						</span>
                                            &nbsp;&nbsp;
						<a class="txt2" href="javascript:accessUp()" name="adlogin" id="adlogin">
							login as admin
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
          function checkValid(){
              if (document.getElementById('logemail').value === "" || 
                      document.getElementById('logpassword').value === ""){
                  Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Username or Password can\'t be empty !'
                    })
                    return false;
                } else if (document.getElementById('vercode').value === ""){
                      Swal.fire({
                        text: 'Please enter verification code !',
                        confirmButtonText: 'Dismiss'
                      })
                    return false;
                } else if (document.getElementById('vercode').value !== 
                        document.getElementById('vercodem').value){
                    Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'Please enter correct verification code !'
                    })
                    return false;
                } else {
                    document.getElementById("sublog").disabled = true;
                    document.getElementById("sublog").setAttribute("class","buttdis");
                    document.getElementById("sublog").style.cursor = "not-allowed";
                    document.getElementById("forgotpass").textContent = "";
                    document.getElementById("crea").textContent = "";
                    document.getElementById("adlogin").textContent = "";
                    document.getElementById("ab").textContent = "";
                    document.getElementById("cd").textContent = "";
                    return true;
                }
          }
                 function forgotPass(){
                        Swal.fire({
                        title: 'Password Updation',
                        html:
                            '<form method="POST" action="http://localhost:8080/InMate/PasswordSess" onsubmit="return updateValid()" class="register-form" id="login-form"><br>' +
                            '<div class="wrap-input100"><input class="input100" type="email" id="veremail" name="veremail" placeholder="Enter E-mail Address" maxlength="40" required="true"><span class="focus-input100"></span><span class="symbol-input100"><i class="fa fa-envelope" aria-hidden="true"></i></span></div>' +
                            '<div class="wrap-input100"><input class="input100" type="password" name="verpassword" id="verpassword" placeholder="Enter New Password" minlength="8" maxlength="16" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$" title="Password must contain uppercase character, lowercase character, special character as well as having minimum 8 characters long" onkeydown="dismissValid()" required="true"><span class="focus-input100"></span><span class="symbol-input100"><i class="fa fa-lock" aria-hidden="true"></i></span></div>' +
                            '<div class="wrap-input100"><input class="input100" type="password" name="veropassword" id="veropassword" placeholder="Confirm New Password" required="true" onkeydown="dismissValid()"><span class="focus-input100"></span><span class="symbol-input100"><i class="fa fa-lock" aria-hidden="true"></i></span></div>' +
                            '<div class="container-login100-form-btn" style="margin-top: -20px"><button class="fp-submit">Change Password</button></form></div><form action="login.jsp"><button class="fp-submit">Cancel</button></form>&nbsp;' +
                            '<br>'+
                            '<p id="error_st1" style="color: red"></p>' +
                            '<p id="error_st2" style="color: red"></p>' ,
                            showCancelButton: false,
                            showConfirmButton: false,
                            allowOutsideClick: false
                })
          }
          
          function updateValid(){
              let a = document.getElementById('verpassword').value;
              let b = document.getElementById('veropassword').value;
              let c = document.getElementById('error_st1');
              let d = document.getElementById('error_st2');
                if (a !== b ){
                    c.textContent = "Confirmation password didn\'t match.";
                    d.textContent = "Please try again !";
                    return false;
                }
          }
          function dismissValid(){
              let e = document.getElementById('error_st1');
              let f = document.getElementById('error_st2');
                    e.textContent = "";
                    f.textContent = "";
          }
          function accessUp(){
              window.open("http://localhost:8080/InMate/admin.jsp","_self");
          }
        document.getElementById("vercodem").addEventListener("mousedown", function(event){
                event.preventDefault();
    });
        </script>
</body>
</html>