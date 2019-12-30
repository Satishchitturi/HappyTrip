package com.happytrip.controllers.dto.flight;

import java.io.Serializable;
import java.util.Set;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;

import com.happytrip.model.Flight;

public class AirlineDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long airlineId;
	
	@NotNull(message="Airline code cannot be Empty")
	@NotBlank(message="Airline code cannot be Empty")
	@Size(max=255,message="Airline code can only be max 255 characters in length")
	private String airlineCode;

	private String airlineLogo;
	
	@NotNull(message="Airline Name cannot be Empty")
	@NotBlank(message="Airline Name cannot be Empty")
	@Size(max=255,message="Airline Name can only be max 255 characters in length")
	@Pattern(regexp = "[a-z-A-Z\\s]*", message = "Airline has invalid characters")
	private String airlineName;
	
	private Set<Flight> flights;

	public long getAirlineId() {
		return airlineId;
	}

	public void setAirlineId(long airlineId) {
		this.airlineId = airlineId;
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

	public Set<Flight> getFlights() {
		return flights;
	}

	public void setFlights(Set<Flight> flights) {
		this.flights = flights;
	}
}
