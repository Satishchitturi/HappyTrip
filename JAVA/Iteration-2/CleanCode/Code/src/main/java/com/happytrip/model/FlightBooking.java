package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.Set;


/**
 * The persistent class for the flightbookings database table.
 * 
 */
@Entity
@Table(name="flightbookings")
public class FlightBooking implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

	@Column(name="costperticket")
	private float costPerTicket;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="dateofjourney")
	private Date dateOfJourney;

	@Column(name="noofseats")
	private int noOfSeats;

	//bi-directional many-to-one association to Class
    @ManyToOne
	@JoinColumn(name="classid")
	private FlightClass flightClass;

	//bi-directional many-to-one association to Flightroute
    @ManyToOne
	@JoinColumn(name="flightrouteid")
	private FlightRoute flightRoute;

	//bi-directional one-to-one association to Booking
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="bookingid")
	private Booking booking;

	//bi-directional many-to-one association to Passenger
	@OneToMany(mappedBy="flightBooking",cascade=CascadeType.ALL)
	private Set<Passenger> passengers;

    public FlightBooking() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public float getCostPerTicket() {
		return this.costPerTicket;
	}

	public void setCostPerTicket(float costPerTicket) {
		this.costPerTicket = costPerTicket;
	}

	public Date getDateOfJourney() {
		return (Date)this.dateOfJourney.clone();
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = (Date)dateOfJourney.clone();
	}

	public int getNoOfSeats() {
		return this.noOfSeats;
	}

	public void setNoOfSeats(int noOfSeats) {
		this.noOfSeats = noOfSeats;
	}

	public FlightClass getFlightClass() {
		return this.flightClass;
	}

	public void setFlightClass(FlightClass classId) {
		this.flightClass = classId;
	}
	
	public FlightRoute getFlightRoute() {
		return this.flightRoute;
	}

	public void setFlightRoute(FlightRoute flightRoute) {
		this.flightRoute = flightRoute;
	}
	
	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	
	public Set<Passenger> getPassengers() {
		return this.passengers;
	}

	public void setPassengers(Set<Passenger> passengers) {
		this.passengers = passengers;
	}
	
}