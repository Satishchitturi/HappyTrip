package com.happytrip.dao.jpa;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.BookingDao;
import com.happytrip.model.FlightBooking;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaBookingDao implements BookingDao {

	@Override
	public List<FlightBooking> getAllFlightBookingsForUser(String userName) {
		String queryString = "from FlightBooking fb where fb.booking.booker.email = ?";
		return getHibernateTemplate().find(queryString, userName);
	}
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

}
