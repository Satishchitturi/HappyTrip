package com.happytrip.dao;

import com.happytrip.model.FlightBooking;

public interface FlightBookingDao {

	void save(FlightBooking booking);
	
	void delete(FlightBooking booking);
	
	FlightBooking getById(long id);
	
	void update(FlightBooking booking);
}
