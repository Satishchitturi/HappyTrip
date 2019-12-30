package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the hotelbookings database table.
 * 
 */
@Entity
@Table(name="hotelbookings")
public class HotelBooking implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

	@Column(name="costperday")
	private float costPerDay;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="fromdate")
	private Date fromDate;

	@Column(name="noofpeople")
	private int noOfPeople;

	@Column(name="noofrooms")
	private int noOfRooms;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="todate")
	private Date toDate;

	//bi-directional many-to-one association to Hotelroom
    @ManyToOne
	@JoinColumn(name="roomid")
	private HotelRoom hotelRoom;

	//bi-directional one-to-one association to Booking
	@OneToOne
	@JoinColumn(name="bookingid")
	private Booking booking;

    public HotelBooking() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public float getCostPerDay() {
		return this.costPerDay;
	}

	public void setCostPerDay(float costPerDay) {
		this.costPerDay = costPerDay;
	}

	public Date getFromDate() {
		return (Date)this.fromDate.clone();
	}

	public void setFromDate(Date fromDate) {
		this.fromDate = (Date)fromDate.clone();
	}

	public int getNoOfPeople() {
		return this.noOfPeople;
	}

	public void setNoOfPeople(int noOfPeople) {
		this.noOfPeople = noOfPeople;
	}

	public int getNoOfRooms() {
		return this.noOfRooms;
	}

	public void setNoOfRooms(int noOfRooms) {
		this.noOfRooms = noOfRooms;
	}

	public Date getToDate() {
		return (Date)this.toDate.clone();
	}

	public void setToDate(Date toDate) {
		this.toDate = (Date)toDate.clone();
	}

	public HotelRoom getHotelRoom() {
		return this.hotelRoom;
	}

	public void setHotelRoom(HotelRoom hotelRoom) {
		this.hotelRoom = hotelRoom;
	}
	
	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	
}