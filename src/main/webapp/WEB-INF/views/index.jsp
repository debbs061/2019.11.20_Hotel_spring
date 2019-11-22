<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="description" content="Eden Travel Template">
  
  <meta name="author" content="Themefisher.com">

  <title>ITWill | Hotel</title>

<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

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
					<b>IT WILL HOTEL</b> 
				</div>
			</div>
			<div class="col-lg-4">
				<div class="top-header-right float-right">
					<ul class="list-unstyled mb-0">
						<li class="top-contact">
						
						<c:choose>
						<c:when test="${empty sessionScope.login.userId }">
							<span class="text-color">
							<a href="login.action">로그인</a> / 
							<a href="signup.action">회원가입</a>
							</span>
						</c:when>
					
						<c:otherwise>
							<span class="text-color">${sessionScope.login.userName }님 안녕하세요:)
							</span>
							<a href="logout.action">&nbsp;&nbsp;로그아웃</a>
						</c:otherwise>
						
						</c:choose>
						
						
						
							
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

	<nav class="navbar navbar-expand-lg bg-white w-100 p-0" id="navbar">
		<div class="container">
		  <a class="navbar-brand" href="/"><img src="/hotel/resources/images/logo.png" alt="Eden" class="img-fluid"></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
			<span class="fa fa-bars"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarsExample09">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="/hotel">Home <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">About Us </a>
				<ul class="dropdown-menu" aria-labelledby="dropdown02">
				  <li><a class="dropdown-item" href="about.action">About Us</a></li>
				  <li><a class="dropdown-item" href="service.action">Services</a></li>
				  <li><a class="dropdown-item" href="gallery.action">Gallery</a></li>
				</ul>
			  </li>
			  
			  <!-- 
			  <li class="nav-item active">
				<a class="nav-link" href="about">About Us <span class="sr-only">(current)</span></a>
			  </li>
			   -->
			  
			  <!-- 
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
			   -->
		
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Rooms</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown02">
				  <li><a class="dropdown-item" href="pricing.action">Pricing</a></li>
				  <li><a class="dropdown-item" href="room-list.action">Room-List</a></li>
				  <li><a class="dropdown-item" href="room-grid.action">Room-Grid</a></li>
				</ul>
			  </li>

			  <!-- 
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Reservation</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown03">
				  <li><a class="dropdown-item" href="booking-step1">Select Room</a></li>
				  <li><a class="dropdown-item" href="booking-step2">Make Resrvation</a></li>
				  <li><a class="dropdown-item" href="booking-step3">Payment</a></li>
				  <li> <a class="dropdown-item" href="confirmation">Confirmation</a></li>
				</ul>
			  </li>
			   -->
			  
			  <li class="nav-item active">
				<a class="nav-link" href="booking-step1.action">Reservation <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item active">
				<a class="nav-link" href="event-grid.action">Events <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item active">
				<a class="nav-link" href="contact.action">Contact Us <span class="sr-only">(current)</span></a>
			  </li>
			  
			</ul>
			<form class="form-inline my-2 my-md-0 ml-lg-4">
			  <a href="booking-step1.action" class="btn btn-main">Book Online</a>
			</form>
		  </div>
		</div>
	</nav>
</header>

<!-- Header Close --> 

<div class="main-wrapper ">
<div id="kakao-talk-channel-chat-button" style="position:fixed;right:10px;bottom:0px;z-index:1000;"></div>
<!-- slider -->
<section>
  <div class="hero-slider">
    
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/slider/banner.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">
            <span class="letter-spacing text-white">IT Will Hotel</span>
            <h1 class="mb-3 text-capitalize">최고의 품격</h1>
            <p class="mb-5">IT Will Hotel은 고객님의 품격을 높여드립니다.</p>
            <a href="room-grid.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
          </div>
        </div>
      </div>
    </div>
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/slider/slider-img2.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">
            <span class="letter-spacing text-white">IT Will Hotel</span>
            <h1 class="mb-3 text-capitalize">낭만적인 여행</h1>
            <p class="mb-5">IT Will 호텔에서 잊지 못 할 추억을 만드세요.</p>
            <a href="about.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
          </div>
        </div>
      </div>
    </div>
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/slider/banner2.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">
             <span class="letter-spacing text-white">IT Will Hotel</span>
            <h1 class="mb-3 text-capitalize">최고의 서비스</h1>
            <p class="mb-5">최고의 음식과 서비스를 제공해드립니다.</p>
            <a href="about.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
          </div>
        </div>
      </div>
    </div>
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/slider/banner3.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInRight" data-delay-in=".1">
             <span class="letter-spacing text-white">IT Will Hotel</span>
            <h1 class="mb-3 text-capitalize">다양한 이벤트</h1>
            <p class="mb-5">IT Will Hotel은 다양한 이벤트를 제공해드립니다. </p>
            <a href="about.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /slider -->
