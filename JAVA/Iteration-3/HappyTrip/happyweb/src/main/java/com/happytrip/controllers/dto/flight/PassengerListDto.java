package com.happytrip.controllers.dto.flight;

import java.util.ArrayList;
import java.util.List;

import com.happytrip.model.Passenger;

public class PassengerListDto {

	private List<Passenger> passengers = new ArrayList<Passenger>();
	private String mobileNumber;
	private boolean insured = false;
	
	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public List<Passenger> getPassengers() {
		return passengers;
	}

	public void setPassengers(List<Passenger> passengers) {
		this.passengers = passengers;
	}

	public boolean isInsured() {
		return insured;
	}

	public void setInsured(boolean insured) {
		this.insured = insured;
	}
	
}
