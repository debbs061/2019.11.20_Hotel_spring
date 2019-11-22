package com.exe.dto;

public class ReviewDTO {
	
	private int reviewNum;
	private String name;
	private String email;
	private String content;
	private String created;
	private int roomIndex;
	
	
	public int getReviewNum() {
		return reviewNum;
	}
	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCreated() {
		return created;
	}
	public void setCreated(String created) {
		this.created = created;
	}
	public int getRoomNum() {
		return roomIndex;
	}
	public void setRoomNum(int roomIndex) {
		this.roomIndex = roomIndex;
	}
	

}
