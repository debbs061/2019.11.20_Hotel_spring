package com.exe.dao;

import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.exe.dto.HotelBookingDTO;

public class HotelBookingDAO {

	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate)
			throws Exception {
		this.sessionTemplate = sessionTemplate;

	} 

	public void insertData(HotelBookingDTO dto){

		sessionTemplate.insert("hotelmapper.insertBookingData",dto);

	}


	public List<HotelBookingDTO> getRoomLists(String checkin, String checkout) {

		HashMap<String, Object> params = 
				new HashMap<String, Object>();


		params.put("checkin", checkin);
		params.put("checkout", checkout);

		List<HotelBookingDTO> lists =
				sessionTemplate
				.selectList("hotelmapper.getReadBookingOut",params);

		return lists; 

	}

	public List<HotelBookingDTO> getLists() {
		List<HotelBookingDTO> lists =  
				sessionTemplate.selectList("hotelmapper.getLists");

		return lists; 

	}

	public int getMaxNum(){

		int maxNum = 0;

		maxNum =
				sessionTemplate.selectOne("hotelmapper.maxHotelNum");

		return maxNum;

	}

	public int getInterval2(String checkin, String checkout){

		HashMap<String, String> params = 
				new HashMap<String, String>();

		params.put("checkin", checkin);
		params.put("checkout", checkout);

		int interval = 
				sessionTemplate.selectOne("hotelmapper.intervalDay2",params);
		return interval;
	}
	
}


































