<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Eden Travel Template">
  
  <meta name="author" content="Themefisher.com">

  <title>Eden | Hotel template</title>

  <!-- Mobile Specific Meta-->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- bootstrap.min css -->
  <link rel="stylesheet" href="/hotel/resources/plugins/bootstrap/css/bootstrap.min.css">
  <!-- Ionic Icon Css -->
  <link rel="stylesheet" href="/hotel/resources/plugins/Ionicons/css/ionicons.min.css">
  <!-- Flaticon Css -->
  <link rel="stylesheet" href="/hotel/resources/plugins/flaticon/font/flaticon.css">
  <!-- animate.css -->
  <link rel="stylesheet" href="/hotel/resources/plugins/animate-css/animate.css">
  <link rel="stylesheet" href="/hotel/resources/plugins/nice-select/nice-select.css">
  <!-- DATE PICKER -->
  <link href="/hotel/resources/plugins/bootstrap-datepicker-master/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet" />
  <!-- Magnify Popup -->
  <link rel="stylesheet" href="/hotel/resources/plugins/magnific-popup/dist/magnific-popup.css">
  <!-- Owl Carousel CSS -->
  <link rel="stylesheet" href="/hotel/resources/plugins/slick-carousel/slick/slick.css">
  <link rel="stylesheet" href="/hotel/resources/plugins/slick-carousel/slick/slick-theme.css">

  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
  
  <!-- Main Stylesheet -->
  <link rel="stylesheet" href="/hotel/resources/css/style.css">

</head>

<body >

<!-- Header Start --> 

<header class="navigation">
<div class="top-header py-2">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="top-header-left text-muted">
					서울시 강남구 테헤란로 여삼빌딩 15층
				</div>
			</div>
			<div class="col-lg-4">
				<div class="top-header-right float-right">
					<ul class="list-unstyled mb-0">
						<li class="top-contact">
							<a href="tel:1881234567 "> <i class="ion-android-call mr-2"></i><span class="text-color">+23-28-12345</span>
							</a>
						</li>

						<li class="language ml-3">
						    <select class="country" name="country">
						      <option>EN</option>
						      <option>FR</option>
						      <option>JA</option>
						      <option>CA</option>
						      <option>FR</option>
						    </select>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

	<nav class="navbar navbar-expand-lg bg-white w-100 p-0" id="navbar">
		<div class="container">
		  <a class="navbar-brand" href="index.html"><img src="/hotel/resources/images/logo.png" alt="Eden" class="img-fluid"></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
			<span class="fa fa-bars"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarsExample09">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown2">
					<li><a class="dropdown-item" href="about.html">About Us</a></li>
					<li><a class="dropdown-item" href="service.html">Services</a></li>
					<li><a class="dropdown-item" href="search.html">Advance Search</a></li>
					<li><a class="dropdown-item" href="pricing.html">Pricing</a></li>
					<li><a class="dropdown-item" href="404.html">404 Not found</a></li>
					<li><a class="dropdown-item" href="contact.html">Contact Us</a></li>

					<li class="dropdown dropdown-submenu dropright">
						<a class="nav-link dropdown-toggle" href="#" id="dropdown3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Gallery</a>
						<ul class="dropdown-menu" aria-labelledby="dropdown3">
							<li><a class="dropdown-item" href="gallery-3.html">Gallery 3 Col</a></li>
							<li><a class="dropdown-item" href="gallery-4.html">Gallery 4 Col</a></li>
						</ul>
					</li>
			  	</ul>
			  </li>
		
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Rooms</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown02">
				  <li><a class="dropdown-item" href="room-list.html">Room List</a></li>
				  <li><a class="dropdown-item" href="room-grid.html">Room-grid</a></li>
				 <li> <a class="dropdown-item" href="room-details.html">Room Details</a></li>
				</ul>
			  </li>

			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Reservation</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown03">
				  <li><a class="dropdown-item" href="booking-step1.html">Select Room</a></li>
				  <li><a class="dropdown-item" href="booking-step2.html">Make Resrvation</a></li>
				  <li><a class="dropdown-item" href="booking-step3.html">Payment</a></li>
				  <li> <a class="dropdown-item" href="confirmation.html">Confirmation</a></li>
				</ul>
			  </li>
			  
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Events</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown04">
				  <li><a class="dropdown-item" href="event-fullwidth.html">Event Fullwidth</a></li>	
				  <li><a class="dropdown-item" href="event-grid.html">Event Grid</a></li>
				  <li><a class="dropdown-item" href="event-single.html">Event Details</a></li>
				</ul>
			  </li>
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown05" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Blog</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown05">
				  <li><a class="dropdown-item" href="blog-full-width.html">Blog Full width</a></li>
				  <li><a class="dropdown-item" href="blog-grid.html">Blog Grid</a></li>
				  <li><a class="dropdown-item" href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
				  <li><a class="dropdown-item" href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
				  <li><a class="dropdown-item" href="blog-single-right.html">Blog Details Right Sidebar</a></li>
				  <li><a class="dropdown-item" href="blog-single.html">Blog Details Left Sidebar</a></li>
				</ul>
			  </li>
			</ul>
			<form class="form-inline my-2 my-md-0 ml-lg-4">
			  <a href="booking-step1.html" class="btn btn-main">Book Online</a>
			</form>
		  </div>
		</div>
	</nav>
