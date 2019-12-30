package com.happytrip.controllers.dto.flight;

import java.io.Serializable;

import com.happytrip.model.City;

public class RouteDto implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private long routeId;

	private City toCity;

	private City fromCity;

	public long getRouteId() {
		return routeId;
	}

	public void setRouteId(long routeId) {
		this.routeId = routeId;
	}

	public City getToCity() {
		return toCity;
	}

	public void setToCity(City toCity) {
		this.toCity = toCity;
	}

	public City getFromCity() {
		return fromCity;
	}

	public void setFromCity(City fromCity) {
		this.fromCity = fromCity;
	}
}
