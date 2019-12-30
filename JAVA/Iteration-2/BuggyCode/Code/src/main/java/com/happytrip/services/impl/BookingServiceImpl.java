package com.happytrip.services.impl;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.happytrip.dao.BookingDao;
import com.happytrip.model.FlightBooking;
import com.happytrip.services.BookingService;

@Service
public class BookingServiceImpl implements BookingService {
	
	@Autowired
	private BookingDao bookingDao;

	
	@Override
	public List<FlightBooking> findAllFlightBookingsForUser(String userName) {
		List<FlightBooking> bookings = bookingDao.getAllFlightBookingsForUser(userName);
		return bookings;
	}

}
