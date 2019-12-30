package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the passengers database table.
 * 
 */
@Entity
@Table(name="passengers")
public class Passenger implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="passengerid")
	private long passengerId;

	@Column(name="title")
	private String title;
		
    @Temporal( TemporalType.TIMESTAMP)
	@Column(name="dateofbirth")
	private Date dateOfBirth;

	@Column(name="gender")
	private String gender;

	@Column(name="name")
	private String name;

	//bi-directional many-to-one association to Flightbooking
    @ManyToOne
	@JoinColumn(name="bookingid")
	private FlightBooking flightBooking;

    public Passenger() {
    }

	public long getPassengerId() {
		return this.passengerId;
	}

	public void setPassengerId(long passengerId) {
		this.passengerId = passengerId;
	}

	public Date getDateOfBirth() {
		if(this.dateOfBirth != null){
			return (Date)this.dateOfBirth.clone();
		}else{
			return null;
		}
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public FlightBooking getFlightBooking() {
		return this.flightBooking;
	}

	public void setFlightBooking(FlightBooking flightbooking) {
		this.flightBooking = flightbooking;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Override
	public String toString() {
		return "Passenger [passengerId=" + passengerId + ", title=" + title
				+ ", dateOfBirth=" + dateOfBirth + ", gender=" + gender
				+ ", name=" + name + "]";
	}
}