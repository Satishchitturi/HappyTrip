package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the bookingpayments database table.
 * 
 */
@Entity
@Table(name="bookingpayments")
public class BookingPayment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

	@Column(name="paymentamount")
	private float paymentAmount;

    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="paymentdate")
	private Date paymentDate;

	@Column(name="referenceno")
	private String referenceNo;

	//bi-directional one-to-one association to Booking
	@OneToOne
	@JoinColumn(name="bookingid")
	private Booking booking;

    public BookingPayment() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public float getPaymentAmount() {
		return this.paymentAmount;
	}

	public void setPaymentAmount(float paymentAmount) {
		this.paymentAmount = paymentAmount;
	}

	public Date getPaymentDate() {
		return (Date)this.paymentDate.clone();
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = (Date)paymentDate.clone();
	}

	public String getReferenceNo() {
		return this.referenceNo;
	}

	public void setReferenceNo(String referenceNo) {
		this.referenceNo = referenceNo;
	}

	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	
}