</header>

<!-- Header Close --> 

<div class="main-wrapper ">
<section class="overly bg-2">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
          <h1 class="text-white py-100">객실정보</h1>
      </div>
    </div>
  </div>

  <div class="container-fluid page-border-top">
    <div class="row ">
      <div class="col-lg-12 text-center">
          <div class="page-breadcumb py-2">
            <a href="#" class="text-white">Home</a>
            <span><i class="fa fa-angle-right text-white mx-1" aria-hidden="true"></i></span>
            <a href="#" class="text-white">Rooms</a>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- Wrapper Start -->
<section class="room section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<p class="section-subtitle">Our Rooms</p>
					<h2 class="mb-3">원하시는 객실을 선택해 주세요.</h2>
					<p class="mb-4">한국의 전통미와 현대적인 감각을 겸비하고 있는 세계속의 명문호텔, 아이티윌 호텔은 세계 최고의 어번(urban) 라이프 스타일 호텔로 고객들에게 최고급 서비스를 제공합니다.</p>
					<span class="section-border"></span>
				</div>
			</div><!-- .col-md-7 close -->
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-6 mb-4 ">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>스탠다드룸</h3>
						<h2>15만원 <small>/박</small></h2>
						<p class="my-4">스탠다드는 가장 일반적이고 저렴하게 이용가능한 객실입니다.</p>
						<a href="details.action" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="step1.action" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img1.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>슈페리어룸</h3>
						<h2>20만원 <small>/박</small></h2>
						<p class="my-4">생각보다 넓은 조금 더 넓은 공간과 어메니티를 제공합니다.</p>
						<a href="room-details.html" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.html" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6 mb-4">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img2.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>디럭스룸</h3>
						<h2>25만원 <small>/박</small></h2>
						<p class="my-4">디럭스 룸에는 발코니가 있어 야경을 즐길 수 있습니다.</p>
						<a href="room-details.html" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.html" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
			<!-- 3 col end -->

			<div class="col-lg-4 col-md-6 mb-0 mb-lg-0">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img3.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>이그제큐티브룸</h3>
						<h2>50만원 <small>/박</small></h2>
						<p class="my-4">시원한 전망과 색다론 조식 서비를 제공해드립니다. </p>
						<a href="room-details" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img4.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>스위트룸</h3>
						<h2>100만원 <small>/박</small></h2>
						<p class="my-4">아이티윌 호텔만의 최고급 시설과 서비스를 경험하실 수 있습니다.</p>
						<a href="room-details.html" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.html" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
		<div class="col-lg-4 col-md-6">
				<div class="card rounded-0 text-center room-grid">
					<img src="/hotel/resources/images/rooms/img5.jpg" alt="" class="img-fluid w-100">
					<div class="card-body py-5">
						<h3>패밀리룸</h3>
						<h2>120만원 <small>/박</small></h2>
						<p class="my-4">주방실과 넉넉한 쇼파가 있어 단체 가족여행에 적합합니다.</p>
						<a href="room-details.html" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.html" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>  
		</div>

