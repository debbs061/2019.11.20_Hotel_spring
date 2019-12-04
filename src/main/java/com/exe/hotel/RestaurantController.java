package com.exe.hotel;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.exe.dao.RestaurantDAO;
import com.exe.dto.RestaurantBookingDTO;
import com.exe.dto.RestaurantDTO;

@Controller
public class RestaurantController {
	
	@Autowired
	//@Qualifier("RestaurantDAO")
	RestaurantDAO dao;
	
	//----------------------------------------------------------------------------
	
	//레스토랑 메인
	@RequestMapping(value = "/restaurantMain.action", method = RequestMethod.GET)
	public String restaurantMain() {

		return "restaurantMain";
	}
	
	//레스토랑 디테일페이지 갈때
	@RequestMapping(value = "/res-details.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView resDetails(HttpServletRequest request, HttpServletResponse response) throws Exception {
			
		String resName = request.getParameter("resName");
			
		RestaurantDTO dto = dao.getReadResDetail(resName);
			
		ModelAndView mav = new ModelAndView();
			
		mav.setViewName("res-details");
			
		mav.addObject("dto",dto);
		mav.addObject("resName",resName);

		return mav;
	}
	
	
	//1.메인에서 예약으로 바로 가는 경우
	//레스토랑/날짜/시간/성인/어린이 가지고 들어감
	@RequestMapping(value = "/resBookingMain.action", method = RequestMethod.POST)
	public String resBookingMain(HttpServletRequest request, RedirectAttributes redirect ) {
		
		//메인에서 선택한 값 담고
		String resName = request.getParameter("resName");
		String checkin = request.getParameter("checkin");
		String time = request.getParameter("time");
		String adult = request.getParameter("adult");
		String children = request.getParameter("children");
		
		Map<String, Object> map = new HashMap<String,Object>();
		
		map.put("resName", resName);
		map.put("checkin", checkin);
		map.put("time", time);
		map.put("adult", adult);
		map.put("children", children);
		
		redirect.addFlashAttribute("res", map);
		
		return "redirect:/res-booking.action";
	}
	
	//그리고 디테일에서 예약하기 갈때도 해야함
	
	
	

	
	//예약 페이지로!
	//1.메인에서 오는 경우
	//2.디테일에서 오는 경우
	@RequestMapping(value = "/res-booking.action", method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView resBooking (HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("res-booking");

		return mav;
	}
	
	
	//레스토랑예약완료버튼 누르면  - 예약내용 다 보여줌!
	@RequestMapping(value = "/res-confirm.action", method = {RequestMethod.GET,RequestMethod.POST})
	public String resConfirm(HttpServletRequest request, HttpServletResponse response, RestaurantBookingDTO dto) {
		
		//예약번호 랜덤으로 만들고
		int rNum = (int)(Math.random()*999999+1);
		String resBookNo = String.valueOf(rNum);
		dto.setResBookNo(resBookNo);
		
		dao.insertResBooking(dto);
		
		dao.getReadResBooking(resBookNo);

		return "redirect:/res-confirm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
