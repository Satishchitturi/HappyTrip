package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the cities database table.
 * 
 */
@Entity
@Table(name="cities")
public class City implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="cityid")
	private long cityId;

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
}