<section class="section-reservation" >
	<div class="container">
		<div class="secondary-bg p-5 position-relative">
			<form action="#" class="reserve-form">
				<div class="form-row">
				    <div class="form-group col-md-2 col-sm-4">
				    	<div class="input-group tp-datepicker date" data-provide="datepicker">
						    <input type="text" class="form-control" placeholder="체크인">
						    <div class="input-group-addon">
						       <span class="ion-android-calendar"></span>
						    </div>
						</div>
		          	</div>
		          	
		          	<div class="form-group col-md-2 col-sm-4">
				    	<div class="input-group tp-datepicker date" data-provide="datepicker">
						    <input type="text" class="form-control" placeholder="체크아웃">
						    <div class="input-group-addon">
						       <span class="ion-android-calendar"></span>
						    </div>
						</div>
		          	</div>

				    <div class="form-group col-md-2 ">
			    		<select id="person" class="form-control custom-select">
					        <option selected>성인</option>
						        <option value="1">1명</option>
				                <option value="2">2명</option>
				                <option value="3">3명</option>
				                <option value="4">4명</option>
				                <option value="5">5명</option>
					      </select>
				    </div>

				    <div class="form-group col-md-2 ">
			    		<select id="children" class="form-control custom-select">
					        <option selected>어린이</option>
						        <option value="1">1명</option>
				                <option value="2">2명</option>
				                <option value="3">3명</option>
				                <option value="4">4명</option>
				                <option value="5">5명</option>
					      </select>
				    </div>
				    
				     
					<div class="form-group col-md-2">
				 		<select id="room" class="form-control custom-select">
					        <option selected>객실</option>
						        <option value="standard">스탠다드룸</option>
				                <option value="superior">슈페리어룸</option>
				                <option value="deluxe">디럭스룸</option>
				                <option value="executive">이그제큐티브룸</option>
				                <option value="suite">스위트룸</option>
				                <option value="family">패밀리룸</option>
					      </select>
				    </div>

				    <div class="form-group col-md-2">
				      <a href="booking-step1.action" class="btn btn-main btn-block">검색</a>
				    </div>
				 </div>
			</form>
		</div>
	</div>
</section>	

<!-- Wrapper Start -->
<section class="about section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<p class="section-subtitle">Welcome To</p>
					<h2 class="mb-3">IT WILL HOTEL</h2>
					<p class="mb-4">한국의 전통미와 현대적인 감각을 겸비하고 있는 세계속의 명문호텔, 아이티윌 호텔은 세계 최고의 어번(urban) 라이프 스타일 호텔로 고객들에게 최고급 서비스를 제공합니다.</p>
					<span class="section-border"></span>
				</div>
			</div><!-- .col-md-7 close -->
		</div>

		<div class="row">
			<div class="col-lg-8 col-md-6">
				<div class="about-block">
					<img src="/hotel/resources/images/rooms/img1.jpg" alt="" class="img-fluid shadow-sm">
					<div class="about-img">
						<img src="/hotel/resources/images/rooms/img.jpg" alt="" class="img-fluid">
					</div>
				</div>
			</div>

			<div class="col-lg-4 col-md-6">
				<div class="about-features">
					<h2>최고의 & <br>전문적인 서비스</h2>
					<hr>
					
					<ul class="list-unstyled">
						<li><i class="flaticon-menu"></i>전문가의 서비스</li>
						<li><i class="flaticon-dishwasher"></i>최상의 서비스</li>
						<li><i class="flaticon-credit-card"></i>쉬운 예약 & 결제</li>
						<li><i class="flaticon-restaurant"></i>현대적인 시설</li>
						<li><i class="flaticon-chef"></i>세계 최고의 요리사</li>
						<li><i class="flaticon-location-pin"></i>흥미로운 활동</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="section secondary-bg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<p class="section-subtitle">Luxurious</p>
					<h2 class="mb-3">특색있는 객실들</h2>
					<p class="mb-4">한국을 대표하는 럭셔리 호텔로서 '일상이 최고의 순간이 되는 곳' 이라는 컨셉을
									새롭게 선보이며 휴식은 물론 고급 식문화, 엔터테이먼트 등 고객의 고품격 라이프스타일을 
									제안하는 공간으로 거듭나고 있습니다</p>
					<span class="section-border"></span>
				</div>
			</div><!-- .col-md-8 close -->
		</div>

		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<a href="room-details.action"><img src="/hotel/resources/images/rooms/img.jpg" alt="" class="img-fluid card-img-top rounded-0"></a>

					<div class="card-body px-4 py-5">
						<a href="room-details.action" class="text-dark"><h3>스탠다드 룸</h3></a>
						<h2>15만원 <small>/박</small></h2>
						<p class="py-3">스탠다드는 가장 일반적이고 저렴하게 이용가능한 객실입니다.</p>
						<a href="room-details.action" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.action" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<a href="room-details.action"><img src="/hotel/resources/images/rooms/img1.jpg" alt="" class="img-fluid card-img-top rounded-0"></a>

					<div class="card-body px-4 py-5">
						<a href="room-details.action" class="text-dark"><h3>슈페리어룸</h3></a>
						<h2>20만원 <small>/박</small></h2>
						<p class="py-3">생각보다 넓은 조금 더 넓은 공간과 어메니티를 제공합니다.</p>
						<a href="room-details.action" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.action" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>


			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<a href="room-details.action"><img src="/hotel/resources/images/rooms/img2.jpg" alt="" class="img-fluid card-img-top rounded-0"></a>

					<div class="card-body px-4 py-5">
						<a href="room-details.action" class="text-dark"><h3>디럭스룸</h3></a>
						<h2>25만원 <small>/박</small></h2>
						<p class="py-3">디럭스 룸에는 발코니가 있어 야경을 즐길 수 있습니다.</p>
						<a href="room-details.action" class="btn btn-solid-border btn-small">상세정보</a>
						<a href="booking-step1.action" class="btn btn-main btn-small">예약하기</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>	

			</div> <!-- end row -->
		</div> <!-- end container -->
	</section> <!-- end section -->
