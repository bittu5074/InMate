<%@page import="oracle.jdbc.OracleStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="oracle.jdbc.OracleResultSet"%>
<%@page import="oracle.jdbc.OracleConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>InMate | User Profile</title>
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="css/user-profile.css">
        <link rel="icon" type="image/x-icon" href="assets/profile.png" />
        <script src="js/alert.js"></script>
        <script>
            window.history.forward();
                document.addEventListener('contextmenu',
                event => event.preventDefault());
        </script>
</head>
<body style="background-image: url('adback.png');background-position: center;background-size: cover;">
               <%!
        OracleConnection oconn;
        OracleStatement ost;
        OracleResultSet ors;
            String profile;
                %>                  
	<section class="py-5 my-5">
		<div class="container">
                    <div class="bg-white shadow rounded-lg d-block d-sm-flex">
				<div class="profile-tab-nav border-right">
					<div class="p-4">
						<div class="img-circle text-center mb-3">
							<img src="assets/profile.png" alt="Image" class="shadow prof">
						</div>
                   <%
                       HttpSession sess = request.getSession(true);
                       profile = sess.getAttribute("fname").toString();
            DriverManager.registerDriver(new oracle.jdbc.driver.OracleDriver());
            oconn = (OracleConnection) DriverManager.getConnection("jdbc:oracle:thin:@Asus-Vivobook-14:1521:orcl","inmate","project");
            ost = (OracleStatement) oconn.createStatement();
            String fetch = "select * from userdetails where email='"+profile+"'";
            ors = (OracleResultSet)ost.executeQuery(fetch);
                   %>
                                       <%
                                        while(ors.next())
                                            {
                                        %>
				<h4 class="text-center"><%=ors.getString("Name")%></h4>
					</div>
					<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
						<a class="nav-link active" id="account-tab" data-toggle="pill" href="#account" role="tab" aria-controls="account" aria-selected="true"
                                                   >
							<i class="fa fa-user text-center mr-1"></i> 
							Account
						</a>
						<a class="nav-link" id="password-tab" data-toggle="pill" href="#password" role="tab" aria-controls="password" aria-selected="false"
                                                   >
							<i class="fa fa-key text-center mr-1"></i> 
							Password
						</a>
                                            	<a class="nav-link" id="security-tab" data-toggle="pill" href="#security" role="tab" aria-controls="security" aria-selected="false">
							<i class="fa fa-lock text-center mr-1"></i>
							Security
						</a>
					</div>
				</div>
				<div class="tab-content p-4 p-md-5" id="v-pills-tabContent">
					<div class="tab-pane fade show active" id="account" role="tabpanel" aria-labelledby="account-tab">
                                            <form action="homepage.jsp" method="POST">
						<h3 class="mb-4">Account Information</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Name</label>
                                                                        <input type="text" class="form-control" value="<%=ors.getString("Name")%>" disabled=""true>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Email</label>
                                                                        <input type="text" class="form-control" value="<%=ors.getString("Email")%>" disabled="true">
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Password</label>
                                                                        <input type="text" class="form-control" value="<%=ors.getString("Password")%>" disabled="true">
								</div>
							</div>
                                                        <div class="col-md-6">
								<div class="form-group">
								  	<label>Mobile (+91)</label>
                                                                        <input type="tel" class="form-control" value="<%=ors.getString("Mobile")%>" disabled="true">
								</div>
							</div>
                                                          <%
                                                            }
                                                        oconn.close();
                                                       %>
						</div>
                                                <div>
                                                    <button class="btn btn-primary" style="width: 20%;background: #c3581c;border: 1px solid #c3581c;">Back</button>
						</div>
                                            </form>
					</div>
					<div class="tab-pane fade" id="password" role="tabpanel" aria-labelledby="password-tab">
                                            <form action="http://localhost:8080/InMate/ChangeProfilePass.jsp" method="POST" onsubmit="return checkValid()">
						<h3 class="mb-4">Password Settings</h3>
                                                    <div class="row">
							<div class="col-md-6">
								<div class="form-group">
								  	<label>Old Password</label>
                                                                        <input type="password" class="form-control" required="true" maxlength="16" name="adpasso">
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-6">                                                           
								<div class="form-group">
								  	<label>New Password</label>
                                                                        <input name="adpassn" id="adpassn" type="password" class="form-control" required="true" maxlength="16" pattern="^(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[!@#$%^&*_=+-]).{8,16}$" title="Password must contain uppercase character, lowercase character, special character as well as having minimum 8 characters long">
								</div>
							</div>
							<div class="col-md-6">                                                          
								<div class="form-group">
								  	<label>Confirm New Password</label>
                                                                        <input id="adconfn" type="password" class="form-control" required="true" maxlength="16">
								</div>
							</div>
						</div>
                                                   <div>
                                                    <button class="btn btn-primary" style="width: 20%;background: #c3581c;border: 1px solid #c3581c;">Update</button>
                                                   </div>
                                            </form>
					</div>
					<div class="tab-pane fade" id="security" role="tabpanel" aria-labelledby="security-tab">
                                            <form action="SignOut.jsp" method="POST">
						<h3 class="mb-4">Security Settings</h3>
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="recovery" required="true">
										<label class="form-check-label" for="recovery">
										Logout from all devices
										</label>
									</div>
								</div>
							</div>
						</div>
						<div>
                                                    <button class="btn btn-primary" style="width: 20%;background: #c3581c;border: 1px solid #c3581c;">Take Action</button>
						</div>
                                            </form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script>
         window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
            function checkValid(){
                if (document.getElementById('adpassn').value !== document.getElementById('adconfn').value){
                    Swal.fire('Oops !','Confirmation password didn\'t match','error');
                    return false;
                } else {
                    return true;
                }
            }
        </script>
</body>
</html>