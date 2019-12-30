package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the usercontactinformation database table.
 * 
 */
@Entity
@Table(name="usercontactinformation")
public class UserContact implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="contactid")
	private long userId;

	@Column(name="address")
	private String address;

	@Column(name="mobileno")
	private String mobileNo;

	@Column(name="pincode")
	private String pinCode;

	//bi-directional one-to-one association to User
	@ManyToOne
	@JoinColumn(name="user_id")
	private User user;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="cityid")
	private City city;

    public UserContact() {
    }

	public long getUserId() {
		return this.userId;
	}

	public void setUserId(long userId) {
		this.userId = userId;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMobileNo() {
		return this.mobileNo;
	}

	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}

	public String getPinCode() {
		return this.pinCode;
	}

	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}
	
}