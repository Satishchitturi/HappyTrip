package com.happytrip.services;

import java.util.Date;
import java.util.List;

import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.SeatsExhaustedException;
import com.happytrip.model.City;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.FlightClass;
import com.happytrip.model.FlightInventory;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.User;
import com.happytrip.payment.Transaction;
import com.happytrip.payment.model.CreditCard;

public interface FlightBookingService {

	/**
	 * Return a list of all the cities that have flight originating from.
	 * 
	 * @param cityName
	 *            The name of the city or part there of
	 * @return
	 */
	List<City> findAllFromCities(String cityName);

	/**
	 * Returns a list of cities to which there is a flight from the supplied
	 * city
	 * 
	 * @param cityName
	 * @return list of city objects
	 */
	List<City> findAllCitiesFlownFrom(String cityName);

	/**
	 * Return all the scheduled flights that match the search criteria
	 * 
	 * @param fromCity
	 * @param toCity
	 * @param classOfFlight
	 * @param paxNo
	 * @param departureDate
	 * @return List of scheduled flights
	 */
	List<ScheduledFlight> searchFlights(long fromCityId, long toCityId,
			FlightClass classOfFlight, int paxNo, Date departureDate);

	/**
	 * This method will book the flight Book a ticket
	 * 
	 * @param flightBooking
	 */
	Transaction bookFlight(CreditCard card, FlightBooking flightBooking)
			throws SeatsExhaustedException, InvalidCardDataException,
			CardDeclinedException;

	/**
	 * This method will book the flight Book a ticket
	 * 
	 * @param flightBooking
	 */
	Transaction bookFlight(CreditCard card, FlightBooking outbound,
			FlightBooking returnFlight) throws SeatsExhaustedException,
			InvalidCardDataException, CardDeclinedException;
	
	float cancelFlightBooking(String id) throws InvalidCardDataException,InvalidCancellationTimeException ;
	
	FlightBooking createBooking(String flightClassName,
			Date journeyDate, ScheduledFlight flightToBeBooked,
			PassengerListDto passengerList, Passenger primaryPassenger, User loggedInUser);
	
	List<FlightInventory> loadFlightInventoryForCurrentDate();
}
