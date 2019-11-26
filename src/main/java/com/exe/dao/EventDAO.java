package com.exe.dao;


import java.util.HashMap;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;

import com.exe.dto.EventDTO;

public class EventDAO {
	
	private SqlSessionTemplate sessionTemplate;

	public void setSessionTemplate(SqlSessionTemplate sessionTemplate) throws Exception{
		this.sessionTemplate = sessionTemplate;
	}
	
	public List<EventDTO> getEventList(){

		List<EventDTO> lists = sessionTemplate.selectList("eventmapper.getEventLists");
	
		return lists;
	}

	public int getMaxNum(){

		int maxNum = 0;
		
		maxNum = sessionTemplate.selectOne("eventmapper.maxNum");
		
		return maxNum;
	}

	public void insertEvent(EventDTO dto){

		sessionTemplate.insert("eventmapper.insertEvent",dto);
	}

	public int getEventCount(){

		HashMap<String, Object> params = new HashMap<String, Object>();
		
		int result = sessionTemplate.selectOne("eventmapper.getEventCount",params);
		
		return result;
	}

	public EventDTO getReadEventData(int eventIndex){
		
		EventDTO dto = sessionTemplate.selectOne("eventmapper.getReadEventData",eventIndex);
		
		return dto;
	}

	public void deleteEventData(int eventIndex){

		sessionTemplate.update("eventmapper.deleteData", eventIndex);
	}

	public void updateEventData(EventDTO dto){
		
		sessionTemplate.update("eventmapper.updateData",dto);
	}
}
