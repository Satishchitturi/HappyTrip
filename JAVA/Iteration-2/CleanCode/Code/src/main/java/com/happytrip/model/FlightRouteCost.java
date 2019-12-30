package com.happytrip.model;

import java.io.Serializable;
import java.util.Comparator;

import javax.persistence.*;


/**
 * The persistent class for the flightroutecosts database table.
 * 
 */
@Entity
@Table(name="flightroutecosts")
public class FlightRouteCost implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="flightroutecostid")
	private long flightRouteCostId;

	@Column(name="costperticket")
	private float costPerTicket;

	//bi-directional many-to-one association to Class
    @ManyToOne
	@JoinColumn(name="classid")
	private FlightClass flightClass;

	//bi-directional many-to-one association to Flightroute
    @ManyToOne
	@JoinColumn(name="flightrouteid")
	private FlightRoute flightRoute;

    public FlightRouteCost() {
    }

	public long getFlightRouteCostId() {
		return this.flightRouteCostId;
	}

	public void setFlightRouteCostId(long flightRouteCostId) {
		this.flightRouteCostId = flightRouteCostId;
	}

	public float getCostPerTicket() {
		return this.costPerTicket;
	}

	public void setCostPerTicket(float costPerTicket) {
		this.costPerTicket = costPerTicket;
	}

	public FlightClass getFlightClass() {
		return this.flightClass;
	}

	public void setFlightClass(FlightClass classId) {
		this.flightClass = classId;
	}
	
	public FlightRoute getFlightRoute() {
		return this.flightRoute;
	}

	public void setFlightRoute(FlightRoute flightroute) {
		this.flightRoute = flightroute;
	}
	
	
}