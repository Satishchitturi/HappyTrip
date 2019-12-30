package com.happytrip.controllers.dto.flight;

import com.happytrip.model.FlightBooking;

public class FlightBookingDto {
	private FlightBooking outboundFlightBooking;
	private FlightBooking returnFlightBooking;
	private String referenceNumber;
	
	public FlightBooking getOutboundFlightBooking() {
		return outboundFlightBooking;
	}
	public void setOutboundFlightBooking(FlightBooking outboundFlightBooking) {
		this.outboundFlightBooking = outboundFlightBooking;
	}
	public FlightBooking getReturnFlightBooking() {
		return returnFlightBooking;
	}
	public void setReturnFlightBooking(FlightBooking returnFlightBooking) {
		this.returnFlightBooking = returnFlightBooking;
	}
	public String getReferenceNumber() {
		return referenceNumber;
	}
	public void setReferenceNumber(String referenceNumber) {
		this.referenceNumber = referenceNumber;
	}
}
