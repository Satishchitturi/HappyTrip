package com.happytrip.controllers.dto;

import java.io.Serializable;

import com.happytrip.model.City;

public class ContactDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long userId;

	private String address;

	private String mobileNo;

	private String pinCode;

	private UserDto user;

	private City city;

	public long getUserId() {
		return userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileNo() {
		return mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPinCode() {
		return pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public UserDto getUser() {
		return user;
	}

	public void setUser(UserDto user) {
		this.user = user;
	}

	public City getCity() {
		return city;
	}

	public void setCity(City city) {
		this.city = city;
	}
}
