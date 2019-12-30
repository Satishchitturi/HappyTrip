package com.happytrip.controllers.dto;

import java.io.Serializable;
import java.util.List;

public class ResponseDto<T extends Object> implements Serializable{

	protected Boolean success;
	protected List<T> messages;

	public ResponseDto(Boolean success) {
		super();
		this.success = success;
	}

	public ResponseDto(Boolean success, List<T> messages) {
		super();
		this.success = success;
		this.messages = messages;
	}

	public Boolean getSuccess() {
		return success;
	}
	public void setSuccess(Boolean success) {
		this.success = success;
	}
	public List<T> getMessages() {
		return messages;
	}
	public void setMessagse(List<T> messages) {
		this.messages = messages;
	}
}