<section class="gallery-feed">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="gallery-title">
				<a href="gallery.action" class="btn btn-main">Gallery</a>
			</div>
		</div>
		<div class="row no-gutters ">
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					 <a href="/hotel/resources/images/gallery/1-1.jpg" title="Photo 1">
						<img src="/hotel/resources/images/gallery/1.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					 <a href="/hotel/resources/images/gallery/1-2.jpg" title="Photo 2">
						<img src="/hotel/resources/images/gallery/2.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					<a href="/hotel/resources/images/gallery/1-3.jpg" title="Photo 3">
						<img src="/hotel/resources/images/gallery/3.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					<a href="/hotel/resources/images/gallery/1-4.jpg" title="Photo 2">
						<img src="/hotel/resources/images/gallery/4.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					<a href="/hotel/resources/images/gallery/1-5.jpg" title="Photo 2">
						<img src="/hotel/resources/images/gallery/5.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
			<div class="col-lg-2 col-md-4 col-sm-4">
				<div class="gallery-item">
					<a href="/hotel/resources/images/gallery/1-6.jpg" title="Photo 2">
						<img src="/hotel/resources/images/gallery/6.jpg" alt="" class="img-fluid w-100">
					</a>
				</div>
			</div>
		</div>
	</div>
</section>



<!-- footer Start -->
<footer class="footer pb-md-5 pb-sm-5 secondary-bg pb-0">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget footer-widget">
					<div class="footer-logo footer-title mb-4"><h3>IT Will</h3></div>
					<p>한국의 전통미와 현대적인 감각을 겸비하고 있는 세계속의 명문호텔, <br/>아이티윌 호텔은 세계 최고의 어번(urban) 라이프 스타일 호텔로 고객들에게 최고급 서비스를 제공합니다.</p>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 mb-md-4 mb-sm-4">
				<div class="widget footer-widget">
					<h3 class="mb-4">주소</h3>
					<ul class="list-inline footer-address">
						<li class="list-inline-item">
							<i class="ion-android-call"></i>
							 (+233) 123 456789
						</li>
						<li class="list-inline-item">
							<i class="ion-laptop"></i>
							  contact@itwillHotel.com
						</li>
						<li class="list-inline-item">
							<i class="ion-ios-location"></i>
							 서울특별시 테헤란로 15
						</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6 mb-md-4 mb-sm-4">
				<div class="widget footer-widget">
					<h3 class="mb-4">빠른링크</h3>
					<ul class="list-unstyled footer-menu mb-0">
						<li>
							<a href="/"><i class="fa fa-angle-right"></i>Home</a>
						</li>

						<li>
							<a href="service.action"><i class="fa fa-angle-right"></i>Services</a>
						</li>

						<li>
							<a href="gallery.action"><i class="fa fa-angle-right"></i>Gallery</a>
						</li>
	
						<li>
							<a href="#"><i class="fa fa-angle-right"></i>Reservation</a>
						</li>
						
						<li>
							<a href="contact.action"><i class="fa fa-angle-right"></i>Contact</a>
						</li>
					</ul>
				</div>
			</div>
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget footer-widget">

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
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&amp;callback=initMap"></script>    

    <script src="/hotel/resources/js/script.js"></script>


	<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('a876d408c7cc2ab22428d910b1de57af');
    // 카카오톡 채널 1:1채팅 버튼을 생성합니다.
    Kakao.Channel.createChatButton({
      container: '#kakao-talk-channel-chat-button',
      channelPublicId: '_rRxdxgT' // 카카오톡 채널 홈 URL에 명시된 id로 설정합니다.
    });
  //]]>
</script>
  </body>
  </html>
   