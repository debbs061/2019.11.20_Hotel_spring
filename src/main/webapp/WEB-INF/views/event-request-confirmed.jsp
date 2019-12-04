<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp= request.getContextPath();
	
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>



</head>
<body>

<div class="container">

 <c:choose>
 <c:when test="${not empty message}">
	
	<div>
	<ul class="list-group">
 	 <h4 style="text-align: center;">중복된 예약이 있습니다</h4>
  	 <h6>&nbsp;이벤트 이름</h6>
  	 <li class="list-group-item" style="background-color: #D8D8D8;">${edto.eventTitle }</li>
     <h6 style="padding: 5px;">장소 및 시간</h6>
     <li class="list-group-item" style="background-color: #D8D8D8;">${edto.location } /${edto.time } </li>
     <h6 style="padding: 5px;">동행인원</h6>
     <li class="list-group-item" style="background-color: #D8D8D8;">${dto.companionNumber }</li>
     <h6 style="padding: 5px;">요청사항</h6>
     <li class="list-group-item" style="background-color: #D8D8D8;">${dto.userRequest }</li>
     </ul>
     </div>  
     <br/>
 
</c:when>
<c:otherwise>
	<div>
		<ul class="list-group">
 		 <h4 style="text-align: center;">예약이 확정되었습니다.</h4>
  	 	 <h6>&nbsp;이벤트 이름</h6>
  	 	 <li class="list-group-item" style="background-color: #D8D8D8;">${edto.eventTitle }</li>
    	 <h6 style="padding: 5px;">장소 및 시간</h6>
   		 <li class="list-group-item" style="background-color: #D8D8D8;">${edto.location } /${edto.time } </li>
         <h6 style="padding: 5px;">동행인원</h6>
         <li class="list-group-item" style="background-color: #D8D8D8;">${dto.companionNumber }</li>
         <h6 style="padding: 5px;">요청사항</h6>
         <li class="list-group-item" style="background-color: #D8D8D8;">${dto.userRequest }</li>
        </ul>
     </div>  
     <br/>
</c:otherwise>
</c:choose>


</div>
 
<div align="center">
	<a class="btn btn-main" href="event-booking-delete.action?eventBookingNum=${dto.eventBookingNum }" role="button">예약 취소</a>
	<!--  <a class="btn btn-main" href="event-booking-delete.action?eventBookingNum=${dto.eventBookingNum }" role="button">수정</a>  -->
	<button type="button" class="btn btn-main" data-dismiss="modal">닫기</button>
</div>	

</body>
</html>