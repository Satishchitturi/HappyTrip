package com.happytrip.controllers.dto;

import java.util.Set;

import javax.validation.constraints.Max;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.happytrip.model.Flight;

public class JsonAirlineDto {
	
	private static final long serialVersionUID = 1L;

	private long id;
	
	@NotNull(message="Airline code cannot be Empty")
	@NotBlank(message="Airline code cannot be Empty")
	@Size(max=255,message="Airline code can only be max 255 characters in length")
	private String airlineCode;

	private String airlineLogo;
	
	@NotNull(message="Airline Name cannot be Empty")
	@NotBlank(message="Airline Name cannot be Empty")
	@Size(max=255,message="Airline Name can only be max 255 characters in length")
	private String airlineName;
	
	private String errorMessage;


	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getAirlineCode() {
		return airlineCode;
	}

	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}

	public String getAirlineLogo() {
		return airlineLogo;
	}

	public void setAirlineLogo(String airlineLogo) {
		this.airlineLogo = airlineLogo;
	}

	public String getAirlineName() {
		return airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	
}
