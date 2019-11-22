package com.exe.dto;

public class HotelBookingDTO {
	private String bookingId;
	private String userId;
	private int roomIndex;
	private String checkin;
	private String checkout;
	private int adult;
	private int child;
	private int option;
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRoomIndex() {
		return roomIndex;
	}
	public void setRoomIndex(int roomIndex) {
		this.roomIndex = roomIndex;
	}
	public String getCheckin() {
		return checkin;
	}
	public void setCheckin(String checkin) {
		this.checkin = checkin;
	}
	public String getCheckout() {
		return checkout;
	}
	public void setCheckout(String checkout) {
		this.checkout = checkout;
	}
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChild() {
		return child;
	}
	public void setChild(int child) {
		this.child = child;
	}
	public int getOption() {
		return option;
	}
	public void setOption(int option) {
		this.option = option;
	}
	
	
}
