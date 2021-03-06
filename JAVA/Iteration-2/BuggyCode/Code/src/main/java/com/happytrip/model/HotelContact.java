package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the hotelcontacts database table.
 * 
 */
@Entity
@Table(name="hotelcontacts")
public class HotelContact implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="hotelid")
	private long hotelId;

	@Column(name="address")
	private String address;

	@Column(name="contactno")
	private String contactNo;

	@Column(name="email")
	private String email;

	@Column(name="pinCode")
	private String pinCode;

	//bi-directional one-to-one association to Hotel
	@OneToOne
	@JoinColumn(name="hotelid")
	private Hotel hotel;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="cityid")
	private City city;

    public HotelContact() {
    }

	public long getHotelId() {
		return this.hotelId;
	}

	public void setHotelId(long hotelId) {
		this.hotelId = hotelId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNo() {
		return this.contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPinCode() {
		return this.pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public Hotel getHotel() {
		return this.hotel;
	}

	public void setHotel(Hotel hotel) {
		this.hotel = hotel;
	}
	
	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
}