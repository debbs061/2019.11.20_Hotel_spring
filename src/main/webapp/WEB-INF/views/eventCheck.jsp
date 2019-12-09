<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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

  <title>IT WILL | Hotel </title>

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
  
	<style type="text/css">
	
	*:not(i){
		font-family: 'Noto Serif KR', serif!important;
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
									</span>
										<a href="logout.action">&nbsp;&nbsp;로그아웃</a> / 
										
										<c:if test="${sessionScope.login.userId ne 'admin'}">
											<a href="myPage.action">마이페이지</a>
										</c:if>
										
										<c:if test="${sessionScope.login.userId eq 'admin'}">
											<a href="admin.action">관리자</a>
										</c:if>
										
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

<div class="main-wrapper ">
<div id="kakao-talk-channel-chat-button" style="position:fixed; right:10px; bottom:0px; z-index:1000;"></div>

<section class="overly bg-2">
<!-- 검정 배경 시작 -->
   
   <!-- 하나의 컨테이너 시작-->
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
          <h1 class="text-white py-100">이벤트 예약확인</h1>
      </div>
    </div>
  </div>

  <div class="container-fluid page-border-top">
    <div class="row ">
      <div class="col-lg-12 text-center">
          <div class="page-breadcumb py-2">
            <a href="/hotel" class="text-white">Home</a>
            <span><i class="fa fa-angle-right text-white mx-1" aria-hidden="true"></i></span>
            <a href="eventCheck.action" class="text-white">Event</a>
        </div>
      </div>
    </div>
  </div>
</section>




 <!-- MAIN CONTENT -->
    <section class="main-content section clearfix">
      <div class="container">
        
       <c:forEach items="${elists }" var="dto">
        <div class="border payment-confirm position-relative">
          <div class="row justify-content-center align-items-center ">
              <div class="col-md-12 col-sm-12 col-12 col-lg-4 mb-4 mb-lg-0">
                <img src="/hotel/resources/images/event/${dto.savefileName }" 
                class="img-fluid w-100" style="width: 289px; height: 193px;" alt="confirm img"/>

              <!--    <a href="room-details"><h2 class="text-dark mt-3 mb-4">Delux couple</h2></a>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercita</p>
          -->   </div>

              <div class="col-md-12 col-sm-12 col-xs-12 col-lg-8">
              		<div class="row">
              		<div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 85px;">
                        <div class="ed-cinfirm-detail" style="width: 300px;">
                            <h3 class="headline">${dto.eventTitle }</h3>
                        </div>
                    </div>
              		
              		</div>
                    <div class="row ">
                    
                      <div class="col-lg-6 col-md-6 col-sm-6" style="padding-left: 85px;">
                        <div class="ed-cinfirm-detail" style="width: 300px;">
                            <ul class="list-unstyled">
                              <li>
                                <span>성함:</span>
                               ${sessionScope.login.userName }
                              </li>
                              <li>
                                <span>동행인원:</span>
                             	${dto.companionNumber }
                              </li>
                               <li>
                                <span>예약일자: </span>
                          	   ${dto.userSelectedDate }
                              
                              </li>
                              <li>
                                <span>장소: </span>
                                ${dto.location }
                              </li>
                              <li>
                              </li>
                              <li>
                              </li>
                            </ul>
                        </div>
                    </div>

                     <div class="col-lg-6 col-md-6 col-sm-6">
                        <div class="ed-cinfirm-detail">
                          <ul class="list-unstyled">
                            <li>
                                <span>연락처:  </span>
                              ${sessionScope.login.tel }
                            </li>
                             <li>
                                <span>이메일:  </span>
                               ${sessionScope.login.userEmail }
                            </li>
                             <li>
                                <span>가격:  </span>
                                ${dto.price}
                            </li>
                             <li>
                                <span>요청사항:  </span>
                               	 ${dto.userRequest }
                            </li>
                            
                            <li>
                            </li>
                             <li>
                            </li>
                           
                          </ul>
                        </div>
                    </div>
                    
           </div>
                   
                <!-- 1개의 이벤트 내역 출력 종료 -->
              </div>
               <div class="total-amount" style="padding-left: 40px; padding-bottom: 50px;">
       				<button type="button" class="btn btn-solid-border"  name="${dto.eventBookingNum}" >예약취소하기</button>
                </div>
              
          </div>
          </div>
          
          </c:forEach>
          		
 				<div class="col-lg-12 text-center">
 				<c:if test="${fn:length(elists) > 0 }">
                      <div class="total-amount border-top border-bottom py-4 mt-4 mb-4">
                        <h2>더 다양한 아이티윌 호텔의 서비스를 즐기세요.</h2>
                        <br/>
                </c:if>
                <c:if test="${fn:length(elists) == 0 }">
                	<div class="total-amount border-top border-bottom py-4 mt-4 mb-4">
                        <h2>예약이 존재하지 않습니다.</h2>
                        <br/>
                </c:if>
                        <p>아래를 클릭하시면 원하시는 서비스로 이동이 가능합니다.</p>
                      </div>

                       <a href="restaurantMain.action" class="btn btn-solid-border">레&nbsp;스&nbsp;토&nbsp;랑</a>
                       <a href="/hotel" class="btn btn-solid-border">호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;텔</a>
                       <a href="gym" class="btn btn-solid-border">헬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스</a>
                       <a href="life-spa.action" class="btn btn-solid-border">스&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;파</a>
                       <a href="event-grid.action" class="btn btn-solid-border">이&nbsp;&nbsp;&nbsp;벤&nbsp;&nbsp;&nbsp;트</a>
                       <a href="myPage.action" class="btn btn-solid-border">마&nbsp;이&nbsp;페&nbsp;이&nbsp;지</a>
                       <!-- <a href="#" class="btn btn-main">레&nbsp;스&nbsp;토&nbsp;랑</a>
                       <a href="#" class="btn btn-main">호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;텔</a>
                       <a href="#" class="btn btn-main">헬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;스</a>
                       <a href="#" class="btn btn-main">쇼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;핑</a> -->
                       
                       
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
    
    <!-- Kakao 톡상담 -->
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
	
	<script type="text/javascript">
	
	$(document).ready(function() {    
		$('button').click(function(){
			var currentLocation = window.location;
			var eventBookingNum ="eventBookingNum="+ $(this).attr('name');
			$.ajax({
				type:"POST",  
				url:"<%=cp%>/event-booking-delete.action", 
				data:eventBookingNum,
				success:function(args){
						
					
					location.reload();
					
				},
				beforeSend:false, 
				error:function(e) {
					
					alert(e.responseText); 
				}
			});
			
		});
		
	});
	
	</script>
	
	
	<script src="/hotel/resources/js/weather.js"></script>
	

  </body>
  </html>