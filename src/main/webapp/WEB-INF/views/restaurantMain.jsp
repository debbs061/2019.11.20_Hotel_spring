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

  <title>ITWill | Restaurant</title>

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
  
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  
  <style type="text/css">
  
   .img-fluid2{
 
 max-width:100%;
 height:100%;
 
 }
  
  </style>
 
  
  

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
		  <a class="navbar-brand" href=""><img src="/hotel/resources/images/logo.png" alt="Eden" class="img-fluid"></a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
			<span class="fa fa-bars"></span>
		  </button>
	  
		  <div class="collapse navbar-collapse" id="navbarsExample09">
			<ul class="navbar-nav ml-auto">
			  <li class="nav-item active">
				<a class="nav-link" href="restaurantMain.action">Home <span class="sr-only">(current)</span></a>
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
				<a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">다이닝</a>
				<ul class="dropdown-menu" aria-labelledby="dropdown02">
				  <li><a class="dropdown-item" href="myeong-details.action">명월관</a></li>
				  <li><a class="dropdown-item" href="델비노 자세히">DEL VINO</a></li>
				  <li><a class="dropdown-item" href="회림 자세히">회림</a></li>
				</ul>
			  </li>
			  <li class="nav-item active">
				<a class="nav-link" href="/hotel/">Hotel<span class="sr-only">(current)</span></a>
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
	<div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/restaurant/main3.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInRight" data-delay-in=".1">
             <span class="letter-spacing text-white">We give high</span>
            <h1 class="mb-3 text-capitalize">늘 최고의 요리</h1>
            <p class="mb-5">여유있는 브런치를 즐기거나 특별한 모임을 갖거나 인테리어와 유리창 박으로 시원하게 펼쳐지는 테헤란로의 풍경은 맛있는 식사에 분위기까지 더해줍니다.</p>
          </div>
        </div>
      </div>
    </div>   
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/restaurant/main4.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">
            <span class="letter-spacing text-white">We are here to</span>
            <h1 class="mb-3 text-capitalize">참 미식으로의 초대</h1>
            <p class="mb-5">정통을 뛰어넘는 하이엔드 스타일의 다이닝, 라운지에서 맛보는 스위트 트리트, 눈을 행복하게 하는 감각적인 패스트리까지</p>
          </div>
        </div>
      </div>
    </div>
    <!-- slider item -->
    <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/restaurant/main2.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInLeft" data-delay-in=".1">
             <span class="letter-spacing text-white">We provide</span>
            <h1 class="mb-3 text-capitalize">도심 속 오아시스</h1>
            <p class="mb-5">트렌디한 음악과 세계 각국의 다채로운 음식이 준비되어 있으며, 풋스파를 이용하고나 정자에 앉아 자연을 느끼며 휴식을 취하세요.				
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- slider item -->
     <div class="hero-slider-item bg-cover hero-section" style="background: url(/hotel/resources/images/restaurant/main1.jpg); ">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-lg-8 text-center" data-duration-in=".3" data-animation-in="fadeInDown" data-delay-in=".1">
            <span class="letter-spacing text-white">We are here to</span>
            <h1 class="mb-3 text-capitalize">프리미엄 라운지</h1>
            <p class="mb-5">도심 야경이 아름답게 펼쳐지는 바에서 시그니처 칵테일, 감각적 인테리어와 함께 트렌트를 이끌어 갑니다.</p>
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
				
				<div class="form-group col-md-2">
				 		<select id="room" class="form-control custom-select">
					        <option selected>레스토랑</option>
						        <option value="명월관">명월관</option>
				                <option value="DEL VINO">DEL VINO</option>
				                <option value="회림">회림</option>
					      </select>
				    </div>
				
				
				    <div class="form-group col-md-2 col-sm-4">
				    	<div class="input-group tp-datepicker date" data-provide="datepicker">
						    <input type="text" class="form-control" placeholder="체크인">
						    <div class="input-group-addon">
						       <span class="ion-android-calendar"></span>
						    </div>
						</div>
		          	</div>
		          	
		          	
		          	<div class="form-group col-md-2">
				 		<select id="room" class="form-control custom-select">
					        <option selected>시간</option>
						        <option value="10">10시</option>
				                <option value="11">11시</option>
				                <option value="12">12시</option>
				                <option value="13">13시</option>
				                <option value="14">14시</option>
				                <option value="15">15시</option>
				                <option value="16">16시</option>
				                <option value="17">17시</option>
				                <option value="18">18시</option>
				                <option value="19">19시</option>
				                <option value="20">20시</option>
				                <option value="21">21시</option>
					      </select>
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
				    
				    <!-- 예약 누르면 위에 입력받은 데이터도 넘겨서 보여줘야함! -->
				    <!-- 예약을 누르면 이름이랑 핸드폰,이메일,요청사항 적는페이지로 넘어감 -->
				    <!-- 로그인 안해도 이용가능으로 ?! -->
				    
				      <a href="booking-restaurant.action" class="btn btn-main btn-block">예약</a>
				    </div>
				 </div>
			</form>
		</div>
	</div>
