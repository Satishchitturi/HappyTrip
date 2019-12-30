package com.happytrip.model.chat;

public class ChatUser {

	private String nickName;
	private long loggedin;
	
	
	public ChatUser(String nickName, long loggedin) {
		super();
		this.nickName = nickName;
		this.loggedin = loggedin;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public long getLoggedin() {
		return loggedin;
	}
	public void setLoggedin(long loggedin) {
		this.loggedin = loggedin;
	}
	@Override
	public String toString() {
		return "User [nickName=" + nickName + ", loggedin=" + loggedin + "]";
	}
	
	
	
}
