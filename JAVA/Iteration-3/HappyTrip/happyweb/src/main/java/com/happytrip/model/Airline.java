package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotBlank;

import java.util.Set;


/**
 * The persistent class for the airlines database table.
 * 
 */
@Entity
@Table(name="airlines")
public class Airline implements Serializable,Comparable<Airline> {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="airlineid")
	private long airlineId;

	@NotNull(message="Airline Name is compulsory")
	@NotBlank(message="Airline Name is compulsory")
	@Column(name="airlinecode")
	private String airlineCode;

	@Column(name="airlinelogo")
	private String airlineLogo;

	@NotNull(message="Airline Name is compulsory")
	@NotBlank(message="Airline Name is compulsory")
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
		if(airlineName != null){
			result = prime * result
					+ ((airlineName == null) ? 0 : airlineName.hashCode());
			return result;
		}else{
			return 0;
		}
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Airline other = (Airline) obj;
		if (airlineName == null) {
			if (other.airlineName != null)
				return false;
		} else if (!airlineName.equals(other.airlineName))
			return false;
		return true;
	}

	@Override
	public int compareTo(Airline o) {
		// TODO Auto-generated method stub
		if(this.airlineName != null && o.airlineName != null){
			return this.airlineName.compareTo(o.getAirlineName());
		}else{
			return 0;
		}
	}

	
}