package com.exe.dto;

public class RestaurantBookingDTO {
	
	//레스토랑이름/날짜/시간/성인/어린이/이름/연락처/이메일/요청사항/예약번호
	
	private String resName;
	private String checkin;
	private String time;
	private int adult;
	private int children;
	private String name;
	private String phone;
	private String email;
	private String comments;
	private String resBookNo;
	
	public String getResName() {
		return resName;
	}
	public void setResName(String resName) {
		this.resName = resName;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getResBookNo() {
		return resBookNo;
	}
	public void setResBookNo(String resBookNo) {
		this.resBookNo = resBookNo;
	}
	
	
	
	
	

}
