package com.exe.hotel;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.exe.dao.GalleryDAO;
import com.exe.dao.HotelUserDAO;
import com.exe.dao.ReviewDAO;
import com.exe.dto.GalleryDTO;
import com.exe.dto.HotelUserDTO;
import com.exe.dto.LoginDTO;
import com.exe.dto.ReviewDTO;

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
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index() {
		
		return "index";
	}
	
	@RequestMapping(value = "/signup_ok.action",method = {RequestMethod.GET,RequestMethod.POST})
	public String signup_ok(HotelUserDTO dto, HttpServletRequest req, HttpServletResponse res) {
		
		userDao.insertUser(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/signup.action")
	public ModelAndView signUp() {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("signup");
		return mav;
		
	}
	
	//login
	@RequestMapping(value = "/login.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String login(HttpSession session,HttpServletRequest request) {
		String referer =request.getHeader("Referer");
		System.out.println(referer);
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
		System.out.println(redirectURI);
		
		if(dto2==null || !dto2.getUserPwd().equals(userPwd)) {
			
			mav.setViewName("login");
			mav.addObject("message", "아이디 혹은 비밀번호를 정확히 입력하세요");
			
			return mav;
		}
		
		LoginDTO login = new LoginDTO();
		login.setUserId(dto2.getUserId());
		login.setUserName(dto2.getUserName());
		
		session.setAttribute("login", login);
		
		mav.setView(new RedirectView(redirectURI,true));
		
		return mav;
	}
	
	@RequestMapping(value = "/logout.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpServletRequest request, HttpSession session) {
		String referer = request.getHeader("Referer");
		
		session.removeAttribute("login");
		
		return "redirect:"+referer;
	}
	
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
	
	@RequestMapping(value = "/room-list ", method = RequestMethod.GET)
	public String roomList(Locale locale, Model model) {
		
		return "room-list";
	}
	
	@RequestMapping(value = "/room-grid ", method = RequestMethod.GET)
	public String roomGrid(Locale locale, Model model) {
		
		return "room-grid";
	}
	
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
		
		List<ReviewDTO> lists = reviewDao.getReviewList(roomIndex);
		
		mav.addObject("lists",lists);
		mav.addObject("roomIndex",roomIndex);
		mav.addObject("countReview", countReview);
		
		
		return mav;
	}
	
	@RequestMapping(value = "/review.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String review(ReviewDTO dto,HttpServletRequest request) {
		
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		
		dto.setReviewNum(reviewDao.reviewMaxNum()+1);
		dto.setRoomNum(roomIndex);
		
		reviewDao.insertReviewData(dto);
		
		return "redirect:room-details.action?roomIndex="+roomIndex;
	}
	
	@RequestMapping(value = "/review-delete.action ", method = {RequestMethod.GET,RequestMethod.POST})
	public String reviewDelete(HttpSession session,HttpServletRequest request) {
		
		int reviewNum = Integer.parseInt(request.getParameter("reviewNum"));
		
		reviewDao.deleteReviewData(reviewNum);
		
		int roomIndex = Integer.parseInt(request.getParameter("roomIndex"));
		
		return "redirect:room-details.action?roomIndex=" + roomIndex;
	}
	
	@RequestMapping(value = "/booking-step1", method = RequestMethod.GET)
	public String step1(Locale locale, Model model) {
		
		return "booking-step1";
	}
	
	@RequestMapping(value = "/booking-step2", method = RequestMethod.GET)
	public String step2(Locale locale, Model model) {
		
		return "booking-step2";
	}
	
	@RequestMapping(value = "/booking-step3", method = RequestMethod.GET)
	public String step3(Locale locale, Model model) {
		
		return "booking-step3";
	}
	
	@RequestMapping(value = "/confirmation", method = RequestMethod.GET)
	public String confirm(Locale locale, Model model) {
		
		return "confirmation";
	}
	
	@RequestMapping(value = "/about.action", method = RequestMethod.GET)
	public String aboutUs(Locale locale, Model model) {
		
		return "about";
	}
	
	@RequestMapping(value = "/gallery.action", method = RequestMethod.GET)
	public ModelAndView gallery() {
		
		ModelAndView mav = new ModelAndView();
		
		List<GalleryDTO> lists = galleryDao.getList();
		
		mav.setViewName("gallery-3");
		mav.addObject("lists", lists);
		
		return mav;
	}


	@RequestMapping(value = "/galleryUpload.action", method = RequestMethod.GET)
	public String galleryUpload() {
		return "galleryUpload";
	}
	
	
	@RequestMapping(value = "/galleryUpload_ok.action",
			method = {RequestMethod.GET,RequestMethod.POST})
	public String galleryUpload_ok(
			MultipartHttpServletRequest request, 
			HttpServletRequest req,
			String str) {

		
		MultipartFile file = request.getFile("upload");
		
		String galleryName =req.getParameter("galleryName");
		String content = req.getParameter("content");
		String imageName =file.getOriginalFilename();
		
		
		GalleryDTO dto = new GalleryDTO();//db에 집어넣고
		
		int maxNum = galleryDao.getMaxNum();
		
		dto.setGalleryIndex(maxNum + 1);
		dto.setGalleryName(galleryName);
		dto.setContent(content);
		dto.setImageName(imageName);
		
		galleryDao.insertGallery(dto);
		
		//실제경로: D:\sts-bundle\work\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\HotelWebService\gallery
		String path = 
				request.getSession()
				.getServletContext()
				.getRealPath("/gallery"); 

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

	
	@RequestMapping(value = "/service.action", method = RequestMethod.GET)
	public String service(Locale locale, Model model) {
		
		return "service";
	}
	
	
	@RequestMapping(value = "/404", method = RequestMethod.GET)
	public String error(Locale locale, Model model) {
		
		return "404";
	}
	
	@RequestMapping(value = "/contact.action", method = RequestMethod.GET)
	public String contact(Locale locale, Model model) {
		
		return "contact";
	}
	
	@RequestMapping(value = "/pricing.action", method = RequestMethod.GET)
	public String pricing(Locale locale, Model model) {
		
		return "pricing";
	}
	
	@RequestMapping(value = "/kakao.html", method = {RequestMethod.GET,RequestMethod.POST})
	public String kakao(HttpSession session) {
		
		return "kakao";
	}
	
	
}
