<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- Mobile Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Site Meta -->
	<title>InMate | Contact Us</title>
	<meta name="keywords" content="">
	<meta name="description" content="">
	<meta name="author" content="">

	<!-- Site Icons -->
	<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
        <link rel="icon" type="logo" href="images/mainlogo.jpeg">
	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<!-- Site CSS -->
	<link rel="stylesheet" href="css/index-styles.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="css/responsive.css">
	<!-- Custom CSS -->
	<link rel="stylesheet" href="css/contact.css">
        <link rel="stylesheet" href="css/whatsapp.css">
        <script src="js/alert.js"></script>
</head>
<style>
	.map {
            padding-bottom: 40%;
            position: relative;

               color: black;
       }

        .map iframe {
             height: 100%;
             width: 100%;
             left: 0;
             top: 0;
             position: absolute;
        }
        #cont{
                background-color: #a58256;
            height: 30rem;
            width: 90%;
        }
        .textarea {
            resize:none;
        }
        .sub {
            background: #f8f9fa;
            border: 2px solid #c3581c;
            border-radius: 10px;
            cursor: pointer;
            color: #c3581c;
            width: 40%;
            font-size: 18px;
            transition: all 0.5s;
            text-align: center;
        }
        .sub:hover {
            background: #c3581c;
            border: 2px solid #c3581c;
            border-radius: 10px;
            cursor: pointer;
            color: white;
            width: 40%;
            font-size: 18px;
            text-align: center;
        }
                .top-navbar .navbar-light .navbar-nav .nav-item.active .nav-link {
                background: #c3581c;
                    }
            .top-navbar .navbar-light .navbar-nav .nav-item .nav-link:hover {
                background:#c3581c;
                color: #ffffff;
            }
            .top-navbar .navbar-light .navbar-nav .nav-link {
                border-radius: 49px;
            }
            .top-navbar .navbar-light .navbar-nav .nav-item.active .nav-link {
                background: #c3581c;
                color: #ffffff;
                border-radius: 26px;
            }
            .navbar-expand-lg .navbar-nav .dropdown-menu a.dropdown-item:hover {
                color: #ffffff;
                background: #b75924;
            }
            .slides-navigation a {
                background: #b75924;
            }
            .inner-column h1 span {
                color: #b75924;
                font-weight: bold;
            }
            .inner-column h1 {

                font-weight: bold;
            }
            .inner-column .btn-outline-new-white {
                color: #b75924;
            }
            .btn-outline-new-white {
                color: #fff;
                background-color: transparent;
                background-image: none;
                border-color: #b75924;
                    border-radius:40px;
            }
            .btn-outline-new-white:hover {
                color: #ffffff;
                background-color: #b75924;
                border-color: #b75924;
                border-radius: 39px;
            }

            .about-section-box .img-fluid {
                box-shadow: -10px -10px 4px #b75924;
            }
            .slides-pagination a {
                border: 2px solid #ffffff;
            }
            .slides-pagination a.current {
                background: transparent;
                    border: 2px solid white;

            }
            .heading-title h2 {
                font-weight: bold;
            }
            .heading-title h2 {
                font-weight: bold;
            }
            .filter-button-group button {
                font-weight: bold;
            }
            .filter-button-group button.active {
                background: #b75924;
                color: #fff;
                box-shadow: 2px 20px 45px 5px rgba(0, 0, 0, .2);
            }
            .why-text{
                background: #b75924b3;
            }
            #reviews .carousel-control-next {
                background: #b75924;
            }
            #reviews .carousel-control-prev {
                background: #b75924;
            }
            .text-warning {
                color: #b75924 !important;
                font-size: 24px;
            }
            .contact-imfo-box h4 {

                color: #ffffff;
            }
            .contact-imfo-box {
                background: #b75924;
            }
            .contact-imfo-box p {
                color: #ffffff;
            }
            a, .btn {

                color: white;
            }
            .subscribe_form .submit {
                background-color: #b75924;
                    border-radius: 45px;
            }
            #back-to-top {
                background: #b75924;
            }
