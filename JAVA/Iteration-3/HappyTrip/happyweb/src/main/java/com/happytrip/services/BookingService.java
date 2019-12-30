package com.happytrip.services;

import java.util.List;

import com.happytrip.model.FlightBooking;
import com.happytrip.model.User;

public interface BookingService {
	/**
	 * Return a list of all the ticket bookings made by the user
	 * @param userName
	 * @return
	 */
	List<FlightBooking> findAllFlightBookingsForUser(User user);
}
