package com.happytrip.dao.jpa;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.FlightDao;
import com.happytrip.model.Flight;
import com.happytrip.model.FlightCapacity;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaFlightDao implements FlightDao {
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public void save(Flight flight) {
		getHibernateTemplate().save(flight);
	}

	@Override
	public Flight findByFlightName(String flightName) {
		String searchQuery = "from Flight f where f.flightName = ?";
		List<Flight> flights = getHibernateTemplate().find(searchQuery, flightName);
		if(flights.size() > 0){
			return flights.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<Flight> getAllFlights() {
		String queryString = "from Flight f";
		return getHibernateTemplate().find(queryString);
	}

	@Override
	public Flight findByFlightId(long flightId) {
		String searchQuery = "from Flight f where f.flightId = ?";
		List<Flight> flights = getHibernateTemplate().find(searchQuery, flightId);
		if(flights.size() > 0){
			return flights.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<FlightCapacity> getCapacitiesForFlightId(long flightId) {
		String searchQuery = "from FlightCapacity fc where fc.flight.flightId = ?";
		return getHibernateTemplate().find(searchQuery, flightId);
	}


}
