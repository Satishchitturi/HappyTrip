package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the bookingcontacts database table.
 * 
 */
@Entity
@Table(name="bookingcontacts")
public class BookingContact implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="bookingid")
	private long bookingId;

	@Column(name="address")
	private String address;

	@Column(name="contactname")
	private String contactName;

	@Column(name="email")
	private String email;

	@Column(name="mobileno")
	private String mobileNo;

	@Column(name="phoneno")
	private String phoneNo;

	@Column(name="pincode")
	private String pinCode;

	//bi-directional one-to-one association to Booking
	@OneToOne
	@JoinColumn(name="bookingid")
	private Booking booking;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="cityid")
	private City city;

    public BookingContact() {
    }

	public long getBookingId() {
		return this.bookingId;
	}

	public void setBookingId(long bookingId) {
		this.bookingId = bookingId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactName() {
		return this.contactName;
	}

	public void setContactName(String contactName) {
		this.contactName = contactName;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPhoneNo() {
		return this.phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getPinCode() {
		return this.pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public Booking getBooking() {
		return this.booking;
	}

	public void setBooking(Booking booking) {
		this.booking = booking;
	}
	
	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
}