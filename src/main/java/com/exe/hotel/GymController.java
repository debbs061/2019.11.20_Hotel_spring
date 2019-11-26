package com.exe.hotel;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.exe.dao.LessonDAO;
import com.exe.dto.LessonDTO;

@Controller
public class GymController {
	
	@Autowired
	@Qualifier("LessonDAO")
	LessonDAO dao;
	
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public ModelAndView indexGym() {
		
		ModelAndView mav = new ModelAndView();
		
		List<LessonDTO> lists = dao.getLessonList();
		
		mav.setViewName("gymIndex");
		mav.addObject("lists", lists);
		
		return mav;
	}
	
	@RequestMapping(value = "/gymList.action", method = RequestMethod.GET)
	public ModelAndView gymList() {
		
		ModelAndView mav = new ModelAndView();
		
		List<LessonDTO> lists = dao.getLessonList();
		
		mav.setViewName("gymList");
		mav.addObject("lists", lists);
		
		return mav;
	}
	
	@RequestMapping(value = "/modal", method = RequestMethod.GET)
	public String modal() {
		
		
		
		return "modal";
	}
}
