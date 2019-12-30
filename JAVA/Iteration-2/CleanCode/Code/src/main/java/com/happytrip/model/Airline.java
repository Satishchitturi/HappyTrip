package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Set;


/**
 * The persistent class for the airlines database table.
 * 
 */
@Entity
@Table(name="airlines")
public class Airline implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="airlineid")
	private long airlineId;

	@Column(name="airlinecode")
	private String airlineCode;

	@Column(name="airlinelogo")
	private String airlineLogo;

	@Column(name="airlinename")
	private String airlineName;

	//bi-directional many-to-one association to Flight
	@OneToMany(mappedBy="airline")
	private Set<Flight> flights;

    public Airline() {
    }

	public long getAirlineId() {
		return this.airlineId;
	}

	public void setAirlineId(long airlineId) {
		this.airlineId = airlineId;
	}

	public String getAirlineCode() {
		return this.airlineCode;
	}

	public void setAirlineCode(String airlineCode) {
		this.airlineCode = airlineCode;
	}

	public String getAirlineLogo() {
		return this.airlineLogo;
	}

	public void setAirlineLogo(String airlineLogo) {
		this.airlineLogo = airlineLogo;
	}

	public String getAirlineName() {
		return this.airlineName;
	}

	public void setAirlineName(String airlineName) {
		this.airlineName = airlineName;
	}

	public Set<Flight> getFlights() {
		return this.flights;
	}

	public void setFlights(Set<Flight> flights) {
		this.flights = flights;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((airlineName == null) ? 0 : airlineName.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		Airline other = (Airline) obj;
	if (!airlineName.equals(other.airlineName))
			return false;
		return true;
	}
	
	
}