</section>	

<!-- Wrapper Start -->

<section class="section secondary-bg">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-8 text-center">
				<div class="section-title">
				
				<!-- 레스토랑 리스트 뿌려줄 자리  -->
				
					<p class="section-subtitle">Luxurious</p>
					<h2 class="mb-3">SAVOR THE FLAVOR</h2>
					<p class="mb-4">서울 시내에서 가장 전망이 아름다운 IT WILL 서울의 레스토랑에서<br/> 월드 클래스 셰프들이 선사하는 다양한 고멧 푸드를 맛보세요</p>
					<span class="section-border"></span>
				</div>
			</div><!-- .col-md-8 close -->
		</div>

		<div class="row">
		
		
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<img src="/hotel/resources/images/restaurant/myeongMain.jpg" alt="" class="img-fluid2 card-img-top rounded-0">
					<div class="card-body px-4 py-5">
						<a href="myeong-details.action" class="text-dark"></a>
						<h2>명월관</h2>
						<p class="py-3">한옥의 멋과 야외가든을 갖춘 명월관은 최상의 한우와 전통 참숯만을 사용하는 숯불갈비 전문점입니다.</p>
						<a href="myeong-details.action" class="btn btn-solid-border btn-small">자세히</a>
					</div>
				</div>
			</div>
			
			
			
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<img src="/hotel/resources/images/restaurant/delMain.jpg" alt="" class="img-fluid card-img-top rounded-0">
					<div class="card-body px-4 py-5">
						<a href="room-details.action" class="text-dark"></a>
						<h2>DEL VINO</h2>
						<p class="py-3">캐주얼하고 편안한 분위기가 돋보이는 델비노에서 최고의 셰프들이 델비노만의 감각을 담은 모던 이탈리안 퀴진을 선보입니다.</p>
						<a href="room-details.action" class="btn btn-solid-border btn-small">자세히</a>
					</div>
				</div>
			</div>
			
		
			
			
			
			
			<div class="col-lg-4 col-md-4 col-sm-6">
				<div class="card text-center border-0 rounded-0 mb-4 mb-lg-0">
					<img src="/hotel/resources/images/restaurant/dorimMain.jpg" alt="" class="img-fluid card-img-top rounded-0">
					<div class="card-body px-4 py-5">
						<a href="room-details.action" class="text-dark"></a>
						<h2>회림</h2>
						<p class="py-3">중국의 전통미와 현대적 감각이 훌륭한 조화를 이루고 스타셰프 'Charlie Jung'조리장이 선보이는 특별한 요리의 세계를 경험해 보세요.</p>
						<a href="room-details.action" class="btn btn-solid-border btn-small">자세히</a>
					</div>
				</div>
			</div>

		</div>
	</div>
