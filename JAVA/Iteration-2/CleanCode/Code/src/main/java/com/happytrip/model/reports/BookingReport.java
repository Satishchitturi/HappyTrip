package com.happytrip.model.reports;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="bookingreport")
public class BookingReport {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private long id;

	@Column(name="costperticket")
	private float costPerTicket;
	
	@Column(name="dateofjourney")
	private Date dateOfJourney;
	
	@Column(name="numberofseats")
	private int numberOfSeats;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public float getCostPerTicket() {
		return costPerTicket;
	}

	public void setCostPerTicket(float costPerTicket) {
		this.costPerTicket = costPerTicket;
	}

	public Date getDateOfJourney() {
		return dateOfJourney;
	}

	public void setDateOfJourney(Date dateOfJourney) {
		this.dateOfJourney = dateOfJourney;
	}

	public int getNumberOfSeats() {
		return numberOfSeats;
	}

	public void setNumberOfSeats(int numberOfSeats) {
		this.numberOfSeats = numberOfSeats;
	}
}
