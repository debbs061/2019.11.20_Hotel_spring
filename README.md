
# HotelWeb
 
'신라호텔' 사이트를 모방하여 만든 숙박 예약 웹페이지입니다.  예약부터 결제(PG사 연동), 카카오톡 1:1 상담, 커뮤니티 게시판 이용이 가능합니다.  

## 개발환경
- OS: Window
- IDE : STS
- Language : JAVA, JSTL, JSP, HTML5, CSS3, JAVASCRIPT, AJAX
- Middleware : Tomcat
- ORM : MyBatis
- DBMS : Oracle Database 11g Express
- Framework : Spring 3.0

## Folder Structure

    .
    ├── src/main/java                   
    │            ├── com/exe/dao
    │            │		 ├── EventDAO.java
    │            │		 ├── EventReviewDAO.java
    │            │		 ├── GalleryDAO.java
    │            │		 ├── HotelBookingDAO.java
    │            │		 ├── HotelUserDAO.java
    │            │		 ├── LessonDAO.java
    │            │		 ├── LessonUserDAO.java
    │            │		 ├── RestaurantDAO.java
    │            │		 ├── ReviewDAO.java
    │            │		 ├── RoomDAO.java        
    │            │		 └── SpaDAO.java
    │            ├── com/exe/dto
    │            │		 ├── EventBookingDTO.java
    │            │		 ├── EventCheckDTO.java
    │            │		 ├── EventDTO.java
    │            │		 ├── EventReviewDTO.java
    │            │		 ├── GalleryDTO.java
    │            │		 ├── HotelBookingDTO.java
    │            │		 ├── LessonDTO.java
    │            │		 ├── LessonUserDTO.java
    │            │		 ├── LoginDTO.java
    │            │		 ├── RestaurantBookingDTO.java
    │            │		 ├── RestaurantDTO.java
    │            │		 └── ReviewDTO.java	         		
    │            ├── com/exe/hotel
    │            │		 ├── GymController.java
    │            │		 ├── HotelController.java
    │            │		 └── RestaurantController.java		
    │            └── com/exe/mapper
    │            		 ├── eventMapper.java
    │            		 ├── hotelMapper.java
    │            		 ├── lessonMapper.java
    │            		 ├── restaurantMapper.java        
    │                    └── spaMapper.java	
    ├── src/main/resources 
    │   	     └──  com/exe/mapper
    │                         └── sourceMapper.xml	
    ├── src/main/webapp
    │            ├── WEB-INF
	│            ├── spring
	│            │	├── appServlet
	│            │	│   └── sevlet-context.xml
	│            │	└── root-context.x2ml
	│            ├── views   
	│            └── web.xml
    └── pom.xml
      
