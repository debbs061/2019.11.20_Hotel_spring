 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@ page contentType="text/html; charset=UTF-8"%>
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

  <link rel="stylesheet" href="/hotel/resources/https://use.fontawesome.com/releases/v5.7.2/css/all.css">
  
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
<section class="overly bg-2">
  <div class="container">
    <div class="row">
      <div class="col-lg-12 text-center">
          <h1 class="text-white py-100">객실 상세정보</h1>
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




<section class="section room-details ">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 mb-4 mb-lg-0">
				<div class="room-details-info p-4 border">
					<div class="room-img-lg">
						<img src="/hotel/resources/images/rooms/blog-single-1.png" alt="" class="img-fluid">
					</div>

					<div class="room-heading row d-flex mt-3 mb-5">
						<div class="col-lg-9">
							<h2 class="mb-0">Classic Room</h2>
							<h3>Starting from : <span> 150,000원</span>/<small>1박</small> </h3>
						</div>

						<div class="col-lg-3">
							<a href="booking-step1.action" class="btn btn-main ">예약하기</a>
						</div>
					</div>
                    <div class="row">
                        <div class="col-md-4">
                            <ul class="mb-5 list-unstyled">
                                <li>
                                    <p><i class="fa fa-bed" aria-hidden="true"></i> 침대: <span>2 킹 베드</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-binoculars" aria-hidden="true"></i> 전망: <span>호수전망</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-arrows-alt" aria-hidden="true"></i> 면적: <span>50 m2</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-coffee" aria-hidden="true"></i> 조식: <span>조식포함</span></p>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-4">
                            <ul class="list-unstyled">
                                <li>
                                    <p><i class="fa fa-users" aria-hidden="true"></i> 최대 투숙인원: <span>4명</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-wifi" aria-hidden="true"></i> Wifi: <span>무료와이파이</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-recycle" aria-hidden="true"></i> 에어컨: <span>구비</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-plug" aria-hidden="true"></i> 헤어드라이어: <span>구비</span></p>
                                </li>
                            </ul>
                        </div>

                        <div class="col-md-4">
                            <ul class="list-unstyled">
                                <li>
                                    <p><i class="fa fa-tv" aria-hidden="true"></i> 텔레비전: <span>구비</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-cube" aria-hidden="true"></i> 안전금고: <span>구비</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-bullseye" aria-hidden="true"></i> 흡연여부: <span>금연</span></p>
                                </li>
                                <li>
                                    <p><i class="fa fa-car" aria-hidden="true"></i> 주차: <span>투숙일 동안 무료</span></p>
                                </li>
                            </ul>
                        </div>

						<div class="col-lg-12">
							<h4 class="mb-3">Informations: </h4>
							<p>우아한 인테리어와 현대적 세련미가 조화롭게 어우러진 에덴서울의 스탠다드 룸은 서울 시내 동급 호텔 대비 넓은 50㎡의 여유로운 공간을 제공합니다.
 초고층 객실에서 바라보는 서울 도심의 파노라믹뷰는 최상의 휴식을 제공합니다.</p>
						</div>
                	</div>
                </div>
			</div>
			<div class="col-lg-4">
					<div class="product-sidebar bg-dark p-4">
		<h3 class="text-white text-center py-2 text-uppercase ">예약하기</h3>
		<form action="#" class="sidebar-form p-2">
			<div class="form-row">
			    <div class="form-group col-lg-12 col-sm-12 mb-3">
			    	<h6 class="text-white text-uppercase mb-2">체크인</h6>
			    	<div class="input-group tp-datepicker date" data-provide="datepicker">
					    <input type="text" class="form-control" placeholder="체크인 날짜">
					    <div class="input-group-addon">
					       <span class="ion-android-calendar"></span>
					    </div>
					</div>
	          	</div>
	          	
	          	<div class="form-group col-lg-12 col-sm-12 mb-3">
			    	<h6 class="text-white text-uppercase mb-2">체크아웃</h6>
			    	<div class="input-group tp-datepicker date" data-provide="datepicker">
					    <input type="text" class="form-control" placeholder="체크아웃 날짜">
					    <div class="input-group-addon">
					       <span class="ion-android-calendar"></span>
					    </div>
					</div>
	          	</div>

			    <div class="form-group col-lg-12  mb-3">
			    	<h6 class="text-white text-uppercase mb-2">성인</h6>
		    		<select id="person" class="form-control custom-select">
				        <option selected>Adults</option>
					        <option value="1" style="color:black;">1 명</option>
			                <option value="2" style="color:black;">2 명</option>
			                <option value="3" style="color:black;">3 명</option>
			                <option value="4" style="color:black;">4 명</option>
				      </select>
			    </div>

			    <div class="form-group col-lg-12  mb-3">
			    	<h6 class="text-white text-uppercase mb-2">어린이</h6>
		    		<select id="children" class="form-control custom-select">
				        <option selected>Children</option>
					        <option value="1" style="color:black;">1 명</option>
			                <option value="2" style="color:black;">2 명</option>
			                <option value="3" style="color:black;">3 명</option>
			                <option value="4" style="color:black;">4 명</option>
			                <option value="5" style="color:black;">5 명</option>
				      </select>
			    </div>

			     <div class="form-group col-lg-12  mb-3">
			     	<h6 class="text-white text-uppercase mb-2">숙박일</h6>
		     		<select id="night" class="form-control custom-select" >
				        <option selected>Nights</option>
					        <option value="1" style="color:black;">1 박</option>
			                <option value="2" style="color:black;">2 박</option>
			                <option value="3" style="color:black;">3 박</option>
			                <option value="4" style="color:black;">4 박</option>
			                <option value="5" style="color:black;">5 박</option>
			                <option value="6" style="color:black;">6 박</option>
			                <option value="7" style="color:black;">7 박</option>
			                <option value="7+" style="color:black;">7+ 박</option>
				      </select>
			    </div>
				 <div class="form-group col-lg-12 mb-3">
				 	<h6 class="text-white text-uppercase mb-2">방 갯수</h6>
			 		<select id="room" class="form-control custom-select">
				        <option selected>Rooms</option>
					        <option value="1" style="color:black;">1 </option>
			                <option value="2" style="color:black;">2 </option>
			                <option value="3" style="color:black;">3 </option>
			                <option value="4" style="color:black;">4 </option>
				      </select>
			    </div>

			    <div class="form-group col-lg-12 mt-4 mb-3">
				 	<h6 class="text-white text-uppercase mb-2">추가 시설</h6>
			 		<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
					  <label class="form-check-label" for="defaultCheck1">
					    에어컨 
					  </label>
					</div>

					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck2">
					  <label class="form-check-label" for="defaultCheck2">
					    인터넷 무료 
					  </label>
					</div>

					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck3">
					  <label class="form-check-label" for="defaultCheck3">
					     텔레비전
					  </label>
					</div>
					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck5">
					  <label class="form-check-label" for="defaultCheck5">
					      전자렌지 
					  </label>
					</div>

					<div class="form-check">
					  <input class="form-check-input" type="checkbox" value="" id="defaultCheck4">
					  <label class="form-check-label" for="defaultCheck4">
					      공기청정기
					  </label>
					</div>
			    </div>

			    <div class="form-group col-lg-12 mb-3">
			    	<div class="input-group range_slider ">
	                    <div data-role="rangeslider" >
	                        <label>가격 조정:</label>
	                        <div class="range">
	                            <span class="float-left text-white">150,000원</span><span class="float-right text-white">5,000,000원</span>
	                            <input class="ml-4" type="range" name="price-min" id="price-min" value="200" min="0" max="1000">
	                        </div>
	                     </div>        
	                </div>
			    </div>  

			    <div class="form-group col-lg-12">
			      <a href="booking-step2.action" class="btn btn-main btn-block">예약하기</a>
			    </div>
			 </div>
		</form>
	</div>

			</div>
		</div>


		<div class="row">
			<div class="col-lg-8">
				<div class="room-details-review p-4 mt-5 ">

                    <h4 class="mb-4">(${countReview }) 투숙객 후기 :-</h4>
                  
					
                    <c:forEach items="${lists }" var="dto">
                    <div class="room-details-review-item d-flex mb-5">
                        <div class="item-content ml-3">
                            <h3 class="mb-3">${dto.name } - <span>${dto.created }</span></h3>
                            <p>${dto.content }</p>
                            
                    <input type="button" value=" 삭제 " class="btn btn-main"
					onclick="javascript:location.href=
					'<%=cp%>/review-delete.action?roomIndex=${roomIndex }&reviewNum=${dto.reviewNum }'"/>
                            
                        </div>
                    </div>
					</c:forEach>
					
                    <!-- Reveiw END -->


                    <div class="room-review-comment mt-5 pt-5 border-top">
	                    <h4 class="mb-4">후기 남기기 :- </h4>
						
							<form action="review.action?roomIndex=${roomIndex }" method="post">	                     
							 <div class="form-group">
	                                <input type="text" name="name" placeholder="이름" class="form-control" value="${sessionScope.login.userName }">
	                        </div>
	                        <div class="form-group">
	                                <input type="text" name="email" placeholder="이메일" class="form-control" value="${userDTO.email }">
	                        </div>
	                        <div class="form-group">
	                                <textarea class="form-control" name="content" placeholder="Message" rows="5"></textarea>
	                        </div>

	                        <div class="form-group">
	                            <div class="btn-submit">
	                                   <button type="submit" class="btn btn-main">작성하기</button>
	                                   
	                            </div>
	                        </div>
	                    </form>
	                </div>
	                <!-- REVIEW COMMENT END -->
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
    <script src="/hotel/resources/http://cdnjs.cloudflare.com/ajax/libs/jquery.form/3.32/jquery.form.js"></script>
    <script src="/hotel/resources/http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.11.1/jquery.validate.min.js"></script>
    <script src="/hotel/resources/plugins/bootstrap-datepicker-master/bootstrap-datepicker.min.js"></script>
    
    <!-- Google Map -->
    <script src="/hotel/resources/plugins/google-map/map.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkeLMlsiwzp6b3Gnaxd86lvakimwGA6UA&callback=initMap"></script>    

    <script src="/hotel/resources/js/script.js"></script>

  </body>
  </html>