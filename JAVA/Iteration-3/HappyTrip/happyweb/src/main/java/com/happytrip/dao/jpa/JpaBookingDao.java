package com.happytrip.dao.jpa;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.BookingDao;
import com.happytrip.model.City;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.User;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaBookingDao implements BookingDao {

	@Override
	public List<FlightBooking> getAllFlightBookingsForUser(User user) {
		String queryString = "select distinct(fb) from FlightBooking fb join fetch fb.flightRoute fr join fb.booking b where fb.booking.booker = ? order by fb.dateOfJourney desc";
		List<FlightBooking> flightBookings = getHibernateTemplate().find(queryString, user);
		Set<FlightBooking> uniqueFlightBookings = new TreeSet<FlightBooking>();
		uniqueFlightBookings.addAll(flightBookings);
		flightBookings.clear();
		flightBookings.addAll(uniqueFlightBookings);
		return flightBookings;
	}
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

}
