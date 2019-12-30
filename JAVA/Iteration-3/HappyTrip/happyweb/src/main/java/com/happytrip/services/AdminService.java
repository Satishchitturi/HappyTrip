package com.happytrip.services;

import java.util.List;

import com.happytrip.model.*;

public interface AdminService {
	void addFlight(Flight flight, String airlineCode) throws DuplicateFlightNameException;
	boolean isDuplicateFlight(Flight flight);
	void addRoute(Route route);
	boolean isDuplicateRoute(City fromCity, City toCity);
	void addAirline(Airline airline) throws DuplicateAirlineException ;
	void addCity(City city) throws DuplicateCityException ;
	void addState(State state);
	boolean isDuplicateAirline(Airline airline);
	List<Airline> getAllAirlines();
	FlightClass getClassForName(String className);
	Airline getAirlineByCode(String code);
	List<City> getAllCities();
	List<State> getAllStates();
	City getCityByName(String name);
	List<Flight> getAllFlights();
	List<Route> getAllRoutes();
	List<FlightClass> getAllFlightClasses();
	void addFlightSchedule(ScheduledFlight scheduledFlight) throws DuplicateScheduleException ;
	Flight getFlightById(long flightId);
	List<FlightCapacity> getCapacitiesForFlightId(long flightId);
}
