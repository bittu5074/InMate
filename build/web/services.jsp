<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- Mobile Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Site Meta -->
	<title>InMate | Services</title>
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
        <script src="js/alert.js"></script>
</head>
<style>
    img {
      max-width: 100%;
      height: auto;
      border-style: none;
      vertical-align: middle;
      border-style: none;
    }

    .game_text {
      width: 100%;
      float: left;
      font-size: 20px;
      color: white;
      margin: 0;
      text-align: center;
    }
    p {
      margin: 20px;
      font-weight: 300;
      font-size: 15px;
      line-height: 24px;
    }
    .game_section_2 {
      width: 100%;
      float: left;
      padding-top: 50px;
      padding-bottom: 90px;
    }
    .layout_padding {
      padding-top: 90px;
      padding-bottom: 0;
    }

    .service {
      padding-left: 350px;
      display: -ms-flexbox;
      display: flex;
      -ms-flex-wrap: wrap;
      flex-wrap: wrap;
      margin-right: auto;
      margin-left: auto;
    }

    .col-lg-3 {
      -ms-flex: 0 0 25%;
      flex: 0 0 25%;
      max-width: 25%;
    }
    .image_2 {
      width: 108%;
      float: left;
      background-image: url(images/img-2.jpg);
      height: auto;
      background-size: cover;
      padding-bottom: 8px;
      border-radius: 30px;
      height: 73%;
    }
    .number_text {
      width: 50px;
      margin: 0 auto;
      text-align: center;
      font-size: 24px;
      color: #fff;
      background-color: #d0a772;
      padding: 10px 5px;
      border: 2px solid #d0a772;
      border-radius: 100px;
      margin-top: 169px;
      text-transform: uppercase;
    }
    .game_text_1 {
      width: 100%;
      float: left;
      text-align: center;
      font-size: 24px;
      color: #fff;
      text-transform: uppercase;
      padding-top: 20px;
    }
    .many_text {
      width: 100%;
      float: left;
      text-align: center;
      font-size: 13px;
      color: #fff;
      margin: 0 auto;
    }
    .playnow_bt {
      width: 160px;
      margin: 0 auto;
      text-align: center;
    }
    .playnow_bt.active a {
      color: #fff;
    }
    .playnow_bt a {
      width: 100%;
      float: left;
      font-size: 18px;
      color: #fff;
      text-align: center;
      padding: 10px 0;
      border-radius: 30px;
      margin-top: 30px;
    }
    .col-lg-3 {
      -ms-flex: 0 0 25%;
      flex: 0 0 25%;
      width: 50%;
      padding: 47px;
      margin-top: 5px;
    }
    .image_3 {
      width: 108%;
      float: left;
      background-image: url(images/img-3.jpg);
      height: auto;
      background-size: cover;
      padding-bottom: 8px;
      border-radius: 30px;
      height: 73%;
    }
    .number_text_1 {
      width: 50px;
      margin: 0 auto;
      text-align: center;
      font-size: 24px;
      color: #fff;
      background-color: #d0a772;
      padding: 8px 5px;
      border: 2px solid #d0a772;
      border-radius: 100px;
      margin-top: 170px;
      text-transform: uppercase;
    }
    .game_text_1 {
      width: 100%;
      float: left;
      text-align: center;
      font-size: 24px;
      color: #fff;
      text-transform: uppercase;
      padding-top: 20px;
    }
    .many_text {
      width: 100%;
      float: left;
      text-align: center;
      font-size: 13px;
      color: #fff;
      margin: 0 auto;
    }
    .playnow_bt {
      width: 160px;
      margin: 0 auto;
      text-align: center;
    }
    .playnow_bt a {
      width: 100%;
      float: left;
      font-size: 18px;
      color: #fff;
      background-color: #c3581c;
      text-align: center;
      padding: 10px 0;
      border-radius: 30px;
      margin-top: 30px;
      border: 3px solid #c3581c;
    }
    .image_4 {
      width: 108%;
      float: left;
      background-image: url(images/img-4.jpg);
      height: auto;
      background-size: cover;
      padding-bottom: 8px;
      border-radius: 30px;
      height: 73%;
    }
    .number_text_2 {
      width: 50px;
      margin: 0 auto;
      text-align: center;
      font-size: 24px;
      color: #fff;
      background-color: #d0a772;
      padding: 8px 5px;
      border: 2px solid #d0a772;
      border-radius: 100px;
      margin-top: 170px;
      text-transform: uppercase;
    }
    .game_text_1 {
      width: 100%;
      float: left;
      text-align: center;
      font-size: 24px;
      color: #fff;
      text-transform: uppercase;
      padding-top: 20px;
    }
    .playnow_bt {
      width: 160px;
      margin: 0 auto;
      text-align: center;
    }
    .playnow_bt a {
      width: 100%;
      float: left;
      font-size: 18px;
      color: #fff;
      background-color: #c3581c;
      text-align: center;
      padding: 10px 0;
      border-radius: 30px;
      margin-top: 30px;
      border: 3px solid #c3581c;
    }
    .service-beau{
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        cursor: pointer;
        transition: all 0.5s;
    }
    .service-beau:hover{
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
        cursor: pointer;
        filter: brightness(70%);
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
                                    <span><b>Know Our Provided Services !</b></span>
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
					<h1>Our Services</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- Start Contact -->
            <section class="py-5">
                    <div class="service" style="margin-left: -120px">
      <div class="col-lg-3 col-sm-6">
        <div class="image_2 service-beau">
          <h1 class="number_text">01</h1>
          <h1 class="game_text_1"><b>MESS</b></h1>
        </div>
        <div class="playnow_bt"><a href="javascript:openMess()" style='margin-left: 6px'>View More</a></div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="image_3 service-beau">
          <h1 class="number_text_1">02</h1>
          <h1 class="game_text_1"><b>WIFI</b></h1>
        </div>
        <div class="playnow_bt"><a href="javascript:openWifi()" style='margin-left: 6px'>View More</a></div>
      </div>
      <div class="col-lg-3 col-sm-6">
        <div class="image_4 service-beau">
          <h1 class="number_text_2">03</h1>
          <h1 class="game_text_1"><b>LAUNDERETTE</b></h1>
        </div>
        <div class="playnow_bt"><a href="javascript:openLaund()" style='margin-left: 6px'>View More</a></div>
      </div>
    </div>
            </section>
	<!-- End Contact -->
	
        <script>
             window.oncontextmenu = function () {
             Swal.fire(
            'Security Alert',
            'Right-Click and Input-Facilities are disabled for security reason.',
            'warning'
            )
          }
          function openBroc(){
            var features = 'width=600, height=200,left=330,top=330';
            window.open("http://localhost:8080/InMate/Brochure.jsp", "Brochure", features);
          }
          function openMess(){
              Swal.fire({
                    title: '<strong>Mess Services</strong>',
                    html:
                      '<p style="text-align: start;font-size: 24px;width: 100%">There are three kind of mess service provided</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 1. Veg 🥕</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 2. Non-Veg 🍗</p>'+
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 3. Special 🍩</p>',
                    showCancelButton: false,
                    showConfirmButton: false
                  })
          }
          function openLaund(){
                   Swal.fire({
                    title: '<strong>Launderette Services</strong>',
                    html:
                      '<p style="text-align: start;font-size: 24px;width: 100%">There are two kind of launderette service provided</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 1. For weekends (Free of cost)</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 2. For daily (₹20/- per day)</p>',
                    showCancelButton: false,
                    showConfirmButton: false
                  })
          }
          function openWifi(){
                    Swal.fire({
                    title: '<strong>Wi-Fi Services</strong>',
                    html:
                      '<p style="text-align: start;font-size: 24px;width: 100%">There are two kind of Wi-Fi service provided</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 1. 2.4 GHz (72 MB/s) 📶</p>' +
                      '<p style="text-align: start;font-size: 20px;margin-left: 66px;font-weight: bold"> 2. 5 GHz (150 MB/s) 📶</p>',
                    showCancelButton: false,
                    showConfirmButton: false
                  })
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
	<script src="js/custom.js"></script>
</body>
</html>