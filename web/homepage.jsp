<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en"><!-- Basic -->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">

	<!-- Mobile Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Site Meta -->
	<title>InMate | Home</title>
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
	<link rel="stylesheet" href="css/custom.css">
        <link rel="stylesheet" href="css/chatb.css">
        <link rel="stylesheet" href="css/font-awesome-min.css">
        <script src="js/alert.js"></script>

</head>
<style>
	.image1 {
		width: 100%;
		height: 14.4rem;
		border-radius: 2px;
	}
	body{
		background-color: #d7d2ce;
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
            box-shadow: -10px -10px 4px #d7d2ce;
            border: 2px solid #b75924;
        }
        .slides-pagination a {
            border: 2px solid #ffffff;
        }
        .slides-pagination a.current {
            background: #b75924;
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
    <%!
        String name;
        HttpSession sess;
        %>
        <%
             sess = request.getSession(true);
                if (sess == null){
                    response.sendRedirect("login.jsp");
                }
            name = sess.getAttribute("user").toString();
            %>
	<!------------------------------ Start header ---------------------------->
	<header class="top-navbar" id="top">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<div class="container">
				<a class="navbar-brand" href="#">
                                    <span id="openProf"><b>Welcome, <%=name%></b></span>
                                        &nbsp;&nbsp;
                                        <i class="fa fa-power-off" aria-hidden="true" id="logout"
                                           style='color: #c3581c'></i>
				</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbars-rs-food"
					aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbars-rs-food">
					<ul class="navbar-nav ml-auto">
						<li class="nav-item active"><a class="nav-link" href="http://localhost:8080/InMate/homepage.jsp">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="#gallery">Gallery</a></li>
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

	<!-- Start slides -->
	<div id="slides" class="cover-slides">
		<ul class="slides-container">
			<li class="text-center">
				<img src="images/slider-03.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20" style="font-family: 'Times New Roman', Times, serif;"><strong>Welcome To
									<br> InMate</strong></h1>
                                                    <p class="m-b-40"><b>The Place Of Your Choice</b><br>
								Experience the
								regulated way of life with us.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#explore">EXPLORE</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="images/slider-02.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20" style="font-family: 'Times New Roman', Times, serif;"><strong>Welcome To
									<br> InMate</strong></h1>
							<p class="m-b-40"><b>The Place Of Your Choice</b><br>
								Experience the
								regulated way of life with us.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#explore">EXPLORE</a></p>
						</div>
					</div>
				</div>
			</li>
			<li class="text-center">
				<img src="images/slider-01.jpg" alt="">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<h1 class="m-b-20" style="font-family: 'Times New Roman', Times, serif;"><strong>Welcome To
									<br>InMate</strong></h1>
							<p class="m-b-40"><b>The Place Of Your Choice</b><br>
								Experience the
								regulated way of life with us.</p>
							<p><a class="btn btn-lg btn-circle btn-outline-new-white" href="#explore">EXPLORE</a></p>
						</div>
					</div>
				</div>
			</li>
		</ul>
		<div class="slides-navigation">
			<a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
			<a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
		</div>
	</div>
	<!-- End slides -->

	<!-- Start About -->
	<div class="about-section-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6 col-sm-12">
					<img src="https://i0.wp.com/www.thelodhi.com/wp-content/uploads/sites/3/2020/10/room5-slider1.jpg?resize=1300%2C730&ssl=1"
						alt="" class="img-fluid">
				</div>
				<div class="col-lg-6 col-md-6 col-sm-12 text-center">
					<div class="inner-column">
						<h1>Hey Mates! <span>We Welcome You To Our Praiseworthy Services.</span></h1>

						<h4 style="color: black; font-family: 'Times New Roman', Times, serif;"></h4>
						<p style="color: black; font-family: 'Times New Roman', Times, serif;">"Our friends" This small
							word is very meaningful for college students. Our friends, who come
							from outside the city to study at our college are struggling to find good accommodation.
							Most of them are staying in shady hostels and paying exorbitant rents, which leaves them
							with little money for other essentials.
						</p>
						<p style="color: black; font-family: 'Times New Roman', Times, serif;">We are passionate about
							coding and web development that's why when we have to submit our BCA
							final semester major project idea we submit Inmate, we decide to put our skills to good use
							and build a website that would help our outsider friends find good PG accommodation in the
							town.</p>
						<a class="btn btn-lg btn-circle btn-outline-new-white" href="about.jsp">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End About -->

	<!-- Start QT -->
	<div class="qt-box qt-background">
		<div class="container">
			<div class="row">
				<div class="col-md-8 ml-auto mr-auto text-left">
					<p class="lead " id="Rooms"> <!--Here this ID=Rooms will lead to the rooms interface-->
						" Spread love everywhere you go. Let no one &nbsp;ever come to you without leaving happier. "
					</p>
					<span class="lead">&nbsp; - Mother Teresa</span>
				</div>
			</div>
		</div>
	</div>
        <div id="explore"></div>
        <br>
	<!-----------------------ROOMS--------------------------- -->

	<div class="menu-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>OUR ROOMS</h2>
						<b>
							<p style="font-family: 'Times New Roman', Times, serif; font-size: larger;">TAKE A LOOK AT
								OUR HIGH
								PROFILED PAYING GUESTS </p>
						</b>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="special-menu text-center">
						<div class="button-group filter-button-group">
							<button class="active" data-filter="*">All</button>
                                                        &nbsp;&nbsp;
							<button data-filter=".drinks">One-Bedded</button>
                                                        &nbsp;&nbsp;
							<button data-filter=".lunch">Two-Bedded</button>
                                                        &nbsp;&nbsp;
							<button data-filter=".dinner">Three-Bedded</button>
                                                        &nbsp;&nbsp;
						</div>
					</div>
				</div>
			</div>

			<div class="row special-list">
				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgVFRYYGBgYHBgYGBoYGBgYGBoYGBgaGRgYGBgcIS4lHB4rIRgYJjgmKy8xNTU1GiQ7QDs0Py40NTEBDAwMEA8QGhISHTQhISs0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NDQ0NP/AABEIAKkBKQMBIgACEQEDEQH/xAAbAAACAwEBAQAAAAAAAAAAAAADBQIEBgcBAP/EAEgQAAIBAgIFCQQGCQMCBwEAAAECAAMRBCEFEjFBUQYiMmFxgZGhsXKywdETI0JSYvAkM3OCkqKzwuEHFGM0Q4OTo8PS4vEV/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAIhEBAQACAgICAwEBAAAAAAAAAAECESExAxIiURMyQWFx/9oADAMBAAIRAxEAPwDX05dptKdISwptOR1Qo5Qv9Yg/B/cflKIS8Lygf65PYHvNI4cyv4TOcr3K01I++PQyhTxbJgle+f0yMnG6MCR4geMY8uKfMpji/wADA6awupgcOoFgXLdpYfHKF1ZJfsYy7tn0bVauri6lK2VVi6cAMRSDe+ijxifAVQj1K2eomqG6laq6t4Fwf3ZqNIUVe7AfW4ekKim200/rEA47vEdczhog1q+HVjqVkZkuBztVy5AvsBsf4YeLrQzmqdVKuo6PuBz9k5HyJj+ogIzAMzGM6C9g9IzwGObUQNY2AHcMhJNYqYJT1Su2jeBl5K4PEQoKnfDZ6Inwbru8INKpEv19IlCwcXC3NxtsBfvlDDafwz9I6hO5xq+ezzlcp4W6VeW0ryFGjTcayMCDvUgjyk2wJ3GTtWh1rSf02z87jF703WQNYjaIAyWtl4+sg9XrlAYkQL4nrgF968rvihF74q5ylarjMt3dDQ2vVq8rByTKaOXNhHWBw1usx9ELhMJbM7YwsFFzIa4XIZnyEG1zmYjRquT2cIErClZ4RAF2I6R/O6VzLeJXnHu9JX1ZUTUAJIT4mQJjAmtI60jJBI0vCZ8qGTCyYgEAgE9kiZGAa2iIRpGkISqMpmtldON9cPYX1aFwzQOl863cvxnuGj/hQt5XqD9ADvc+6ZPlutsFhxvBHuj5wfK2iX+hA265OfUv+YTlmh/2VIE9HVz6rAbeMm9xpj+tWEr/AElOqtRglQ00p3O661Nc2vmLop7xxinDBRTw1RjY02qUTnnquhA7TZ+7PhLnLjCINSoMmZCbjLnqm3syW/VEFNFehrg9Co1RlJ6QOqr26tW7d8vx3e7PtGc1xWmx+wdgh8CvMXsEHpAZeUsYIcxPZX0k0LlNYUzyksM65GBsVp/EMFcg2yYeItMscgRwUE/x6t/KaLlKeY/WQPEgREy3+lJ+4P69S/kpm2PTHLs75NG2IXaAVc5b9lr8cpuaVXZzvyeztmH0EP0gDetlPek1tDd1Bf7ZOU3V4dLrVTvsew+M0GC0GpUNUBJIvqg2AvuuMyZkqzEI9jmEqEdovaazCaZVgAzqjDIhja9t636Q35d8zvB5bvQekeTKFSadwwzsTcHqucwZisTgT9kzfYnTqIpzVmGwKQSeF7dEdZnIdP6SqJXOo7KMhYZjdc2OW+VJ7dJlsnyXMRQddx9ZXp0GY+pn2hNLPU1g7Llq7gNt/kI6xLKLRXculTV5fYOiFGXeYwR9w8d8X4diYyoLJqh0ST1IRRPjGYDCQIhWg2gShX2ys0u1aZJgxQEuJqpqkyX0ctFJBhGkDVn0kwkTAPrz6fT6MPCZ9ee6s+1IBrabSGJxQAttMHr2izFPzjIk2qsNyj0jUXFOFdlACZA5dEbpXo8ocQn21b2lX4WheUeF16zsps3N7DzR4RPTw9Q/9tmtvVb+M09dxHto6flA9UrrqnMuQUuNthvJjPT+MFTCHVN9TU9LfKZSmhUm6OuWd1OXXDCswR0U81xY8DvBHAyM/HvVn2vDPv8A432PwJxK10GbKlAU77NcJrlerWACmYfnJRRwDcVXBW2eoUpqQeIujDxmu0Pjw6UwD0qqs/YtIoEPbbwvKvKDVqkUr6uq30zWGR5mQ6iSzyPHbjxV+STLmGGPOUu4IcxPZX3RKGPMYYPoJ7K+gjqTCkISp0TIUpLEHmmJTA8o9luLD1iBzdKn4lt4viY+0+ej7a+sz6Z01/EUHi9b5zfDpz59tHoMfpZ6wP5XqD5TZ4WjcH2U8/8A8mN5PG+JB4q3lVb5zd4Bcj7KekNLx6VquHyccRUHiLz36I37/nL7Jt7X92elM/z1ybicpOynVN+r4zCcoT+kMPxIf4tb5CdGZOYf3fUzm3KU/pD+1RHr84YzkZdI6EyPcPK0f1m5w7Ig0O3OI4f/AF+ceVukOwSc/wBhj0Z4PZGtAxRgzlGdFpC18GRZoLXg2rCAEdoJmlXGYtaYU1GCBiQpc6oJG2xM8TEKwuGDDiCCPKAWxskGEJSsVBHX6zxxNJ0igOIFod4B4yDYwZkyJ8EgELSSrCqkmqQAapJakJaeRA1LSDJeRDQ6CSpg9NUj/uHA3FfcWVkQ23g7L9XDrjHTLfpNX2h7iz7DKDtE1xukWKyY56a2bXcbCB9GQV4FWW3n4RbXGGa5ptUDk86m6Lqm53FdlvyTNFV0dcXXwgW0MrWLLYjfNMdVFlgGJ5OV8PTTFUjroyhmIFyl87ON6/iGzfbbAYbEK6VLkfSsb22ZWVVC8RZfMzqGgqlFaaon1bAAEjMMfxL9rt29kxvLLROFViaTpSrA6xQXakx23UqDqHut1bTDPxS8wsfJeq80jtMYYTor7K+gmcw2lPpOZUGpUH8LcCvX1eE0uGHNXsHpOfKaby7MKU8xbcwzxDB45uYZCmG063Q9seQJ+EQUOhT7U96pHenTmvax8EaJKB5tEfiT3qk6MenPl20PJd71aZ4o/wDVm9wVSwa9+inuic95JVdV6LcEf37zoWGfWDC2wIPBRJynLTG8LeuPNvcM+DD0+MC2zvb3DIo39vxk8q4Rc8w/u+s5hyiN69T26Y8p0n7Ddo98TmumjerVP/Kg8wJUTn0Hodueeu//ALc0NXpDsHxmb0UfrB163pTm7wOhDUCuzhVIFrC7fISMp8jx6V8K2UZ4ak79BSevd4nKN8DoeklrLrHi/O8tnlGYho9k9PRLbXbuX5mWaeFROiovxOZ85ccyu7RzErWH/wBTBdKPtv7s5/UcqDqGxHStlYEC2d7m5uLDhOjf6iUGalSYbBUt/EjH+0zJYLSQoAj/AG2GqNt16qPUbK1si+qLdSx7kKy2NfyKB/2VO/Gp/UeN3EDyfxpr4am7IiE641aaBEFncCyjZslp0jCswgmSW2pyGrAKwSSCQ+pPtWIA6s9tCFZ5aACYSNoVhB2gF1Zapyqss05KmH0u36TV9v0AELg5W0mf0ir7b+RtLeB3S4k4oLkZo9FIrCzAEcDnMvja30dG+d3YKPU+XrHOhMTcCbYds8ujXSOhUI1kJQ7bDZ4TDaV0EzkkA6/3lzPeN83NfHDWKcAL98rYIgVBx2y7fpEnHJKmjsPVwapiGBekrdEBai2JP1bDpXy5rA3O8RHorTBWoMPU1mubU3ZSjsN2upPmCe/bNfyywdN11woDZgkZE9vGZDRWK1RqMb6tgt9wtMvLpfj21CGV8e/MMhRrgz3F5pMJG1YjT5zHY5/kPzimknNo9q+8fnHfKKnbP8FT0UfGUcNS/VjqU+DJ850Y48OfLLkXk7kaPsP5sflOlYJM37R5LOa6AGeH609S06fhF29Z+EXryqXhIrke1vdIgKGz+H0Msp0T+98ZWwvRX933YvVe0fsP7Q98TmOlTd6p/wCZP6iidOHQqe1/es5hpP8A7h/5VP8A6wEJE5VVwD2dexvNUnWdCH6lPZE5Bh256dh91J1vQZ+op+yJOU+R43g7VpIN8fWCQySH1PrDStvnaVmMsOJXYR6LZTylK/RLrAMNdciL/YqTn2lsKNcldmeX8Pzm65Yvq0E/ar7lSYnFVPQ/2TnylmTfHVw02nI5P0Ol+/8A1akbskpclP8Ao6PY/wDVqRowm+M4jC9qrJBlZZcQREegDqz4rJkTyIBlZAwrQZiATSEm5g4BetD05WVpZQyGjA6QN69b9o/vGW8EZRxRvWq/tKnvtLmDMtDQpqvTKsAbEMt9zDK47iR3xpgauQiAVtVGPUfSNNC61VSUK3FuaTYm/C+W475pjkmw6xFRSOiLkcJTpqocPnfZt4Sb4PEHJae7eyW9YRdDVtUlmTW3AXt3tx7pfNRxC7T7KENmNszmb7bn4zCYVdaqVYkCxbLI3vbfOh6IxBcOtRLMrlSjgG2qbA58doPAi0p8ptAo4OJpKVqKOeozV1Gd+phbv8JGeOzxulLAaLQjpv4r/wDGNRodWFvpH/l+UUaKxJAUsCARkSCLjiL7RNHQrCZSNLWE5a4EUrAMWulQ52+8g3dsU4c89OpL+DU48/1EfMew48WT5TOo9n7KLfD5Trx6jmy7T0Ic8J1oPUzqWGIsv5+zOV6LNmwg4KB5mdMw1XJfzuk3i1ePMHw55p7H9TK2BPMT8/ZhMHUup7G9TB4CpzU/P2YqpEHmVfb/AL1nM9JjmP7Yv/5wPxnSC/Mq+2PfWc20m2Tj8f8AekJ0WRbR6ad/uU51vQZ+op5Hojh85yKkeen73u051/QX6in7C+kz18jnRojH7p/l+ckjH7p2n7vHtnimEVvz3ytHtF2P3T/L84Ek/dP8vzlhjBXhomW5dMfoEyt9avD7lSYbEv8AHzCzcf6gn6hP2o9ypMBXPkPgswznyb434un8kP8Ao6X/AIn9V43aJORh/QqX7/8AVeOWM0x6jK9oPAmEdoImUETImekyJMk3jQTGTYwTNEEHMDeFcwV4BdQS3TErUpaSZNHPa36yp+0qe+0uYMSo689/bf3zGWCpky0PtL1NWnb71h8fhFOg9KMlW18gBccVJzHkCI50/gjqo18ucG6jkQevfMgHC11tsIK9u+/lGL26/hcebC/OGVjfaNojnDYm+wsO3nD/ABMBoXSgK6jbtnqR8e8zR4XH6uYPdHhnq6oyxlnBppl6YKOcma411sQdX7LC/WZOjdiCrjVtZsjext9kXlDSuJWtRZCLHapvazbrdffttEmh9Ia6c7ppkw6xlrDtt5TTLP1u+4zmO5r+thicKHGqwR14WsRwsNx8IkxeENLNSSvXtXtO8Q1LFMBtvwhmdXFjkT15GHtjkPWxzXl3Xuyj8NvFxELK5LsiOw+jZbqjEXIItcDbOmPyUoVwHqo5sSo57AGx2822/wBJo8Bgkp01ROaqAKoucgOs5maY9MrOXE8K5D0AQRqGxvlazHbwm6w2kUCi7qMztYDdH+nNBJVBdbB9u3JgBmD19cyDaPW+zMbeO/dxmWeVxvTXDGWL+A0qgU6zqOltI4mQwemKaqgZ9l9isd3UIAYIDKw8BPV0eu2wvw6rkXB3zK+WtZgl/wD1VKVFAa7OCOYwFtZTtPUDMVpRHCuWVgCb3tl0039021LDatiD+eGUmU6u6w+UU81gvjlczoHnr+97tOdh0E31FL2F9Jm8ToTDtzmp6rZ5plt25DI7BtEbYDFhEVLEhQFB32GQuOMvHyY27vBfjsjRK09R/U+so0cYh3+OUsI/qfWayy9M7LO1m8iJANPQYwyn+ojfU0/2n9jzA1j6H0Wbv/UY/U0v2h9xpgcSfz3LMMp8muP6unciz+hUv3/6jxyxiPkUf0Kn+/8A1Hjppc6jO9ouYImEeAaMPi0gzTxjBsZJvGaRYzxjBkwDxzIXnzmQhoGtKW0Eq0hLSTBq5/bnv7b+8Y3wJtaKE6Te03vGN8MMpaY90xV+rt1zC6Q5rK/3SD8/K82OlG5o7Zk9KrtjhZG+AdgQcu45zU4DGBl2Z7/nOf6GxoyRxmLBW2G24TTYetqWK8d/DhFlNHjeGtw1a35HxEzeD1qdVgekpsfxA7D1gjzB4Rzhqutbh5iUtMuEdaoUtq3VgASSpGZ7jn48YS8aFnOznDYgbDu39nHrl1CDM/h8SjIrK2sjHWDDrz+ceYRN5+YtCdnTnBuCuqTmMh2E3lxFiNKDO2st1A+18BxjtTYeE6sbuObKaoGoMxvzHdM9pnAgMHAyOT9/Rb/M0jnM+Mq4lAwIOwgjv3WizksVhdVkGp2ZjbYo5vHPNh1gS3YZGwIvbqO6x4MM5QrYzVYo2RQ2PaLg/HxkDpEC/X8fyZxV0wwKZ5dXV3du2BdLEjKUW0pwIlWppThnJUauoO2D1QN8TPpJoJse3GAPC4G+0mmkQuQbu3TMVcY22B/3BOYMc3OhdVt6Gm0Jsx1b5X3d/CNadQEXBBHUbzl1WsQCxOQBJ7s5Q0dpyqhulU9jZ92eYHYZtj5Mtc8scsZvjhtf9Rf1NL9p/Y059iG/PcsfaZ06+JpIjqoZH19YHI81ltbdt47omXCsxz8j84XKW7OTU06RyJP6FS7an9V48aKuS9DUw1NLWtrnP8Ts3xjJ2ms6jO9vmMAzT1nlZ3gE2aDZoNngmqQMRmgy0EzwZeAHYyF4IvI60kH9OWUldBLKTBqwFIZntPrGlLIRdhhl35y9sF5dTFDSlXMARBiKbO2og1mO74ngI1xus7KiC7MbD4kncBtvNPoTQ9OiOdznbNmOVzwHADhDei1usxhOSZtz8zvjbC8nHFgjN2HMTVHFIv2RPl02V6IA7ovbfavXXSOjOT2IyJZF7VJ8ReNsZoVmTVarxuFRQpB25NrHwIi06bqNvlarpJztY+Mv2xk1pPrlt5hOTNKndVJUb7NYdursjjAYOlSB1qhYZHVYggHwmdfFHj5yu9c8ZMzk/irjttH0nTG/ZAVdNJuuey1/OY5qh3meox3G/Ve0r89T+KH+J01UN9SlluLuB5AGL20rib5imB7TfKDpYi+W08BK9arY5ggcSVAmWWeV7rSY4xmtKYh2ruTkWcg2Nx0AbjtMrq7EZ/iHhb/M90vjkFRirA5g83PPUt2RY2lPurvJzPE9UWrRuQ2UG5ufzaSvET6SfdYd2fnK9XFudrt3Zekc8dHtGieoo2m3bK1TSNMfaB7Ln0mcZ+OfbnIlpU8aLmd1NLoNmse75yrU0qfsKBfec/IRWzT28uYYwrnTjRrPWdkZstUm1t4Ki2XbPMXofVJGwi+Ryz7ZZ5IoWrMAL8xuv7STU6QQE6xG1iCPauZy+TyXDPUb4YTLHdYNVqJsNxwOfnL+E0gLgOpXr2iOauGUAnUBzsdo7PQwLYEEXVW7mQjwveVPNL3C/FZ1W25P1Q2HQqQRzth/G0tu0RaCYpSUZ2BbIi32jHIe+YnVhd4xz5Tmou0A0K0E0ogWMg0m0G0Ag0GYRoNoBAyN5IiRtANRTEOIFYUGczZhsGMhLNc5QWCTK8LidkqpnSror9dfcFa/ZdZoamKuvhaZGjjkp1WLsANUjYSb3U2AA6oXE6fQdBXNt5sB4QstOU9/3XllItXA2mZNtJVX6Khes3Py/IkUqV2JH0jADbaw2Zm2W7ZF6jbXU8Ug+2AOs7J9Wx9FdtZL8AST4CZhdFhra7M5J+0xPr1n+Uy/hcGl7qoAuLZblFxfryjuOjl2s1tL09mubZ85gVXsuRt7pTqco6Ki3Ob2Af7gIHlLSstuDAeAI+A8Zk6seOMvZZZaaCrym+4jfvlR6XlccoKpOQQdxPxiNRLNFJXrjEzK0wxGlazDNyPZAXzAvF7uT0iW7ST6wlRpWZoSC1F3kNefOZAS9J2KGkZ8J6qHhEESJ4RCKueWfZn6SwmDdti27YWyCTalae2jVNFH7R8JYoaNH5vIvlxi5hau8jsLUSqXKsq6jLrXAzJU2tt3TbVaYqJqsxIyOe2469sR6FcKwXM3N87W2Wl2ritQsNXK+7K2R+U48/ndurD4zSOKwJUNmCCMuNxnv274lKgsu3MgdW2x9fOaU6xUZ3B4EHbxGUU6VpBBr6uSkG4uTtGduEjCay0rPrbTJhaTKFTmWFrMbgnjfidsC1N6ZswOqdhGY8YHC4hXUMhBB4fEcZdp4ply2g7jmPDjPSn+OK/6He+YkGl+ktN/wN4qfj6wWJwLpna43EZgytoLnEG0O4gmEAE0g0m0GYBAzySM8gGnAkrz4T4zlbMphhZRKOmMXqLltOyX6XREzunemJc7K9KeHobXfMnZ1n/HraTWnrmw2A59bbf8+HGFqdFfY+LQ+A2ntb3lh9msU8LqrltOQ+fjv6uuEwtAbAMt3YDme82/hMPV6S9j+ghMBu7F9+pHh0deGmLknYMu7f5azCMcLhSpUN0trdVzb+15Uw2we0v9N45xf6w+yvuvHeqWPcY7lQ1lB4knxC/5mRe5M1nKvojv94TLp8ZWPVRn2lRobzDyayLRUQFzAlYWrugn6MqFUNS+W/hD08I52Ie/ISxo3d2R1SmeWdi5hChNGMdpA7B85bTRSjpZ9pvGaz07phfJWkwgFDAgdFZZGEtLYk23fneJjcq1mM0prQE+aiOHh/mWl2yT7IbGkMDh+eCG7ARaHqAjXB3/AOZ5gN/dLbbT3+kuFVXEpdFI2rx/CdU+Q8pDnbG1yNhzDDr2yxj/ANWOxvVpYbpL+dxk0ENfCtSfXouV36pGR6iBlGGA08rWSqAjbL/YPYd0+xvS7viZntJ7PD1nR48qxzxjcrU3iMsJjSN+W8ce0bDMtye/VDtMdUp0RlTZ0pvtGoeI2eG0d1+yVMTotlGsvOXPMWtl17PjJbvzxjXRP2/YX1MomUqU87EWMCyxxpf7PZFJ2wKgNI3k2kIB/9k="
							class="image1" alt="Image">
						<div class="why-text">
							<h4>Harmonic Paying Guest</h4>
							<p>Delhi,India.</p>
							<h5> ₹9000/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="data:image/jpeg;base64,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"
							class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Saturn Paying Guest</h4>
							<p>Kolkata,India</p>
							<h5> ₹8000/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid drinks">
					<div class="gallery-single fix">
						<img src="https://images.unsplash.com/photo-1611892440504-42a792e24d32?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8aG90ZWwlMjByb29tfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
							class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Yuava Paying Guest</h4>
							<p>Bangalore,India</p>
							<h5> ₹9500/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaeJSnNPPqVmKv8x71Ejpiact019hDUYrPm3TcTQN3v-ocX3dLPbAzooTE_cKUG1hBjds&usqp=CAU"
							class="image1" alt="Image">
						<div class="why-text">
							<h4>The GoodStay</h4>
							<p>Pune,India.</p>
							<h5> ₹6500/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="https://thumbs.dreamstime.com/b/luxurious-hotel-room-5554248.jpg" id="images"
							class="image1" alt="Image">
						<div class="why-text">
							<h4>Swans Sharif Homes</h4>
							<p>Delhi,India</p>
							<h5> ₹5000/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid lunch">
					<div class="gallery-single fix">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRs026d0bENQ3UHx8ZRtKaKHDFKSDat-urMXw&usqp=CAU"
							class="image1" alt="Image">
						<div class="why-text">
							<h4>Unite PG'z</h4>
							<p>Kolkata,India</p>
							<h5> ₹5500/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="data:image/jpeg;base64,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"
							class="image1" alt="Image">
						<div class="why-text">
							<h4>Fenny Houses</h4>
							<p>Delhi,India</p>
							<h5> ₹5200/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQApOD8j8OI3xW64FcxN6y7OAp8gXwe9HLFmA&usqp=CAU"
							class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Shakar's PG</h4>
							<p>Bangalore,India</p>
							<h5> ₹4500/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-6 special-grid dinner">
					<div class="gallery-single fix">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNPGShzyeoqJgKD0exXSufm2OWynHL18rgPA&usqp=CAU"
							class="img-fluid" alt="Image">
						<div class="why-text">
							<h4>Gleeful Stay</h4>
							<p>Kolkata,India</p>
							<h5> ₹3900/-</h5>
                                                        <p><b>Rent to be paid: Monthly</b></p>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Menu -->
        <div id="gallery"></div>
        <br>
	<!-- Start Gallery -->
	<div class="gallery-box">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2 style="color: rgb(3, 3, 3);">OUR GALLERY</h2>
						<p
							style="font-family: 'Times New Roman', Times, serif; font-size: larger; color: rgb(92, 66, 66);">
							We genuinely praise and appreciate your interest towards our services and hereby
						<pre
							style="font-family: 'Times New Roman', Times, serif; font-size: larger; color: rgb(92, 66, 66);">we showcase you some of the pictures of the rooms and common areas</pre>
						</p>
					</div>
				</div>
			</div>
			<div class="tz-gallery">
				<div class="row">
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Hotel-suite-living-room.jpg/800px-Hotel-suite-living-room.jpg">
							<img class="img-fluid"
								src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/07/Hotel-suite-living-room.jpg/800px-Hotel-suite-living-room.jpg"
								alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://st.depositphotos.com/1571889/4023/i/450/depositphotos_40237321-stock-photo-beds-in-hotel-room.jpg">
							<img class="img-fluid"
								src="https://st.depositphotos.com/1571889/4023/i/450/depositphotos_40237321-stock-photo-beds-in-hotel-room.jpg"
								alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://img.staticmb.com/mbphoto/pg/grd2/cropped_images/2021/Oct/29/Photo_h400_w540/GR2-246511-1158547_400_540.jpg">
							<img class="img-fluid"
								src="https://img.staticmb.com/mbphoto/pg/grd2/cropped_images/2021/Oct/29/Photo_h400_w540/GR2-246511-1158547_400_540.jpg"
								alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-12 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTLObu3BBeZnpxK-QhmbVaIfcd_xdiHBERHg&usqp=CAU">
							<img class="img-fluid"
								src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTLObu3BBeZnpxK-QhmbVaIfcd_xdiHBERHg&usqp=CAU"
								alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://www.anticcolonial.com/wp-content/uploads/2022/07/hotel-reception-decoration.jpg">
							<img class="img-fluid"
								src="https://www.anticcolonial.com/wp-content/uploads/2022/07/hotel-reception-decoration.jpg"
								alt="Gallery Images">
						</a>
					</div>
					<div class="col-sm-6 col-md-4 col-lg-4">
						<a class="lightbox"
							href="https://media.houseandgarden.co.uk/photos/618946a9eea7137eaf372dee/master/w_320%2Cc_limit/038-2.jpg">
							<img class="img-fluid"
								src="https://media.houseandgarden.co.uk/photos/618946a9eea7137eaf372dee/master/w_320%2Cc_limit/038-2.jpg"
								alt="Gallery Images">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Gallery -->

	<!-- Start Customer Reviews -->
	<div class="customer-reviews-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="heading-title text-center">
						<h2>TESTIMONIAL</h2>
						<p
							style="font-size: large; font-family: 'Times New Roman', Times, serif; color: rgb(92, 66, 66);">
							Our blissful customers who believed and adore us.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-8 mr-auto ml-auto text-center">
					<div id="reviews" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner mt-4">
							<div class="carousel-item text-center active">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/profile-1.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0" ><strong class="text-warning text-uppercase">Karan Arora</strong>
								</h5>
								<h6 class="text-dark m-0" style="font-family: 'Times New Roman', Times, serif; color: black;">STUDENT</h6>
								<p class="m-0 pt-3"  style="color: black; font-family: 'Times New Roman', Times, serif;">. I had the pleasure of staying at the Inmate paying guest for three
									months and it was a fantastic experience. The facilities were top-notch, with clean
									and well-maintained rooms, and the staff were always available to assist me with any
									needs. I highly recommend Inmate to anyone looking for a comfortable and welcoming
									living arrangement.
								</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/profile-3.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Samara Verma</strong>
								</h5>
								<h6 class="text-dark m-0" style="font-family: 'Times New Roman', Times, serif; color: black;">EMPLOYEE</h6>
								<p class="m-0 pt-3" style="color: black; font-family: 'Times New Roman', Times, serif;">As someone who was new to the city and unsure about where to live,
									Inmate was a great choice for me.The website made it easy to find and book a room,
									and once I arrived, I was impressed by the level of cleanliness and organization in
									the house.The other inmates were friendly and respectful,and I felt safe and
									secure throughout.
								</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/profile-7.jpg" alt="">
								</div>
								<h5 class="mt-4 mb-0"><strong class="text-warning text-uppercase">Vanisha Singh</strong>
								</h5>
								<h6 class="text-dark m-0" style="font-family: 'Times New Roman', Times, serif; color: black;">STUDENT</h6>
								<p class="m-0 pt-3" style="color: black; font-family: 'Times New Roman', Times, serif;">. I was apprehensive about living in a paying guest, but Inmate
									exceeded all my expectations. The staff were friendly and professional, and the
									website was easy to use and provided all the information I needed. The house itself
									was modern and well-equipped, and I was able to focus on my studies without any
									distractions.
								</p>
							</div>
							<div class="carousel-item text-center">
								<div class="img-box p-1 border rounded-circle m-auto">
									<img class="d-block w-100 rounded-circle" src="images/profile-8.jpeg" alt="">
								</div>
								<h5 class="mt-4 mb-0" style="color: black;"><strong class="text-warning text-uppercase">John Von</strong>
								</h5>
								<h6 class="text-dark m-0" style="font-family: 'Times New Roman', Times, serif; color: black;">EMPLOYEE</h6>
								<p class="m-0 pt-3"  style="color: black; font-family: 'Times New Roman', Times, serif;">. I stayed at Inmate's PG for several months and was impressed by
									the level of attention paid to the inmates' needs. The website provided clear and
									accurate information about the house and its facilities, and the staff were always
									available to assist with any issues or concerns. I felt welcomed and supported
									throughout my stay, and would highly recommend Inmate to anyone looking for a
									high-quality paying guest experience</p>
							</div>
						</div>
						<a class="carousel-control-prev" href="#reviews" role="button" data-slide="prev">
							<i class="fa fa-angle-left" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#reviews" role="button" data-slide="next">
							<i class="fa fa-angle-right" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Customer Reviews -->

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
					<p>inmateservices19@gmail.com</p>
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
        
            <div class="floating-container" id="openBot">
              <div class="floating-button"><img src="assets/chatbot.png" style="margin-top: 14px;width: 34px"/>
              </div>
              <div class="element-container"></div>
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
            );
          }
          document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
            e.preventDefault();

          document.querySelector(this.getAttribute('href')).scrollIntoView({
            behavior: 'smooth'
        });
    });
});
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
	<script src="js/form-validator.min.js"></script>
	<script src="js/contact-form-script.js"></script>
	<script src="js/custom.js"></script>
        <script>
            document.getElementById('openBot').addEventListener('click', function (){
                window.open("ChatBot.jsp","_self");
            });
            document.getElementById("openProf").addEventListener('click', function () {
               window.open("UserProfile.jsp","_self"); 
            });
            document.getElementById("logout").addEventListener('click', function () {
                     Swal.fire({
                        title: 'Do you want to logout ?',
                        icon: 'question',
                        showDenyButton: true,
                        showCancelButton: true,
                        confirmButtonText: 'Stay',
                        denyButtonText: `Logout`,
                      }).then((result) => {
                if (result.isConfirmed) {
                        Swal.DismissReason;
                    } else if (result.isDenied) {
                        window.open("http://localhost:8080/InMate/SignOut.jsp","_self");
                    }
               })
            });
        </script>
</body>
</html>