<!-- 페이징 주석처리함  	
		<div class="row">
			<div class="col-lg-12">
				<div class="text-center">
					<ul class="pagination post-pagination">
						<li><a href="#">Prev</a>
						</li>
						<li class="active"><a href="#">1</a>
						</li>
						<li><a href="#">2</a>
						</li>
						<li><a href="#">3</a>
						</li>
						<li><a href="#">4</a>
						</li>
						<li><a href="#">5</a>
						</li>
						<li><a href="#">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
-->		
	</div>
</section>		



<!-- footer Start -->
<footer class="footer pb-md-5 pb-sm-5 secondary-bg pb-0">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget footer-widget">
					<div class="footer-logo footer-title mb-4"><h2>Eden</h2></div>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet pariatur delectus excepturi debitis ad architecto non, sequi minus quo similique.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 mb-md-4 mb-sm-4">
				<div class="widget footer-widget">
					<h3 class="mb-4">Address</h3>
					<ul class="list-inline footer-address">
						<li class="list-inline-item">
							<i class="ion-android-call"></i>
							 (+233) 123 456789
						</li>
						<li class="list-inline-item">
							<i class="ion-laptop"></i>
							  contact@sparta.com
						</li>
						<li class="list-inline-item">
							<i class="ion-ios-location"></i>
							 St Amsterdam finland,United Stats of AKY16 8PN
						</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 mb-md-4 mb-sm-4">
				<div class="widget footer-widget">
					<h3 class="mb-4">Quick Links</h3>
					<ul class="list-unstyled footer-menu mb-0">
						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Home</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Services</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Testimonial</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Blog</a>
						</li>

						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Contact</a>
						</li>

					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget footer-widget">
					<h3 class="mb-4">Company</h3>

					<ul class="list-unstyled footer-menu mb-0">
						<li><a href="#">Term & Conditions </a></li>

						<li><a href="#">Privacy Policy</a></li>

						<li><a href="#">Site Map </a></li>
					</ul>
					

					<h4 class="my-4">Follow US</h4>

					<ul class="list-inline footer-socials">
						<li class="list-inline-item">
							<a href="#"><i class="ion-social-facebook"></i></a>
						</li>
						<li class="list-inline-item">
							<a href="#"><i class="ion-social-twitter"></i></a>
						</li>
						<li class="list-inline-item">
							<a href="#"><i class="ion-social-pinterest"></i></a>
						</li>
						<li class="list-inline-item">
							<a href="#"><i class="ion-social-linkedin"></i></a>
						</li>
						<li class="list-inline-item">
							<a href="#"><i class="ion-social-rss"></i></a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>


<section class="footer-btm secondary-bg py-4" >
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="text-center">
					&copy; Copyright TravelPro Reserved to <a href="#">Themefisher</a>-2019
				</div>
			</div>
		</div>
	</div>
</section>

   
    </div>

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script src="/hotel/resources/plugins/jquery/jquery.js"></script>
    <!-- Bootstrap 3.1 -->
    <script src="/hotel/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- Owl Carousel -->
    <script src="/hotel/resources/plugins/slick-carousel/slick/slick.min.js"></script>
    <script src="/hotel/resources/plugins/nice-select/nice-select.js"></script>
    <!--  -->
    <script src="/hotel/resources/plugins/magnific-popup/dist/jquery.magnific-popup.min.js"></script>
    <!-- Form Validator -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
    <script src="/hotel/resources/plugins/bootstrap-datepicker-master/bootstrap-datepicker.min.js"></script>
    
    <!-- Google Map -->
    <script src="/hotel/resources/plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    

    <script src="/hotel/resources/js/script.js"></script>

  </body>
  </html>