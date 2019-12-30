package com.happytrip.controllers.dto.flight;

import java.io.Serializable;
import java.text.ParseException;
import java.util.Date;
import java.util.Set;

import javax.validation.Valid;
import javax.validation.constraints.Future;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import com.happytrip.model.Booking;
import com.happytrip.model.FlightClass;
import com.happytrip.model.FlightRoute;
import com.happytrip.model.Passenger;
import com.happytrip.util.StringUtil;

public class BookingDetailDto implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long bookingId;

	@Min(message="Invalid Cost Per Ticket",value=0)
	private float costPerTicket;


	@Future(message="Invalid Date of Journey")
	@NotNull(message="Date of Journey cannot be empty")
	private Date dateOfJourney;

	@Min(value=1,message="Invalid no of seats selected")
	private int noOfSeats;

	
	private FlightClass flightClass;

	private FlightRoute flightRoute;

	private Booking booking;

	private Set<Passenger> passengers;
	
	private boolean isCancelled;

	public boolean isCancelled() {
		return isCancelled;
	}

	public void setCancelled(boolean isCancelled) {
		this.isCancelled = isCancelled;
	}

	public long getBookingId() {
		return bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public float getCostPerTicket() {
		return costPerTicket;
	}

	public void setCostPerTicket(float costPerTicket) {
		this.costPerTicket = costPerTicket;
	}

	public Date getDateOfJourney() {
		return dateOfJourney;
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public int getNoOfSeats() {
		return noOfSeats;
	}

	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}

	public FlightClass getFlightClass() {
		return flightClass;
	}

	public void setFlightClass(FlightClass flightClass) {
		this.flightClass = flightClass;
	}

	public FlightRoute getFlightRoute() {
		return flightRoute;
	}

	public void setFlightRoute(FlightRoute flightRoute) {
		this.flightRoute = flightRoute;
	}

	public Booking getBooking() {
		return booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}

	public Set<Passenger> getPassengers() {
		return passengers;
	}

	public void setPassengers(Set<Passenger> passengers) {
		this.passengers = passengers;
	}

}
