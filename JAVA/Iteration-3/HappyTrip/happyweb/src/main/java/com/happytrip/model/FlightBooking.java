package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

import com.happytrip.util.StringUtil;

import java.text.ParseException;
import java.util.Date;
import java.util.Set;


/**
 * The persistent class for the flightbookings database table.
 * 
 */
@Entity
@Table(name="flightbookings")
public class FlightBooking implements Serializable,Comparable<FlightBooking> {
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
	
	@Column(name="miles")
	private float miles;
	
	@Column(name="insured")
	private boolean insured=false;
	
	@Column(name="insuranceamount")
	private float insuranceAmount = 0;

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
		if(this.dateOfJourney != null){
			return (Date)this.dateOfJourney.clone();
		}else{
			return null;
		}
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
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
	
	public float getMiles() {
		return miles;
	}

	public void setMiles(float miles) {
		this.miles = miles;
	}

	public boolean isInsured() {
		return insured;
	}

	public void setInsured(boolean insured) {
		this.insured = insured;
	}
	
	public float getInsuranceAmount() {
		return insuranceAmount;
	}

	public void setInsuranceAmount(float insuranceAmount) {
		this.insuranceAmount = insuranceAmount;
	}
	
	
	public long getTimeToFly(){
		try {
			return StringUtil.elapsedTime(dateOfJourney, flightRoute.getDepartureTime());
		} catch (ParseException e) {
			e.printStackTrace();
			// TODO Auto-generated catch block
			return 0;
		}
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + (int) (bookingId ^ (bookingId >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		FlightBooking other = (FlightBooking) obj;
		if (bookingId != other.bookingId)
			return false;
		return true;
	}

	@Override
	public int compareTo(FlightBooking o) {
		// TODO Auto-generated method stub
		Long thisBookingId = this.bookingId;
		Long otherBookingId = o.bookingId;
		return thisBookingId.compareTo(otherBookingId);
	}
	
	
}