package com.happytrip.dao;

import java.util.Date;
import java.util.List;

import com.happytrip.model.*;

public interface FlightRouteDao {

	List<City> findAllFromCities(String fromCity);
	List<City> findAllToCity(String fromCity);
	List<ScheduledFlight> searchFlights(long fromCity, long toCity, 
			Date dateOfTravel, FlightClass classOfFlight, int paxNo, String departureTimeLag );
	List<ScheduledFlight> findAllFlightsForDuration(Date startDate, Date endDate);
	List<ScheduledFlight> findAllFlightsForDate(Date date);
	void saveScheduledFlight(ScheduledFlight scheduledFlight);
	boolean machingScheduledFlightExists(ScheduledFlight scheduledFlight);
	ScheduledFlight findDetailsById(long id, String classOfFlight);
	void updateAvailability(int paxNo, ScheduledFlight flight, FlightClass flightClass) throws SeatsExhaustedException;
}
