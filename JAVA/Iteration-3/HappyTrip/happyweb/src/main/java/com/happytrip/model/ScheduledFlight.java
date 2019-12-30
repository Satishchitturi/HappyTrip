package com.happytrip.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="scheduledflight")
@PrimaryKeyJoinColumn(name="flightrouteid")
public class ScheduledFlight extends FlightRoute {
	
	private static final long serialVersionUID = 1L;

	@OneToMany(mappedBy="flightRoute")
	private Set<FlightBooking> bookings;
	
	@Column(name="scheduledflightdate")
	private Date scheduledFlightDate;
	
	@Column(name="scheduledflightArrivaldate")
	private Date scheduledFlightArrivalDate;

	@OneToMany(mappedBy="scheduledFlight", cascade=CascadeType.ALL)
	private Set<SeatAvailability> availability;
	
	public Set<FlightBooking> getBookings() {
		return bookings;
	}
	public void setBookings(Set<FlightBooking> bookings) {
		this.bookings = bookings;
	}
	public Date getScheduledFlightDate() {
		return this.scheduledFlightDate;
	}
	public void setScheduledFlightDate(Date scheduledFlightDate) {
		this.scheduledFlightDate = scheduledFlightDate;
	}
	public Set<SeatAvailability> getAvailability() {
		return availability;
	}
	public void setAvailability(Set<SeatAvailability> availability) {
		this.availability = availability;
	}
	public Date getScheduledFlightArrivalDate() {
		return scheduledFlightArrivalDate;
	}
	public void setScheduledFlightArrivalDate(Date scheduledFlightArrivalDate) {
		this.scheduledFlightArrivalDate = scheduledFlightArrivalDate;
	}
}
