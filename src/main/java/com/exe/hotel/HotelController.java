package com.exe.hotel;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.SimpleEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.exe.dao.EventDAO;
import com.exe.dao.EventReviewDAO;
import com.exe.dao.GalleryDAO;
import com.exe.dao.HotelBookingDAO;
import com.exe.dao.HotelUserDAO;
import com.exe.dao.ReviewDAO;
import com.exe.dao.RoomDAO;
import com.exe.dto.EventBookingDTO;
import com.exe.dto.EventDTO;
import com.exe.dto.EventReviewDTO;
import com.exe.dto.GalleryDTO;
import com.exe.dto.HotelBookingDTO;
import com.exe.dto.HotelUserDTO;
import com.exe.dto.LoginDTO;
import com.exe.dto.ReviewDTO;
import com.exe.dto.RoomDTO;

@Controller
public class HotelController {
	
	@Autowired
	@Qualifier("hotelUserDAO")
	HotelUserDAO userDao;
	
	@Autowired
	@Qualifier("galleryDAO")
	GalleryDAO galleryDao;
	
	@Autowired
	@Qualifier("reviewDAO")
	ReviewDAO reviewDao;
	
	@Autowired
	@Qualifier("eventDAO")
	EventDAO eventDao;
	
	@Autowired
	@Qualifier("eventReviewDAO")
	EventReviewDAO eventReviewDAO;
	
	
	@Autowired
	RoomDAO rdao;

	@Autowired
	HotelBookingDAO hdao;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(HttpServletRequest request) {

		List<GalleryDTO> lists= galleryDao.getList();
		
		request.setAttribute("lists",lists );
		
		return "index";
	}
	
	@RequestMapping(value = "/indexImage", method = RequestMethod.GET)
	public String indexImage(HttpServletRequest request) {

		return "indexImage";
	}
	
	
	//회원가입
	@RequestMapping(value = "/signup.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView signUp() {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("signup");
		
		return mav;
	}
	
	// 데이터 인서트하고 완료되었다는 페이지로 가는거
	@RequestMapping(value = "/signup_ok.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String signup_ok(HotelUserDTO dto, HttpServletRequest req, HttpServletResponse res) {

		userDao.insertUser(dto);

		return "redirect:/signupOk.action";
	}

	// 가입 완료되었다고 보여주는 메세지- 로그인버튼 있음
	@RequestMapping(value = "/signupOk.action", method = { RequestMethod.GET, RequestMethod.POST })
	public String signupOk(HttpSession session) {

		return "signupOk";
	}

	//로그인
	@RequestMapping(value = "/login.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String login(HttpSession session,HttpServletRequest request) {
		
		String referer = request.getHeader("Referer");	//접속 경로
		
		request.getSession().setAttribute("redirectURI", referer);
		
		return "login";
	}
	
	@RequestMapping(value = "/login_ok.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView login_ok(HotelUserDTO dto,HttpServletRequest request,HttpSession session) {
		
		String userId = dto.getUserId();
		String userPwd = dto.getUserPwd();
		
		ModelAndView mav = new ModelAndView();
		
		HotelUserDTO dto2 = userDao.getReadUserData(userId);
		
		String redirectURI = (String)session.getAttribute("redirectURI");
		//System.out.println(redirectURI);
		
		if(dto2==null || !dto2.getUserPwd().equals(userPwd)) {
			
			mav.setViewName("login");
			mav.addObject("message", "아이디 혹은 비밀번호를 정확히 입력하세요");
			
			return mav;
		}
		
		LoginDTO login = new LoginDTO();
		
		login.setUserId(dto2.getUserId());
		login.setUserName(dto2.getUserName());
		login.setUserEmail(dto2.getEmail());
		login.setTel(dto2.getTel());
		login.setBirth(dto2.getBirth());
		login.setAddr(dto2.getAddr());
		
		session.setAttribute("login", login);
		
		mav.setView(new RedirectView(redirectURI,true));
		
		return mav;
	}
	
	//로그아웃
	@RequestMapping(value = "/logout.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpServletRequest request, HttpSession session) {
		
		String referer = request.getHeader("Referer");	//접속 경로
		
		session.removeAttribute("login");
		
		return "redirect:" + referer;
	}

	//비밀번호 찾기
	@RequestMapping(value = "/searchPwd.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String searchPwd() {
		
		return "searchPwd";
	}
	
