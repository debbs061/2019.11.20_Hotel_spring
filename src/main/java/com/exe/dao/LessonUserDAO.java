package com.exe.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.exe.dto.LessonUserDTO;

public class LessonUserDAO {
	
private SqlSessionTemplate sessionTemplate;
	
	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		
		this.sessionTemplate = sessionTemplate;
	}
	
	public void insertLessonUser(LessonUserDTO dto) {
		
		sessionTemplate.insert("lessonusermapper.insertLessonUser",dto);
		
	}
	
	public int lessonGetMaxNum() {
		
		
		
		return sessionTemplate.selectOne("lessonusermapper.lessonGetMaxNum");
		
	}
	
	
	
	
}