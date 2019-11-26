package com.exe.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.exe.dto.HotelUserDTO;

public class HotelUserDAO {
	
private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
	}
	
	public void insertUser(HotelUserDTO dto) {
		
		sessionTemplate.insert("hotelmapper.insertUser", dto);
	}
	
	public HotelUserDTO getReadUserData(String userId) {
		
		HotelUserDTO dto = sessionTemplate.selectOne("hotelmapper.getReadUserData",userId);
		
		return dto;
	}
}