	@RequestMapping(value = "/searchPwd_ok.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView searchPwd_ok(HotelUserDTO dto) {
		
		ModelAndView mav = new ModelAndView();
		
		String userId = dto.getUserId();
		String userTel = dto.getTel();
		
		HotelUserDTO dto2 = userDao.getReadUserData(userId);
		
		mav.setViewName("login");
		
		if (dto==null || !dto2.getTel().equals(userTel)) {
			
			mav.addObject("message", "일치하는 정보가 없습니다.");
			
			return mav;
		}
		
		mav.addObject("message", "비밀번호는 ["+dto2.getUserPwd() + "] 입니다.");
		
		return mav;
	}

	//About Us
	@RequestMapping(value = "/about.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String about() {
		
		return "about";
	}
	
	//Services
	@RequestMapping(value = "/service.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String service() {
		
		return "service";
	}
	
	//Gallery(이미지 게시판)
	@RequestMapping(value = "/gallery.action", method = RequestMethod.GET)
	public ModelAndView gallery() {
		
		ModelAndView mav = new ModelAndView();
		
		List<GalleryDTO> lists = galleryDao.getList();
		
		mav.setViewName("gallery-3");
		mav.addObject("lists", lists);
		
		return mav;
	}

	//이미지 등록
	@RequestMapping(value = "/galleryUpload.action", method = RequestMethod.GET)
	public String galleryUpload() {
		
		return "galleryUpload";
	}
	
