package com.exe.dto;

public class RoomDTO {
	
	private int roomIndex;
	private String roomType;
	private int roomSize;
	private int pricePerNight;
	private String roomImage;
	public int getRoomIndex() {
		return roomIndex;
	}
	public void setRoomIndex(int roomIndex) {
		this.roomIndex = roomIndex;
	}
	public String getRoomType() {
		return roomType;
	}
	public void setRoomType(String roomType) {
		this.roomType = roomType;
	}
	public int getRoomSize() {
		return roomSize;
	}
	public void setRoomSize(int roomSize) {
		this.roomSize = roomSize;
	}
	public int getPricePerNight() {
		return pricePerNight;
	}
	public void setPricePerNight(int pricePerNight) {
		this.pricePerNight = pricePerNight;
	}
	public String getRoomImage() {
		return roomImage;
	}
	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}
	
	
}
