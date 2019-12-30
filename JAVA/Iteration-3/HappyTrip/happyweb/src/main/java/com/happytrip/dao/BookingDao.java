package com.happytrip.dao;

import java.util.List;

import com.happytrip.model.FlightBooking;
import com.happytrip.model.User;

public interface BookingDao {
	List<FlightBooking> getAllFlightBookingsForUser(User user);
}
