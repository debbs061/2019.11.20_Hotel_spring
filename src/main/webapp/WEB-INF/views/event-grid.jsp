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

  <title>IT WILL | Hotel Event-Grid</title>

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
  
  <!-- Kakao 톡상담 -->
  <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
  
  <!-- 이미지 슬라이드 -->
  <link rel="stylesheet" type="text/css" href="/hotel/resources/css/glider.css" />
  <link rel="stylesheet" type="text/css" href="/hotel/resources/css/glider.min.css" />
   
  
  
    <style type="text/css">
        * {
            box-sizing: border-box
        }
        html, body {
            width: 100%;
           
        }
        .glider-contain {	
            width: 90%;
            max-width: none;
            margin: 0 auto;
        }
        .glider-slide {
            min-height: 150px;
        }
        .glider-slide img {
            width: 100%;
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
									<a href="login.action">로그인</a> / 
									<a href="signup.action">회원가입</a><br/>
								</c:when>
							
								<c:otherwise>
									${sessionScope.login.userName }님 안녕하세요:)♥</br>
									<a href="logout.action">로그아웃</a><br/>
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
				  <li><a class="dropdown-item" href="room-list.action">Room-List</a></li>
				  <li><a class="dropdown-item" href="room-grid.action">Room-Grid</a></li>
				</ul>
			  </li>

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

<div class="main-wrapper">
<div id="kakao-talk-channel-chat-button" style="position:fixed; right:10px; bottom:0px; z-index:1000;"></div>

<section class="overly bg-2">
  <div class="container">
  
    <div class="row">
      <div class="col-lg-12 text-center">
          <h1 class="text-white py-100">호텔 이벤트</h1>
      </div>
    </div>
  </div>

  <div class="container-fluid page-border-top">
    <div class="row ">
      <div class="col-lg-12 text-center">
          <div class="page-breadcumb py-2">
            <a href="/hotel" class="text-white">Home</a>
            <span><i class="fa fa-angle-right text-white mx-1" aria-hidden="true"></i></span>
            <a href="event-grid.action" class="text-white">Event</a>
        </div>
      </div>
    </div>
  </div>
  
  
</section>
<div class="container">
		 <div class="row justify-content-center">
            <div class="col-lg-8 text-center">
                <div class="section-title">
                    <p class="section-subtitle"></p>
                    
                    <p class="mb-4">매일 호텔에서 직접 진행하는 다양한 이벤트 액티비티에 참여하세요.</p>
                    <span class="section-border"></span>
                </div>
            </div><!-- .col-md-7 close -->
        </div>
</div>



<!-- 이벤트 검색옵션 띄우기 -->
 <!-- MAIN CONTENT -->
    <div class="section main-content  clearfix" style="padding-top: 0px; padding-bottom: 0px;">
      <div class="container">
        <div class="row">
       		<!-- 이벤트 예약 순서도 띄우기 -->

        </div>

        <div class="tab-content">
          <div role="tabpanel" class="tab-pane active" id="select-room">
          
          
            <!-- CHECK AREA -->
            <section class="section-reservation2">
	<div class="container">
		<div class="gray-bg p-5 position-relative">
		
			<!-- 이벤트 Start/End date Form -->
			<form action="#" class="reserve-form">
			
				<div class="form-row">
				
				<div class="form-group col-md-2 ">
				</div>
				<div class="form-group col-md-2 ">
				</div>
				<div class="form-group col-md-2 ">
				</div>
				
				    <div class="form-group col-md-2 col-sm-4">
				    	<div class="input-group tp-datepicker date" data-provide="datepicker">
				    	
				    	<!-- 투숙기간중(checK in ~ out date 가지고 와서 받아놓기  -->
						    <input type="text" class="form-control" 
						    placeholder="시작일" value="" id="startDate">
						    <div class="input-group-addon">
						       <span class="ion-android-calendar"></span>
						    </div>
						</div>
		          	</div>


					<div class="form-group col-md-2 col-sm-4">
				    	<div class="input-group tp-datepicker date" data-provide="datepicker">
						    <input type="text" class="form-control" placeholder="종료일" value=""
						    	 id="endDate">
						    <div class="input-group-addon">
						       <span class="ion-android-calendar"></span>
						    </div>
						</div>
		          	</div>
		          	
		          	<!-- form 제출 -->
		          	<div class="form-group col-md-2">
				      <input type="button" value="검색하기" 
				      class="btn btn-main btn-block" id="btnOK">				   
				    </div>
				    
				 </div>
			</form>
			
		</div>
	</div>
</section>	
             
            </div>
        </div>
      </div>
    </div>

<div class="page-wrapper event-page">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				
				<div id="listData"></div> 

			</div>
		</div>
	</div>
</div>


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

</div>


<!--  main-wrapper 끝 -->

    <!-- 
    Essential Scripts
    =====================================-->

    
    <!-- Main jQuery -->
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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
	
	
	<!-- 이미지 슬라이드 --> 
    <script src="/hotel/resources/js/glider.js"></script>
    <script src="/hotel/resources/js/glider.min.js"></script>
    <script src="/hotel/resources/js/glider-compat.min.js"></script>
    
    
    
<script type="text/javascript">
   
    
//chrl
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
 	/*
   	alert(endDate)
   	alert(startD[0])  //월
   	alert(startD[1])  //일
   	alert(startD[2])  //년
 	alert(endD[0]) //월
 	alert(endD[1]) //일
 	alert(endD[2]) //년
 	 */	 	
 	//년도 비교
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
    
    
    
    <!-- 
    <script>
      window.addEventListener('load',function(){
        document.querySelector('.glider').addEventListener('glider-slide-visible', function(event){
            var glider = Glider(this);
            console.log('Slide Visible %s', event.detail.slide)
        });
        document.querySelector('.glider').addEventListener('glider-slide-hidden', function(event){
            console.log('Slide Hidden %s', event.detail.slide)
        });
        document.querySelector('.glider').addEventListener('glider-refresh', function(event){
            console.log('Refresh')
        });
        document.querySelector('.glider').addEventListener('glider-loaded', function(event){
            console.log('Loaded')
        });

        window._ = new Glider(document.querySelector('.glider'), {
            slidesToShow: 1, //'auto',
            slidesToScroll: 1,
            itemWidth: 150,
            draggable: true,
            scrollLock: false,
            dots: '#dots',
            rewind: true,
            arrows: {
                prev: '.glider-prev',
                next: '.glider-next'
            },
            responsive: [
                {
                    breakpoint: 800,
                    settings: {
                        slidesToScroll: 'auto',
                        itemWidth: 300,
                        slidesToShow: 'auto',
                        exactWidth: true
                    }
                },
                {
                    breakpoint: 700,
                    settings: {
                        slidesToScroll: 4,
                        slidesToShow: 4,
                        dots: false,
                        arrows: false,
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToScroll: 3,
                        slidesToShow: 3
                    }
                },
                {
                    breakpoint: 500,
                    settings: {
                        slidesToScroll: 2,
                        slidesToShow: 2,
                        dots: false,
                        arrows: false,
                        scrollLock: true
                    }
                }
            ]
        });
      });
    </script>
     -->
    
  
  </body>
  </html>