</section>	
<!-- Content Start -->
<!-- 
<section class="testimonial position-relative section">
  <div class="container">
    <div class="row align-items-center">
      <div class="col-lg-5">
        <div class="section-title ">
            <p class="section-subtitle text-left">Testimonial</p>
            <h2 class="mb-4 text-left">Customers Satisfaction</h2>
            <span class="section-border m-0 mt-4"></span>
          </div>
        </div>

      <div class="col-lg-7">
        <div class="testimonial-carousel p-4">
            <div>
              <i class="ion-quote text-color mb-3 d-block"></i>
              <p class="mb-4">"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
              <div class="user d-flex">
                <img src="/hotel/resources/images/avater.jpg" alt="" class="img-fluid  rounded-circle mr-3">
                <p class="pb-0 mt-2">Rose Ray <span class="d-block">CEO-Themefisher</span></p>
              </div>
            </div>

            <div>
              <i class="ion-quote text-color mb-3 d-block"></i>
              <p class="mb-4">"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
             <div class="user d-flex">
                <img src="/hotel/resources/images/avater.jpg" alt="" class="img-fluid  rounded-circle mr-3">
                <p class="pb-0 mt-2">Rose Ray <span class="d-block">CEO-Themefisher</span></p>
              </div>
            </div>

            <div>
              <i class="ion-quote text-color mb-3 d-block"></i>
              <p class="mb-4">"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
              <div class="user d-flex">
                <img src="/hotel/resources/images/avater.jpg" alt="" class="img-fluid  rounded-circle mr-3">
                <p class="pb-0 mt-2">Rose Ray <span class="d-block">CEO-Themefisher</span></p>
              </div>
            </div>

            <div>
              <i class="ion-quote text-color mb-3 d-block"></i>
              <p class="mb-4">"This Company created an e-commerce site with the tools to make our business a success, with innovative ideas we feel that our site has unique elements that make us stand out from the crowd."</p>
              <div class="user d-flex">
                <img src="/hotel/resources/images/avater.jpg" alt="" class="img-fluid rounded-circle mr-3">
                <p class="pb-0 mt-2">Rose Ray <span class="d-block">CEO-Themefisher</span></p>
              </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</section>
 -->
 
<!--
		Start Blog Section
		=========================================== -->
		
	<!-- 			
	<section class="blog section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-8 text-center">
					<div class="section-title">
						<p class="section-subtitle">Blog news</p>
						<h2 class="mb-3">Latest Posts From Blog</h2>
						<p class="mb-4">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</p>
						<span class="section-border"></span>
					</div>
				</div>.col-md-7 close
			</div>

			<div class="row">
				single blog post
				<article class="col-lg-4 col-md-4 col-sm-6 col-xs-12 clearfix " >
					<div class="card rounded-0 pb-2 mb-4 mb-lg-0">
						<div class="media-wrapper">
							<img src="/hotel/resources/images/blog/img.jpg" alt="amazing caves coverimage" class="img-fluid w-100">
						</div>
						
						<div class="card-body px-4 ">
							<span class='post-meta'><i class="ion-android-calendar"></i> 17 May 2019 by admin</span>
							<a href="single-post" class="mt-3 d-block mb-4 pb-2"><h3>Why choose Sparta Plaza Hotel to travel this summer</h3></a>
							<span class="text-muted"><i class="fa fa-clock"></i> 2 min Read</span>
						</div>
					</div>						
				</article>
				/single blog post

				single blog post
				<article class="col-lg-4 col-md-4 col-sm-6 col-xs-12 clearfix " >
					<div class="card rounded-0 pb-2 mb-4 mb-lg-0">
						<div class="media-wrapper">
							<img src="/hotel/resources/images/blog/img1.jpg" alt="amazing caves coverimage" class="img-fluid w-100">
						</div>
						
						<div class="card-body px-4">
							<span class='post-meta'><i class="ion-android-calendar"></i> 10 June 2019 by admin</span>
							<a href="single-post" class="mt-3 d-block mb-4 pb-2"><h3>Top best rooms in the hotel to stay long with family</h3></a>
							<span class="text-muted"><i class="fa fa-clock"></i> 3 min Read</span>
						</div>
					</div>						
				</article>
				/single blog post

				single blog post
				<article class="col-lg-4 col-md-4 col-sm-6 col-xs-12 clearfix " >
					<div class="card rounded-0 pb-2 mb-4 mb-lg-0">
						<div class="media-wrapper">
							<img src="/hotel/resources/images/blog/img2.jpg" alt="amazing caves coverimage" class="img-fluid w-100">
						</div>
						
						<div class="card-body px-4">
							<span class='post-meta'><i class="ion-android-calendar"></i> 5 Jan 2019 by admin</span>
							<a href="single-post" class="mt-3 d-block mb-4 pb-2"><h3>Best Marketing Tips for business growth rapidly</h3></a>
							<span class="text-muted"><i class="fa fa-clock"></i> 5 min Read</span>
						</div>
					</div>						
				</article>
				/single blog post
 -->
				<!-- end single blog post -->
			</div>
			 <!-- end row -->
		</div>
		<!-- end container -->
	</section>
	<!-- end section -->
	
<!-- <section class="gallery-feed">
	<div class="container-fluid p-0">
		<div class="row">
			<div class="gallery-title">
				<a href="gallery-3.action" class="btn btn-main">Gallery</a>
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

 -->

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
   