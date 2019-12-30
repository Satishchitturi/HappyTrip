package com.happytrip.controllers.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

public class JsonCityDto {

	private long id;
	@NotNull(message="City Name is mandatory")
	@NotBlank(message="City Name is mandatory")
	@Size(max=255,message="City Name can only be max 255 characters in length")
	@Pattern(regexp = "[a-z-A-Z\\s]*", message = "CityName has invalid characters")
	private String cityName;
	
	private String stateName;
	private long stateId;
	private String errorMessage;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public long getStateId() {
		return stateId;
	}
	public void setStateId(long stateId) {
		this.stateId = stateId;
	}
	public String getErrorMessage() {
		return errorMessage;
	}
	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}
	public String getStateName() {
		return stateName;
	}
	public void setStateName(String stateName) {
		this.stateName = stateName;
	}
	
}
