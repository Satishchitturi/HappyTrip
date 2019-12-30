package com.happytrip.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
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
public class ScheduledFlight extends FlightRoute implements Comparable<ScheduledFlight> {
	
	private static final long serialVersionUID = 1L;

	@OneToMany(mappedBy="flightRoute")
	private Set<FlightBooking> bookings;
	
	@Column(name="scheduledflightdate")
	private Date scheduledFlightDate;
	
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
		this.scheduledFlightDate = (Date)scheduledFlightDate.clone();
	}
	public Set<SeatAvailability> getAvailability() {
		return availability;
	}
	public void setAvailability(Set<SeatAvailability> availability) {
		this.availability = availability;
	}

	@Override
	public int compareTo(ScheduledFlight other) {
		// TODO Auto-generated method stub
		Float myCost = this.getFlightRouteCosts().toArray(new FlightRouteCost[0])[0].getCostPerTicket();
		Float otherCost = other.getFlightRouteCosts().toArray(new FlightRouteCost[0])[0].getCostPerTicket();
		return myCost.compareTo(otherCost);
	}
}
