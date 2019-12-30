package com.happytrip.controllers.dto;


import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import com.happytrip.model.City;
public class ContactDto {
	private long userId;

	@NotNull(message="Address is compulsory")
	@NotBlank(message="Address is compulsory")
	@Size(max=255,message="Address can only be max 255 characters in length")
	private String address;
	@Length(max=10,min=10,message="Invalid Mobile Number")
	private String mobileNo;

	@Length(min=6,max=6,message="Pin code should be 6 digits long.")
	private String pinCode;

	private UserDto user;

	@Valid
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
