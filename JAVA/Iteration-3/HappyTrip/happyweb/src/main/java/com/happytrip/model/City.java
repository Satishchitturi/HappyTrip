package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotBlank;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.happytrip.controllers.HomeController;

/**
 * The persistent class for the cities database table.
 * 
 */
@Entity
@Table(name="cities")
public class City implements Serializable,Comparable<City> {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(City.class);


	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cityid")
	private long cityId;

	@NotNull(message="City Name is mandatory")
	@NotBlank(message="City Name is mandatory")
	@Size(max=255,message="City Name can only be max 255 characters in length")
	@Column(name="cityname")
	private String cityName;

	//bi-directional many-to-one association to State
    @ManyToOne
	@JoinColumn(name="stateid")
	private State state;

    public City() {
    }

	public long getCityId() {
		return this.cityId;
	}

	public void setCityId(long cityId) {
		this.cityId = cityId;
	}

	public String getCityName() {
		return this.cityName;
	}

	public void setCityName(String cityName) {
		this.cityName = cityName;
	}

	public State getState() {
		return this.state;
	}

	public void setState(State state) {
		this.state = state;
	}

	@Override
	public int hashCode() {
		LOGGER.info("Returning hash code for " + this);
		final int prime = 31;
		int result = 1;
		if(cityName != null){
			result = prime * result
					+ ((cityName == null) ? 0 : cityName.hashCode());
		}
		if(state != null){
			result = prime * result + ((state == null) ? 0 : state.hashCode());
			return result;
		}else{
			return result;
		}
	}

	@Override
	public boolean equals(Object obj) {
		LOGGER.info("Comparing " + this + " with " + obj);
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		City other = (City) obj;
		if (cityName == null) {
			if (other.cityName != null)
				return false;
		} else if (!cityName.equals(other.cityName))
			return false;
		if (state == null) {
			if (other.state != null)
				return false;
		} else if (!state.equals(other.state))
			return false;
		return true;
	}

	@Override
	public int compareTo(City o) {
		LOGGER.info("Campare to called for " + o);
		// TODO Auto-generated method stub
		if(o.cityName == null){
			return -1;
		}
		if(this.cityName != null){
			if(cityName.equals(o.cityName)){
				return this.state.compareTo(o.state);
			}
			return this.cityName.compareTo(o.cityName);
		}else{
			return 0;
		}
	}

	@Override
	public String toString() {
		return "City [cityId=" + cityId + ", cityName=" + cityName + ", state="
				+ state + "]";
	}
}