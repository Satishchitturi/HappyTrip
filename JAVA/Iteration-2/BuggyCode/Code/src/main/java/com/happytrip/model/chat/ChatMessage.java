package com.happytrip.model.chat;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class ChatMessage {

	private ChatUser user;
	private String message;
	private Date postedTime;
	SimpleDateFormat dateFormat;
	public ChatMessage() {
		dateFormat = new SimpleDateFormat("HH:mm:ss a");
	}
	
	
	public ChatMessage(ChatUser user, String message, Date postedTime) {
		super();
		dateFormat = new SimpleDateFormat("HH:mm:ss a");
		this.user = user;
		this.message = message;
		this.postedTime = postedTime;
	}


	public ChatUser getUser() {
		return user;
	}

	public void setUser(ChatUser user) {
		this.user = user;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getPostedTime() {

		return dateFormat.format(postedTime);
	}

	public void setPostedTime(Date postedTime) {
		this.postedTime = postedTime;
	}

}
