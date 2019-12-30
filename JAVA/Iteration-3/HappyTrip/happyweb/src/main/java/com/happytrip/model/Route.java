package com.happytrip.model;

import java.io.Serializable;
import javax.persistence.*;

/**
 * The persistent class for the routes database table.
 * 
 */
@Entity
@Table(name="routes")
public class Route implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="routeid")
	private long routeId;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="tocityid")
	private City toCity;

	//bi-directional many-to-one association to City
    @ManyToOne
	@JoinColumn(name="fromcityid")
	private City fromCity;

    public Route() {
    }

	public long getRouteId() {
		return this.routeId;
	}

	public void setRouteId(long routeId) {
		this.routeId = routeId;
	}

	public City getToCity() {
		return this.toCity;
	}

	public void setToCity(City toCity) {
		this.toCity = toCity;
	}
	
	public City getFromCity() {
		return this.fromCity;
	}

	public void setFromCity(City fromCity) {
		this.fromCity = fromCity;
	}
}