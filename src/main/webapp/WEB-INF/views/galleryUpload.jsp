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

<title>IT WILL | Hotel</title>

<!-- Mobile Specific Meta-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- bootstrap.min css -->
<link rel="stylesheet"	href="/hotel/resources/plugins/bootstrap/css/bootstrap.min.css">
<!-- Ionic Icon Css -->
<link rel="stylesheet"	href="/hotel/resources/plugins/Ionicons/css/ionicons.min.css">
<!-- Flaticon Css -->
<link rel="stylesheet"	href="/hotel/resources/plugins/flaticon/font/flaticon.css">
<!-- animate.css -->
<link rel="stylesheet"	href="/hotel/resources/plugins/animate-css/animate.css">
<link rel="stylesheet"	href="/hotel/resources/plugins/nice-select/nice-select.css">
<!-- DATE PICKER -->
<link href="/hotel/resources/plugins/bootstrap-datepicker-master/bootstrap-datepicker.min.css" type="text/css" rel="stylesheet" />
<!-- Magnify Popup -->
<link rel="stylesheet"	href="/hotel/resources/plugins/magnific-popup/dist/magnific-popup.css">
<!-- Owl Carousel CSS -->
<link rel="stylesheet"	href="/hotel/resources/plugins/slick-carousel/slick/slick.css">
<link rel="stylesheet"href="/hotel/resources/plugins/slick-carousel/slick/slick-theme.css">

<link rel="stylesheet"	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">

<!-- Main Stylesheet -->
<link rel="stylesheet" href="/hotel/resources/css/style.css">

<!-- font -->
  <link href="https://fonts.googleapis.com/css?family=Gothic+A1:100|Noto+Serif+KR:200&display=swap&subset=korean" rel="stylesheet">
  
	<style type="text/css">
	
	*:not(i){
		font-family: 'Noto Serif KR', serif!important;
	}
	
	</style>


<script type="text/javascript">

function sendIt(){
	
	var f = document.myForm;
	
	str = f.galleryName.value;
	str = str.trim();
	
	if(!str){
		alert("게시물 이름을 입력하세요");
		f.galleryName.focus();
		return;
	}
	
	f.galleryName.value = str;
	
	
	str = f.content.value;
	str = str.trim();
	
	if(!str){
		alert("설명을 입력하세요");
		f.content.focus();
		return;
	}
	
	f.content.value = str;
	
	f.action = "<%=cp %>/galleryUpload_ok.action";
	f.submit();
}

</script>


</head>
<body>

	<!-- Header Start -->
	
<header class="navigation">
<div class="top-header py-2">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-lg-8">
				<div class="top-header-left text-muted">
					<b>IT WILL HOTEL</b>
					<span id="icon"></span>
					<span id="todayTemp"></span>
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
										<a href="logout.action">&nbsp;&nbsp;로그아웃</a> / 
										<a href="myPage.action">마이페이지</a>
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
		  <a class="navbar-brand" href="/hotel"><img src="/hotel/resources/images/logo.png" alt="Eden" class="img-fluid"></a>
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
			  
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Rooms</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown02">
				  <li><a class="dropdown-item" href="pricing.action">Pricing</a></li>
				  <li><a class="dropdown-item" href="room-grid.action">Room-Grid</a></li>
				</ul>
			  </li>

			  <li class="nav-item active">
				<a class="nav-link" href="booking-step1.action">Reservation <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item active">
				<a class="nav-link" href="event-grid.action">Events <span class="sr-only">(current)</span></a>
			  </li>
			  
			  <li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Life</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown03">
				  <li><a class="dropdown-item" href="gym">Gym</a></li>
				  <li><a class="dropdown-item" href="restaurantMain.action">Restaurant</a></li>
				  <li><a class="dropdown-item" href="#">Shopping</a></li>
				  <li><a class="dropdown-item" href="life-spa.action">Spa</a></li>
				</ul>
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
	
	<section class="section">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
					<p class="section-subtitle">IT WILL HOTEL</p>
					<h2 class="mb-3">갤러리 업로드</h2>
					<span class="section-border"></span>
				</div>
			</div>
			<!-- .col-md-7 close -->
		</div>

		<div class="row justify-content-center">
			<div class="col-lg-7 col-sm-12">
				
				<!-- 파일 업로드 -->
				<form action="javascript:sendIt();" name="myForm" method="post" enctype="multipart/form-data">
				
					<div class="row justify-content-center">

						<div class="col-lg-10">
							<div class="form-group">
							<p class="section-subtitle">게시물 이름 </p>
								<input name="galleryName" type="text" class="form-control">
							</div>
						</div>
						<div class="col-lg-10">
							<div class="form-group">
							<p class="section-subtitle">설   명</p>
								<input name="content" type="text" class="form-control">
							</div>
						</div>
						
							<input type="file" name="upload"/><br/>
							<input class="btn btn-main" type="submit" value="전송" onclick="sendIt();"/><br/>

					</div>

				</form>
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
							<a href="/hotel"><i class="fa fa-angle-right"></i>Home</a>
						</li>

						<li>
							<a href="service.action"><i class="fa fa-angle-right"></i>Services</a>
						</li>

						<li>
							<a href="gallery.action"><i class="fa fa-angle-right"></i>Gallery</a>
						</li>
	
						<li>
							<a href="booking-step1.action"><i class="fa fa-angle-right"></i>Reservation</a>
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


	<section class="footer-btm secondary-bg py-4">
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
	<script	src="http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
	<script	src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
	<script	src="/hotel/resources/plugins/bootstrap-datepicker-master/bootstrap-datepicker.min.js"></script>

	<!-- Google Map -->
	<script src="/hotel/resources/plugins/google-map/map.js"></script>
	<script	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>
	<script src="/hotel/resources/js/script.js"></script>

	<script src="/hotel/resources/js/weather.js"></script>

</body>
</html>
