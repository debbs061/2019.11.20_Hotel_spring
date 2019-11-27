package com.exe.hotel;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exe.dao.LessonDAO;
import com.exe.dao.LessonUserDAO;
import com.exe.dto.LessonDTO;
import com.exe.dto.LessonUserDTO;
import com.exe.dto.LoginDTO;

@Controller
public class GymController {
	
	@Autowired
	@Qualifier("LessonDAO")
	LessonDAO dao;
	
	@Autowired
	@Qualifier("LessonUserDAO")
	LessonUserDAO dao2;
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public ModelAndView indexGym() {
		
		ModelAndView mav = new ModelAndView();
		
		List<LessonDTO> lists = dao.getLessonList();
		
		mav.setViewName("gymIndex");
		mav.addObject("lists", lists);
		
		return mav;
	}
	
	@RequestMapping(value = "/gymList.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView gymList(HttpServletRequest request,HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		List<LessonDTO> lists = dao.getLessonList();
		
		
		if(session.getAttribute("login")==null) {

			String referer = request.getHeader("Referer");	//�젒�냽 寃쎈줈
			request.getSession().setAttribute("redirectURI", referer);

			mav.setViewName("login");
			return mav;
			
		}		

		
		mav.setViewName("gymList");
		
		mav.addObject("lists", lists);
		mav.addObject("userId",session.getAttribute("userId"));
		mav.addObject("userName",session.getAttribute("userName"));
		mav.addObject("userEmail",session.getAttribute("userEmail"));
		
		return mav;
		
	}
	
	@RequestMapping(value = "/gymList_ok.action", method = RequestMethod.POST)
	public String gymList_ok(HttpServletRequest request,LessonUserDTO dto) {
		
		
		dto.setLessonUserIndex(dao2.lessonGetMaxNum() + 1);
		
		dao2.insertLessonUser(dto);
		
		return "redirect:/gymCheck.action"; 
	}
	
	@RequestMapping(value = "/gymCheck.action", method = {RequestMethod.POST,RequestMethod.GET})
	public ModelAndView gymCheck(HttpServletRequest request,LessonUserDTO dto,HttpSession session) {
		
		ModelAndView mav = new ModelAndView();
		
		LoginDTO login = (LoginDTO)session.getAttribute("login");
		
		List<LessonUserDTO> lists = dao2.lessonGetList(login.getUserId());
			
		mav.addObject("message", "등록된 강좌가 없습니다");
		
		mav.addObject("lists", lists);
		
		mav.setViewName("gymCheck");
		
		return mav;
	}
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal() {
		
		
		return "modal";
	}
}
