package com.exe.hotel;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
	public ModelAndView gymList(HttpServletRequest request) {
		
		
		ModelAndView mav = new ModelAndView();
		
		List<LessonDTO> lists = dao.getLessonList();
		
		
		mav.setViewName("gymList");
		mav.addObject("lists", lists);
		
		
		return mav;
	}
	
	@RequestMapping(value = "/gymList_ok.action", method = RequestMethod.POST)
	public String gymList_ok(HttpServletRequest request,LessonUserDTO dto) {
		
		dto.setLessonUserIndex(dao2.lessonGetMaxNum() +1 );
		dao2.insertLessonUser(dto);
		
		return "redirect:/gym.action"; 
	}
	
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal() {
		
		
		return "modal";
	}
}
