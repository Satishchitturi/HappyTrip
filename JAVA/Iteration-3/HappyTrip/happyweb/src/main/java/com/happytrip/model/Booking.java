package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;

/**
 * The persistent class for the bookings database table.
 * 
 */
@Entity
@Table(name="bookings")
public class Booking implements Serializable {
	private static final long serialVersionUID = 1L;
	private static final String BOOKING_MAPPING = "booking";

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="bookingdate")
	private Date bookingDate;

	@Column(name="bookingreferenceno")
	private String bookingReferenceNo;

	@Column(name="iscanceled")
	private boolean cancelled;

	@Column(name="remarks")
	private String remarks;

	@Column(name="totalcost")
	private float totalCost;

	//bi-directional one-to-one association to Bookingcancelation
	@OneToOne(mappedBy=BOOKING_MAPPING)
	private BookingCancelation bookingCancelation;

	//bi-directional one-to-one association to Bookingcontact
	@OneToOne(mappedBy=BOOKING_MAPPING, cascade=CascadeType.ALL)
	private BookingContact bookingcontact;

	//bi-directional one-to-one association to Bookingpayment
	@OneToOne(mappedBy=BOOKING_MAPPING,cascade=CascadeType.ALL)
	private BookingPayment bookingpayment;

	//bi-directional many-to-one association to Bookingtype
    @ManyToOne
	@JoinColumn(name="typeid")
	private BookingType bookingtype;

	//bi-directional one-to-one association to Flightbooking
	@OneToOne(mappedBy=BOOKING_MAPPING)
	private FlightBooking flightbooking;

	//bi-directional one-to-one association to Hotelbooking
	@OneToOne(mappedBy="booking")
	private HotelBooking hotelbooking;

	//bi-directional many-to-many association to User
	@ManyToOne
	@JoinColumn(name="bookerid")
	private User booker;

	

    public Booking() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public Date getBookingDate() {
		if(this.bookingDate != null){
			return (Date)this.bookingDate.clone();
		}else{
			return null;
		}
	}

	public void setBookingDate(Date bookingDate) {
		this.bookingDate = bookingDate;
	}

	public String getBookingReferenceNo() {
		return this.bookingReferenceNo;
	}

	public void setBookingReferenceNo(String bookingReferenceNo) {
		this.bookingReferenceNo = bookingReferenceNo;
	}

	public boolean isCancelled() {
		return cancelled;
	}

	public void setCancelled(boolean cancelled) {
		this.cancelled = cancelled;
	}

	public String getRemarks() {
		return this.remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public float getTotalCost() {
		return this.totalCost;
	}

	public void setTotalCost(float totalCost) {
		this.totalCost = totalCost;
	}

	public BookingCancelation getBookingcancelation() {
		return this.bookingCancelation;
	}

	public void setBookingcancelation(BookingCancelation bookingcancelation) {
		this.bookingCancelation = bookingcancelation;
	}
	
	public BookingContact getBookingcontact() {
		return this.bookingcontact;
	}

	public void setBookingcontact(BookingContact bookingcontact) {
		this.bookingcontact = bookingcontact;
	}
	
	public BookingPayment getBookingpayment() {
		return this.bookingpayment;
	}

	public void setBookingpayment(BookingPayment bookingpayment) {
		this.bookingpayment = bookingpayment;
	}
	
	public BookingType getBookingtype() {
		return this.bookingtype;
	}

	public void setBookingtype(BookingType bookingtype) {
		this.bookingtype = bookingtype;
	}
	
	public FlightBooking getFlightbooking() {
		return this.flightbooking;
	}

	public void setFlightbooking(FlightBooking flightbooking) {
		this.flightbooking = flightbooking;
	}
	
	public HotelBooking getHotelbooking() {
		return this.hotelbooking;
	}

	public void setHotelbooking(HotelBooking hotelbooking) {
		this.hotelbooking = hotelbooking;
	}
	
	public User getBooker() {
		return this.booker;
	}

	public void setBooker(User booker) {
		this.booker = booker;
	}
}