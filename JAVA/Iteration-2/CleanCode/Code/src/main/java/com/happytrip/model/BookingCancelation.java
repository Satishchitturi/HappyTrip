package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the bookingcancelations database table.
 * 
 */
@Entity
@Table(name="bookingcancelations")
public class BookingCancelation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="cancelationdate")
	private Date cancelationDate;

	@Column(name="refundamount")
	private float refundAmount;

	//bi-directional one-to-one association to Booking
	@OneToOne
	@JoinColumn(name="bookingid")
	private Booking booking;

    public BookingCancelation() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public Date getCancelationDate() {
		return (Date)this.cancelationDate.clone();
	}

	public void setCancelationDate(Date cancelationDate) {
		this.cancelationDate = (Date)cancelationDate.clone();
	}

	public float getRefundAmount() {
		return this.refundAmount;
	}

	public void setRefundAmount(float refundAmount) {
		this.refundAmount = refundAmount;
	}

	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	
}