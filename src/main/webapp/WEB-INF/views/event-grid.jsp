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
  
  <!-- font -->
  <link href="https://fonts.googleapis.com/css?family=Gothic+A1:100|Noto+Serif+KR:200&display=swap&subset=korean" rel="stylesheet">

  <!-- Kakao 톡상담 -->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  
  <!-- 이미지 슬라이드 -->
  <link rel="stylesheet" type="text/css" href="/hotel/resources/css/glider.css" />
  <link rel="stylesheet" type="text/css" href="/hotel/resources/css/glider.min.css" />
  

  <link href="https://fonts.googleapis.com/css?family=Gothic+A1:100|Noto+Serif+KR:200&display=swap&subset=korean" rel="stylesheet">
	<style type="text/css">
	
		*:not(i){
			font-family: 'Noto Serif KR', serif!important;
		}
	
	</style>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

<script type="text/javascript">


$(function(){
	
    listPage(1);
});
    
function listPage(page) {
	
		var mode = "mainstart";
    	var url = "<%=cp%>/event-list.action";
    	
    	$.post(url,{mode:mode},function(args) {
    			
    		$("#listData").html(args);
    		
    	});
 }
 

$(document).ready(function(){
	
	$("#btnOK").click(function(){
		
		
		var params = "startDate=" + $("#startDate").val()
				+ "&endDate=" + $("#endDate").val();
		
		$.ajax({
			
			type:"POST",  
			url:"<%=cp%>/event-list.action", 
			data:params,
			success:function(args){
					
				$("#listData").html(args);
			
			},
			beforeSend:showRequest, 
			error:function(e) {
				
				alert(e.responseText); 
			}
		});
		
	});
	
});


function showRequest(){
		
		
	var startDate = $.trim($("#startDate").val());
	var endDate = $.trim($("#endDate").val());
	
	if(!startDate) {
		alert("\n스타트 날짜를 선택하세요");
		$("#startDate").focus;
		return false;
	}

	if (!endDate) {
		alert("\n엔드 날짜를 선택하세요");
		$("#endDate").focus;
		return false;
	}
	
	var startD =new Array();
	startD = startDate.split("/");
	var endD = new Array();
	endD = endDate.split("/");
	
	if(startD[2]>endD[2]) { 
		alert("\n체크인 날짜보다 이전 날짜를 선택할 수 없습니다1");
		$("#endDate").focus;
		return false;
	}
	//월 비교
	//년도 같지 않고, end의 year 작은 상황에서 
	//년도가 같지 않고, end의 yeaer 큰 상황세ㅓ 
	if(startD[2]!==endD[2] && startD[2] > endD[2]){
		if(startD[0]>endD[0]) {
	   		alert("\n체크인 날짜보다 이전 날짜를 선택할 수 없습니다2");
	   		$("#endDate").focus;
	   		return false;
	   	}
	}
	
	if (startD[0]==endD[0]) {
		
	if(!startD[2]<endD[2])
		if(!startD[0]<endD[0])
			if(startD[1]>endD[1])  {
					alert("\n체크인 날짜보다 이전 날짜를 선택할 수 없습니다3");
					$("#endDate").focus;
					return false;
			}
	}
				
	return true;

}

</script>


<script>

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
					&nbsp;&nbsp;&nbsp;&nbsp;
					<span id="currentDate" style="font-size:12px;"></span>
					<span style="font-size:12px;">서초구</span>
					<span id="icon"></span>
					<span id="todayTemp" style="font-size:12px;"></span>
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
										<a href="logout.action">&nbsp;&nbsp;로그아웃</a> /
										<a href="myPage.action">마이페이지</a>
										<c:if test="${sessionScope.login.userId eq 'admin'}">
											/<a href="admin.action">관리자</a>
										</c:if>
									</span> 
								</c:otherwise>
							</c:choose>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="image_container" style="display: none;">
<!-- TEST -->
<p>테스트</p>
</div>


	<nav class="navbar navbar-expand-lg bg-white w-100 p-0" id="navbar">
		<div class="container">
		  <a class="navbar-brand" href="/hotel" ><img src="/hotel/resources/images/logo.png" alt="Eden" class="img-fluid" ></a>
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

<div class="main-wrapper ">
<div id="kakao-talk-channel-chat-button" style="position:fixed; right:10px; bottom:0px; z-index:1000;"></div>

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
            <a href="room-grid.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
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
            <a href="room-grid.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
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
            <a href="room-grid.action" class="btn btn-main" data-duration-in=".3" data-animation-in="zoomIn" data-delay-in=".4">more details</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