	@RequestMapping(value = "/galleryUpload_ok.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String galleryUpload_ok(
			MultipartHttpServletRequest request, 
			HttpServletRequest req,
			String str) {
		
		MultipartFile file = request.getFile("upload");
		
		String galleryName = req.getParameter("galleryName");
		String content = req.getParameter("content");
		String imageName = file.getOriginalFilename();
		
		GalleryDTO dto = new GalleryDTO();	//db에 집어넣고
		
		int maxNum = galleryDao.getMaxNum();
		
		dto.setGalleryIndex(maxNum + 1);
		dto.setGalleryName(galleryName);
		dto.setContent(content);
		dto.setImageName(imageName);
		
		galleryDao.insertGallery(dto);
		
		//실제경로: D:\sts-bundle\work\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HotelWebService\gallery
		
		/*
		 * String path = request.getSession() .getServletContext()
		 * .getRealPath("/gallery");
		 */
		
		Path path = Paths.get("D:\\sts-bundle\\work\\HotelWebService\\src\\main\\webapp\\resources\\images\\gallery");
		
		if(file!=null&&file.getSize()>0) { //파일이 있으면

			try {

				FileOutputStream fos =
						new FileOutputStream(path +
								"/" + file.getOriginalFilename());
				InputStream is = file.getInputStream();

				byte[] buffer = new byte[512];

				while(true) {
					
					int data = is.read(buffer,0,buffer.length);

					if(data==-1) { 
						break; 
					}
					fos.write(buffer,0,data);  
				}
				is.close();
				fos.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		return "redirect:/gallery.action";
	}

	//가격 정보
	@RequestMapping(value = "/pricing.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String pricing() {
		
		return "pricing";
	}

	//객실 정보 리스트
	@RequestMapping(value = "/room-grid.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String roomgrid() {
		
		return "room-grid";
	}
	
	//객실 상세정보
	@RequestMapping(value = "/room-details.action ", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView roomDetails(HttpSession session,HttpServletRequest request) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("room-details");
		
		LoginDTO login = (LoginDTO)session.getAttribute("login");
		if(login!=null) {
			HotelUserDTO dto = userDao.getReadUserData(login.getUserId());
			mav.addObject("userDTO", dto);
		}
		
		if(request.getParameter("roomIndex")==null) {
			
			mav.setViewName("404");
			return mav;
		}
		
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		int countReview = reviewDao.countReview(roomIndex);
		
		RoomDTO dto = rdao.getReadRoomData(roomIndex);
		
		// *****************************************************************************
		// review 테이블에 접근하여 review 정보 가지고 오기 ( 합칠 때 리뷰는 이 부분에 넣어야 함)
		// ******************************************************************************


		mav.setViewName("room-details");
		mav.addObject("dto",dto); // 해당 룸 객체 넘김

		//사용자가 입력한 정보 담기
		mav.addObject("checkin", request.getParameter("checkin"));
		mav.addObject("checkout", request.getParameter("checkout"));
		mav.addObject("adult", request.getParameter("adult"));
		mav.addObject("children", request.getParameter("children"));
		
		List<ReviewDTO> lists = reviewDao.getReviewList(roomIndex);
		
		mav.addObject("lists",lists);
		mav.addObject("roomIndex",roomIndex);
		mav.addObject("countReview", countReview);
		
		return mav;
	}
	
	@RequestMapping(value = "/room-details_ok.action", 		
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomDetails_ok(HttpServletRequest request,
			HttpServletResponse response,
			@RequestParam(value="arrList[]") List<Integer> deleteList,
			@RequestParam(value="pricePerNight") int pricePerNight )

	{
		HttpSession session = request.getSession();

		ModelAndView mav = new ModelAndView();		
		int total=0;


		ArrayList<Integer> deleteArray = new ArrayList<Integer>();
		for(int i=0;i<deleteList.size();i++){
			deleteArray.add(deleteList.get(i));
		}    

		for(int data:deleteArray) {
			total +=data;
		}		

		mav.setViewName("room-details_ok");		

		mav.addObject("arr", total+pricePerNight);

		session.setAttribute("total",total+pricePerNight); 

		return mav;
	}
	
	//Room-details안 review
	@RequestMapping(value = "/review.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String review(ReviewDTO dto,HttpServletRequest request) {
		
		String referer = request.getHeader("Referer");
		
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		
		dto.setReviewNum(reviewDao.reviewMaxNum()+1);
		dto.setRoomNum(roomIndex);
		
		reviewDao.insertReviewData(dto);
		
		return "redirect:"+referer;
	}
	
	//Room-details안 review 삭제
	@RequestMapping(value = "/review-delete.action ", method = {RequestMethod.GET,RequestMethod.POST})
	public String reviewDelete(HttpSession session,HttpServletRequest request) {
		String referer = request.getHeader("Referer");
		
		int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		
		reviewDao.deleteReviewData(reviewNum);
		
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		
		return "redirect:"+referer;
	}
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String error() {
		
		return "404";
	}
	
	//이벤트 리스트
	@RequestMapping(value = "/event-grid.action", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView eventgrid() throws Exception {

		ModelAndView mav = new ModelAndView();
		
		List<EventDTO> lists = eventDao.getEventList();
		
		mav.setViewName("event-grid");
		mav.addObject("lists", lists);

		return mav;
	}

	//이벤트 상세정보
	@RequestMapping(value = "/event-single.action", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView eventsingle(
			HttpServletRequest request) throws Exception{
			
		//인덱스 번호 받내고, 1개의 데이터 뽑아내서 >> event-single로 넘겨주기 
		ModelAndView mav = new ModelAndView();
		
		int eventIndex = Integer.parseInt(request.getParameter("eventIndex"));
		
		EventDTO dto = eventDao.getReadEventData(eventIndex);//eventIndex에 해당하는 하나의 데이터 뽑아내고
		
		mav.setViewName("event-single");
		mav.addObject("dto",dto);
		
		//이벤트 관련 리뷰 처리
		int countReview = eventReviewDAO.countReview(eventIndex);
		
		List<EventReviewDTO> lists = eventReviewDAO.getReviewList(eventIndex);
		
		mav.addObject("lists",lists);
		mav.addObject("eventIndex",eventIndex);
		mav.addObject("countReview", countReview);
			
		return mav;		
	}

	//이벤트 등록
	@RequestMapping(value = "/event-upload.action", method= {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView eventupload() {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("event-upload"); //event-upload.jsp 창에띄어주고

		return mav;
	}
		
	@RequestMapping(value = "/event-upload_ok.action", method= {RequestMethod.GET,RequestMethod.POST})
	public String eventupload_ok(EventDTO dto, //dto로 이벤트 업로드 관련 데이터가 넘어온다.
			MultipartHttpServletRequest request, 
			HttpServletResponse response, String str) {

		MultipartFile file = request.getFile("eventUpload");
		
		//넘어오는 날짜 형식 맞춰주기
		String day = dto.getDay();
		String a[] = day.split("-");
			
		if (a[1].charAt(0)=='0') {
			a[1] = a[1].substring(1);
		}
			
		if (a[2].charAt(0)=='0') {
			a[2] = a[2].substring(1);
		}
		
		day = a[1] + "-" + a[2];	
			
		dto.setEventIndex(eventDao.getMaxNum() +1);
		dto.setDay(day);
		dto.setSavefileName( file.getOriginalFilename());

		eventDao.insertEvent(dto);

		Path path = Paths.get("D:\\sts-bundle\\work\\HotelWebService\\src\\main\\webapp\\resources\\images\\event");

		if(file!=null&&file.getSize()>0) { 

			try {
				
				FileOutputStream fos =
						new FileOutputStream(path+ 
								"/" + file.getOriginalFilename());

				InputStream is = file.getInputStream();

				byte[] buffer = new byte[512];

				while(true) {

					int data = is.read(buffer,0,buffer.length);

					if(data==-1) {
						break;
					}
					
					fos.write(buffer,0,data);
				}
				
				is.close();
				fos.close();
			} catch (Exception e) {
				System.out.println(e.toString());
			}
		}
		return "redirect:/event-grid.action";
	}

	//이벤트 리뷰
	@RequestMapping(value = "/eventReview.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String eventReview(EventReviewDTO dto,HttpServletRequest request) {
			
		dto.setEventReviewNum(eventReviewDAO.reviewMaxNum()+1); //EventReviewNum 순서대로 증가시키기
		
		eventReviewDAO.insertReviewData(dto);
		
		return "redirect:event-single.action?eventIndex="+dto.getEventIndex();
	}
	
	//이벤트 리뷰 삭제
	@RequestMapping(value = "/eventReview-delete.action ", method = {RequestMethod.GET,RequestMethod.POST})
	public String eventReviewDelete(HttpSession session,HttpServletRequest request) {
			
		int eventReviewNum = Integer.parseInt(request.getParameter("eventReviewNum"));
		
		eventReviewDAO.deleteReviewData(eventReviewNum);
		
		int eventIndex = Integer.parseInt(request.getParameter("eventIndex"));
		
		return "redirect:event-single.action?eventIndex=" + eventIndex;
	}

	//문의하기
	@RequestMapping(value = "/contact.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String contact() {
		
		return "contact";
	}
	
	
	
	@RequestMapping(value = "/booking-step1.action", 		
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView bookingStep1(HttpServletRequest req,
			HttpServletResponse response,Model model) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("booking-step1");	

		mav.addObject("checkin", req.getParameter("checkin"));
		mav.addObject("checkout", req.getParameter("checkout"));
		mav.addObject("adult", req.getParameter("adult"));
		mav.addObject("children", req.getParameter("children"));

		return mav;
	}
	
	@RequestMapping(value = "/booking-step2.action", 		
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView bookingStep2(HttpServletRequest request,
			HttpServletResponse response) {

		int total =0;
		HttpSession session = request.getSession();

		if(session.getAttribute("total")!=null) {			
			total = (Integer)session.getAttribute("total");
		}

		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");	     

		// 날짜변환
		String dates[] = checkin.split("/"); 
		checkin = dates[2]+"/"+dates[0]+"/"+dates[1]; 

		String dates2[] = checkout.split("/");
		checkout = dates2[2]+"/"+dates2[0]+"/"+dates2[1];

		int interval = hdao.getInterval2(checkin,checkout);	     

		int optionTotal = interval *  total;	

		String [] optionList = request.getParameterValues("optionList2");
		ModelAndView mav = new ModelAndView();

		mav.setViewName("booking-step2");

		//룸 정보
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		RoomDTO dto = rdao.getReadRoomData(roomIndex);

		//사용자가 입력한 정보 그대로 담기
		mav.addObject("checkin", request.getParameter("checkin"));
		mav.addObject("checkout", request.getParameter("checkout"));
		mav.addObject("adult", request.getParameter("adult"));
		mav.addObject("children", request.getParameter("children"));
		mav.addObject("total", optionTotal);
		mav.addObject("optionList", optionList[0]);	
		mav.addObject("interval", interval);
		request.setAttribute("total", optionTotal);		

		// 사용자가 예약 선택한 roomIndex
		mav.addObject("roomIndex", roomIndex);	
		mav.addObject("roomType", request.getParameter("roomType"));	

		//룸정보
		mav.addObject("dto", dto);

		return mav;
	}
	
	@RequestMapping(value = "/booking-step2_ok.action", 		
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView bookingStep2ok(HttpServletRequest request,
			HttpServletResponse response) {

		ModelAndView mav = new ModelAndView();
		mav.setViewName("booking-step2_ok");		
		return mav;	

	}
	
	/*
	 * @RequestMapping(value = "/booking-step3.action", method =
	 * {RequestMethod.GET,RequestMethod.POST}) public String bookingstep3() {
	 * 
	 * return "booking-step3"; }
	 */
	
	// 결제 완료 페이지
	@RequestMapping(value = "/confirmation.action", 		
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView confirmation(HttpServletRequest request,
			HttpServletResponse response,HotelBookingDTO dto) {

		HttpSession session = request.getSession();
		ModelAndView mav = new ModelAndView();

		if(session.getAttribute("login")==null) {

			String referer = request.getHeader("Referer");	//접속 경로
			request.getSession().setAttribute("redirectURI", referer);

			mav.setViewName("login");
			return mav;
		}		

		mav.setViewName("confirmation");

		// hotelbooking 테이블에 insert
		int bookingNum = hdao.getMaxNum();	    

		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");

		// 날짜변환
		String dates[] = dto.getCheckin().split("/");       
		checkin = dates[2]+"/"+dates[0]+"/"+dates[1]; 

		String dates2[] = dto.getCheckout().split("/");
		checkout = dates2[2]+"/"+dates2[0]+"/"+dates2[1];

		dto.setBookingMessage(request.getParameter("bookingMessage"));
		dto.setCheckin(checkin);
		dto.setCheckout(checkout);
		dto.setBookingId(bookingNum+1); // 고유값 
		hdao.insertData(dto);

		// 예약정보 (hotelBookingDTO)
		mav.addObject("dto", dto);
		mav.addObject("total", request.getParameter("total"));

		return mav;	
	}
	
	@RequestMapping(value="/room-list.action", 
			method= {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView roomList(HttpServletRequest request,
			HttpServletResponse response, Model model) {

		String checkin = request.getParameter("checkin");
		String checkout = request.getParameter("checkout");
		ModelAndView mav = new ModelAndView();

		// 1. hotelBooking 테이블 접근
		List<HotelBookingDTO> lists =	
				hdao.getRoomLists(checkin, checkout);

		// 2. lists 안의 roomIndex 가져오기
		int[] roomIndex = new int[6]; 
		if(!lists.isEmpty()) {

			Iterator<HotelBookingDTO> it = lists.iterator();
			int i=0;
			while(it.hasNext()) {
				HotelBookingDTO dto = it.next();
				roomIndex[i] = dto.getRoomIndex(); 
				i++;
			}
		}   

		// 3.  예약 안된 roomIndex를 가지고 room테이블에 접근, select							
		List<RoomDTO> lists2 = rdao.getRoomLists(roomIndex);

		mav.setViewName("room-list");
		mav.addObject("lists", lists2);
		//사용자가 입력한 정보 담기
		mav.addObject("checkin", checkin);
		mav.addObject("checkout", checkout);
		mav.addObject("adult", request.getParameter("adult"));
		mav.addObject("children", request.getParameter("children"));

		return mav;
	}
	
	
	//index에서 검색했을때 form에 담아서 booking-step1으로
	@RequestMapping(value = "/hotelSearch.action", method = RequestMethod.POST)
	public String hotelSearch(HttpServletRequest req) {

		String checkin = req.getParameter("checkin");
		String checkout = req.getParameter("checkout");
		String adult =  req.getParameter("adult");
		String children =  req.getParameter("children");

		return "redirect:/booking-step1.action?checkin="+checkin
				+"&checkout="+checkout+"&adult="+adult+"&children="+children;

	}
	
	//문의 메일 보내기
	@RequestMapping(value = "/mailSending.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String mailSending(HttpServletRequest req) throws Exception {

        SimpleEmail email = new SimpleEmail();
        
		String userEmail = req.getParameter("userEmail");	//보내는 사람 이메일
		String userSubject = req.getParameter("userSubject"); //제목
		String userMessage = req.getParameter("userMessage"); //내용

        email.setCharset("UTF-8");      //한글처리
        email.setHostName("localhost"); //SMTP (보내는 메일서버) 세팅
        email.setSmtpPort(25);   //원래 25번이 SMTP 포트

        email.setFrom(userEmail);
        email.addTo("xh2967@naver.com");	//받는 사람 이메일
        email.setSubject(userSubject);
        email.setMsg(userMessage);
        
        email.send();
        
        return "index";
    }
	
	@RequestMapping(value = "/restaurantMain.action", method = RequestMethod.GET)
	public String restaurantMain() {

		return "restaurantMain";
	}
	
	
	@RequestMapping(value = "/restaurantConfirm.action", method = RequestMethod.GET)
	public String restaurantConfirm() {

		return "restaurantConfirm";
	}
	
	@RequestMapping(value = "/myeong-details.action", method = RequestMethod.GET)
	public String myeongDetails() {

		return "myeong-details";
	}
	
	

	//event-request.action
		@RequestMapping(value = "/event-request.action", 		
				method= {RequestMethod.GET, RequestMethod.POST})
		public ModelAndView eventRequest(HttpServletRequest request,
				HttpServletResponse response, Model model) {
			
			ModelAndView mav = new ModelAndView();
		
			//1. 이벤트 신청 값 받아내고 
			String userId = request.getParameter("eventUserId");
			String userName = request.getParameter("eventUserName");
			String userRequest  = request.getParameter("eventUserRequest");
			int eventIndex =Integer.parseInt(request.getParameter("eventIndex"));	
			
			//1.아이디+이벤트인덱스로 예약된 내역이 있는지 조회
			EventBookingDTO dto = eventDao.getReadEventBookingData(userId, eventIndex);
			
			if(dto!=null&&!dto.equals(" ")) {
				
				mav.setViewName("event-request-confirmed");
				mav.addObject("dto",dto);
				mav.addObject("message","이벤트 예약건이 이미 이미존재합니다");
			
				return mav;	
				
			}
			
			//2처음 예약을 할 경우
			EventBookingDTO ebdto = new EventBookingDTO();
			
			ebdto.setEventBookingNum(eventDao.getBookingMaxNum()+1);
			ebdto.setUserId(userId);
			ebdto.setUserName(userName);
			ebdto.setUserRequest(userRequest);
			ebdto.setEventIndex(eventIndex);
			eventDao.insertEventBooking(ebdto);
			
			EventBookingDTO dto2 = eventDao.getReadEventBookingData(userId, eventIndex);
			
			//4.해당 내용 띄우기 출력 jsp로 넘겨주기
			mav.setViewName("event-request-confirmed");
			mav.addObject("dto",dto2);
		
			return mav;			

		}

		//event-booking-delete.action
		@RequestMapping(value = "/event-booking-delete.action", 		
				method= {RequestMethod.GET, RequestMethod.POST})
		public String eventBookingDelete(HttpServletRequest request) {
			
			System.out.println("들어옴");
			
			String referer = request.getHeader("Referer");	//접속 경로
			
			int eventBookingNum= Integer.parseInt(request.getParameter("eventBookingNum"));
			System.out.println("eventBookingNum:"+eventBookingNum);
			eventDao.deleteEventBookingData(eventBookingNum);
			
			return "redirect:" + referer;
			
		}
		
		@RequestMapping(value = "/myPage.action", method = {RequestMethod.GET,RequestMethod.POST})
		public String myPage() {
			
			return "myPage";
		}
	
		
		//이벤트 체크
		//eventCheck.action
		
		@RequestMapping(value = "/eventCheck.action", method = {RequestMethod.GET,RequestMethod.POST})
		public ModelAndView eventCheck(
				HttpServletRequest request,
				HttpSession session) {
			
			ModelAndView mav  = new ModelAndView();
			
			// 세션을 가져온다. (가져올 세션이 없다면 생성한다.)
			
			 
			// "USER"로 바인딩된 객체를 돌려준다. ("USER"로 바인딩된 객체가 없다면 null)
			LoginDTO login = (LoginDTO)session.getAttribute("login");
		
			String userId = login.getUserId();
			
			
			
			System.out.println("userId: " +userId);
			
			if(login!= null) {
			 
			    // 사용자 정보를 가져올 수 있다.
				login.getUserId(); // hong
				login.getUserName(); // 홍길동
				
				 userId = login.getUserId();
				System.out.println("userId: " +userId);
			}
			
		
			//1.이벤트 참가자이름 : username
			//2.이벤트 날짜: event - day
			//3.이벤틀 이름: event = eventTtle 
			
			//리스트 이벤트 디티오 
			
			List<EventDTO> lists = eventDao.getEventListsByUserId(userId);
			
			mav.addObject("elists",lists);
			mav.setViewName("eventCheck");
			
			
			return mav;
		}
		
	
	



}
