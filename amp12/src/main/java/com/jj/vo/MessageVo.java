package com.jj.vo;

public class MessageVo {
	
	int idx,room,member;	
	String con,date,file,view;
	
	String name;
	
	//message_room
	int room_idx,room_class;
	String room_title,room_member;
	//view는 db에 저장된 String 형이고 view_count는 db에 없는 몇명이 봤나 안봤나를 계산히기 위한 메서드이다.
	int view_count;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getMember() {
		return member;
	}
	public void setMember(int member) {
		this.member = member;
	}

	public int getRoom() {
		return room;
	}
	public void setRoom(int room) {
		this.room = room;
	}
	public String getCon() {
		return con;
	}
	public void setCon(String con) {
		this.con = con;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getFile() {
		return file;
	}
	public void setFile(String file) {
		this.file = file;
	}
	public String getView() {
		return view;
	}
	public void setView(String view) {
		this.view = view;
	}
	public int getRoom_idx() {
		return room_idx;
	}
	public void setRoom_idx(int room_idx) {
		this.room_idx = room_idx;
	}
	public int getRoom_class() {
		return room_class;
	}
	public void setRoom_class(int room_class) {
		this.room_class = room_class;
	}
	public String getRoom_title() {
		return room_title;
	}
	public void setRoom_title(String room_title) {
		this.room_title = room_title;
	}
	public String getRoom_member() {
		return room_member;
	}
	public void setRoom_member(String room_member) {
		this.room_member = room_member;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	


}