<!-- /slider -->
<section class="section-reservation" >
	<div class="container" style="padding-top: 0px; padding-bottom: 0px;">
		<div class="secondary-bg p-5 position-relative">
			<form name="hotelSearchForm" action="" class="reserve-form" method="post">
				<div class="form-row">
                                    <div class="form-group col-md-4">
                                    <div class="input-group">
                                        <!-- 투숙기간중(checK in ~ out date 가지고 와서 받아놓기  -->
                                        <input type="text" class="form-control" placeholder="이벤트 관련 검색어" value="" id="">
                                                  
                                     </div>
                                    
                                    
                                     </div>
                                     
                                      <div class="form-group col-md-2">
                                     </div>
                                     
                                     <div class="form-group col-md-2 col-sm-4">
                                     	<div class="input-group tp-datepicker date">
                                                <!-- 투숙기간중(checK in ~ out date 가지고 와서 받아놓기  -->
                                                <input type="text" class="form-control" placeholder="시작일" id="startDate" autocomplete="off">
                                                    <div class="input-group-addon">
                                                        <span class="ion-android-calendar"></span>
                                                    </div>
                                                </div>
                                      </div>
                                            <div class="form-group col-md-2 col-sm-4">
                                                <div class="input-group tp-datepicker date">
                                                    <input type="text" class="form-control" placeholder="종료일" id="endDate" autocomplete="off">
                                                        <div class="input-group-addon">
                                                            <span class="ion-android-calendar"></span>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- form 제출 -->
                                                <div class="form-group col-md-2">
                                                    <input type="button" value="검색하기" class="btn btn-main btn-block" id="btnOK"></div>
                                                </div>
			</form>
		</div>
	</div>
</section>	
</div>


<section id="about" class="section secondary-bg">
    <div class="container">
    	
    	<div class="page-wrapper event-page" style="padding-top: 50px;">
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-12">
                                <div id="listData"></div>
                            </div>
                        </div>
                    </div>
                </div>
    
    
    
    
        <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <div class="section-title">
                    <p class="section-subtitle">SPECIAL OFFERS</p>
                    <h2 class="mb-3">다가오는 이벤트</h2>
                    <span class="section-border"></span>
                </div>
            </div><!-- .col-md-7 close -->
        </div>

        <div class="row align-items-center">
            <div class="col-lg-6">
            	<div class="event-box mb-5 position-relative">
            	<div id="testSlide"></div>
					<img src="/hotel/resources/images/gym/gym3.jpg" alt="" class="img-fluid" onclick="location.href='gym';">
					
					<div class="event-content mt-3">
						<div class="event-date p-3 text-white">
							<span class="date font-weight-bold d-block">Members</span> <span>O n l y</span>
						</div>
						
					</div>
					<div class="event-post-meta mt-2 mb-3">
						<a href="gym"><h3>호텔 헬스시설</h3></a>
						<span><i class="ion-ios-location"></i>4F 헬스장</span>
						<span><i class="ion-clock"></i>09:00 ~ 18:00 (주말 제외)</span>
					</div>
					
				</div>
                
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
            	<div class="event-box mb-5 position-relative">
					<img src="/hotel/resources/images/about/about1.jpg" alt="" class="img-fluid w-100" onclick="location.href='restaurantMain.action';">
					<div class="event-content mt-3">
						<div class="event-date p-3 text-white">
							<span class="date font-weight-bold d-block">Members</span> <span>O n l y</span>
						</div>
					</div>
					<div class="event-post-meta mt-2 mb-3">
						<a href="restaurantMain.action"><h3>호텔 레스토랑</h3></a>
						<span><i class="ion-ios-location"></i>B3F 레스토랑</span>
						<span><i class="ion-clock"></i>09:00 ~ 20:00 (주말 제외)</span>
					</div>
				</div>
                
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
            	<div class="event-box mb-5 position-relative">
					<img src="/hotel/resources/images/about/about2.jpg" alt="" class="img-fluid w-100" onclick="location.href='life-spa.action';">
					<div class="event-content mt-3">
						<div class="event-date p-3 text-white">
							<span class="date font-weight-bold d-block">Members</span> <span>O n l y</span>
						</div>
					</div>
					<div class="event-post-meta mt-2 mb-3">
						<a href="life-spa.action"><h3>호텔 SPA</h3></a>
						<span><i class="ion-ios-location"></i>5F SPA시설</span>
						<span><i class="ion-clock"></i>09:00 ~ 24:00</span>
					</div>
				</div>
                
            </div>
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


<!-- footer Start -->
<footer class="footer pb-md-5 pb-sm-5 secondary-bg pb-0">
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-6 col-sm-6">
				<div class="widget footer-widget">
					<div class="footer-logo footer-title mb-4"><h3>IT Will</h3></div>
					<p>한국의 전통미와 현대적인 감각을 겸비하고 있는 세계속의 명문호텔, 
					<br/>아이티윌 호텔은 세계 최고의 어번(urban) 라이프 스타일 호텔로 고객들에게 최고급 서비스를 제공합니다.</p>
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

   
    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
  	<script type="text/javascript" src="/hotel/resources/plugins/jquery/jquery.js"></script>
   
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

  </body>
  </html>
   