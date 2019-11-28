package com.exe.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.exe.dto.RestaurantBookingDTO;
import com.exe.dto.RestaurantDTO;

public class RestaurantDAO {
	
private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
	}
	
	
	//레스토랑 디테일 내용
	public RestaurantDTO getReadResDetail(String resName) {
		
		RestaurantDTO dto = sessionTemplate.selectOne("resmapper.getReadResDetail",resName);
		
		return dto;
	}
	
	//예약인서트
	public void insertResBooking(RestaurantBookingDTO dto) {
		
		sessionTemplate.insert("resmapper.insertResBooking",dto);
	}
	
	//예약셀렉
	public RestaurantBookingDTO getReadResBooking(String resBookNo){
		
		RestaurantBookingDTO dto = 
				sessionTemplate.selectOne("resmapper.getReadResBooking",resBookNo);
		
		return dto;
	}
	
	
	

}