</style>

<body>
        <script>
                document.addEventListener('contextmenu',
                event => event.preventDefault());
    </script>
	<!-- Start header -->
	<header class="top-navbar">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="#">
                                    <span><b>We're Here To Help You Out !</b></span>
                                    &nbsp;&nbsp;
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food"
					aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="http://localhost:8080/InMate/homepage.jsp">Home</a></li>
                                                <li class="nav-item"><a class="nav-link" href="http://localhost:8080/InMate/homepage.jsp">Gallery</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/InMate/services.jsp">Services</a></li>
                                                <li class="nav-item"><a class="nav-link" href="javascript:openBroc()">Brochure</a></li>
						<li class="nav-item"><a class="nav-link" href="http://localhost:8080/InMate/contact.jsp">Contact</a></li>
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="#" id="dropdown-a"
								data-toggle="dropdown">Places</a>
							<div class="dropdown-menu" aria-labelledby="dropdown-a">
								<a class="dropdown-item" href="Bangalore.jsp">Bangalore</a>
								<a class="dropdown-item" href="Kolkata.jsp">Kolkata</a>
								<a class="dropdown-item" href="Delhi.jsp">Delhi</a>
								<a class="dropdown-item" href="Pune.jsp">Pune</a>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<!-- End header -->

	<!-- Start All Pages -->
	<div class="all-page-title page-breadcrumb">
		<div class="container text-center">
			<div class="row">
				<div class="col-lg-12">
					<h1>Contact Us</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End All Pages -->
        <br><br>
	<div class="map">
	<iframe
		src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3684.392014814661!2d88.3215032!3d22.564436999999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a02782b277682fb%3A0xa01dde4fad48f837!2s273%2C%20Grand%20Trunk%20Rd%2C%20Shibpur%2C%20Howrah%2C%20West%20Bengal%20711102!5e0!3m2!1sen!2sin!4v1682673265151!5m2!1sen!2sin"
		width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
		referrerpolicy="no-referrer-when-downgrade"></iframe>
	</div>
	<!-- Start Contact -->
            <section class="py-5">
                <div class="container px-5">
                    <!-- Contact form-->
                    <div class="bg-light rounded-4 py-5 px-4 px-md-5">
                        <div class="text-center mb-5">
                            <div class="feature bg-primary bg-gradient-primary-to-secondary text-white rounded-3 mb-3"></div>
                            <h1 class="fw-bolder"><b>Contact Us</b></h1>
                            <p class="lead fw-normal text-muted mb-0">Kindly contact with us by filling this form</p>
                            <p class="lead fw-normal text-muted mb-0">if you have any queries</p>
                        </div>
                        <div class="row gx-5 justify-content-center">
                            <div class="col-lg-8 col-xl-6">
                                <form action="http://localhost:8080/InMate/putContact.jsp"
                                      method="POST" onsubmit="return checkForm()">
                                    <!-- Name input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="name" type="text" placeholder="Enter your name" 
                                               maxlength="40" name="cname"/>
                                    </div>
                                    &nbsp;&nbsp;
                                    <!-- Email address input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="email" type="email" placeholder="Enter your email" 
                                               maxlength="40" name="cmail"/>
                                    </div>
                                    &nbsp;&nbsp;
                                    <!-- Phone number input-->
                                    <div class="form-floating mb-3">
                                        <input class="form-control" id="phone" type="tel" placeholder="Enter contact number" 
                                               maxlength="10" name="cphone"/>
                                    </div>
                                    &nbsp;&nbsp;
                                    <!-- Message input-->
                                    <div class="form-floating mb-3">
                                        <textarea class="form-control textarea" id="message" type="text" placeholder="Enter your message here" style="height: 10rem" 
                                                  maxlength="100" name="cmessage"></textarea>
                                    </div>
                                    &nbsp;&nbsp;<br>
                                    <input type="submit" class="sub" id="submitButton" value="Send Message">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
	<!-- End Contact -->

	<!-- Start Contact info -->
	<div class="contact-imfo-box">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<i class="fa fa-volume-control-phone"></i>
					<div>
						<h4>Phone</h4>
						<p class="lead">
							+91 9163885060
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-envelope"></i>
					<div>
						<h4>Email</h4>
						<p class="lead">
							inmateservices20@gmail.com
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<i class="fa fa-map-marker"></i>
					<div>
						<h4>Location</h4>
						<p class="lead">
							273 G.T Road, Belur
						</p>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact info -->

	<!-- Start Footer -->
	<footer class="footer-area bg-f">
		<div class="container">
			<div class="row">

				<div class="col-lg-3 col-md-6">
					<h3>Opening hours</h3>
					<p><span class="text-color">Sunday: </span>Closed</p>
					<p><span class="text-color">Mon-Wed :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Thu-Fri :</span> 9:Am - 10PM</p>
					<p><span class="text-color">Sat :</span> 5:PM - 10PM</p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Contact information</h3>
					<p class="lead">273 G.T Road, Liluah 711204</p>
					<p class="lead">+91 9163885060</p>
					<p><a>inmateservices19@gmail.com</a></p>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Subscribe</h3>
					<div class="subscribe_form">
						<form class="subscribe_form" action="http://localhost:8080/InMate/putSubscribe.jsp" method="POST" 
                                                      onsubmit="return checkSubscriber()">
							<input name="SUBSMAIL" id="subs-email" class="form_input" placeholder="Enter Email Address"
								type="email">
                                                        <br><br><br>
							<button type="submit" class="submit">SUBSCRIBE</button>
							<div class="clearfix"></div>
						</form>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<h3>Connect</h3>
					<ul class="list-inline f-social">
						<li class="list-inline-item"><a href="https://www.facebook.com/InMateService/" target="blank"><i class="fa fa-facebook" aria-hidden="true"></i></a>
						</li>
                                                <li class="list-inline-item"><a href="https://twitter.com/InmatePG" target="blank"><i class="fa fa-twitter" aria-hidden="true"></i></a>
						</li>
						<li class="list-inline-item"><a href="https://www.linkedin.com/in/inmateservices/" target="blank"><i class="fa fa-linkedin" aria-hidden="true"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->
        
        <div id="Mybutton2">
        <a href="https://wa.me/919163885060" target="_blank" id="wha3"><button class="btn-success" id="wha" data-toggle="modal" data-target="">
            <img src="images/whatsapp.png" id="wha2" alt="GNIHM Whatsapp">
        </button></a>
        </div>
	<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>
        <script>
            function checkSubscriber(){
                if (document.getElementById('subs-email').value === ""){
                    Swal.fire({
                    icon: 'error',
                    text: 'Subscriber email can\'t be empty !',
                    confirmButtonText: 'Dismiss'
                    })
                    return false;
                } else {
                    return true;
                }
            }
             window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
          function checkForm(){
              if (document.getElementById('name').value === "" || document.getElementById('email').value === ""
                      || document.getElementById('phone').value === "" || document.getElementById('message').value === ""){
                                      Swal.fire({
                    icon: 'error',
                    text: 'You didn\'t fill the form properly !',
                    confirmButtonText: 'Dismiss'
                    })
                    return false;
               } else {
                   return true;
               }
          }
          function openBroc(){
            let features = 'width=600, height=200,left=330,top=330';
            window.open("http://localhost:8080/InMate/Brochure.jsp", "Brochure", features);
          }
        </script>
	<!-- ALL JS FILES -->
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<!-- ALL PLUGINS -->
	<script src="js/jquery.superslides.min.js"></script>
	<script src="js/images-loded.min.js"></script>
	<script src="js/isotope.min.js"></script>
	<script src="js/baguetteBox.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
	<script>
		$('.map-full').mapify({
			points: [
				{
					lat: 40.7143528,
					lng: -74.0059731,
					marker: true,
					title: 'Marker title',
					infoWindow: 'InMate'
				}
			]
		});
	</script>
</body>
</html>