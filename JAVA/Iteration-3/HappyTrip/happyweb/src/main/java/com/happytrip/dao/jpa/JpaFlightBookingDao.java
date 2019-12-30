package com.happytrip.dao.jpa;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.FlightBookingDao;
import com.happytrip.model.FlightBooking;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaFlightBookingDao implements FlightBookingDao{

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}
	
	@Override
	public void save(FlightBooking booking) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(booking);
	}

	@Override
	public void delete(FlightBooking booking) {
		getHibernateTemplate().delete(booking);
		
	}

	@Override
	public FlightBooking getById(long id) {
		String query = "From FlightBooking f where f.bookingId = ?";
		List<FlightBooking> flightBookings = getHibernateTemplate().find(query, id);
		if(flightBookings.size() > 0){
			return flightBookings.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void update(FlightBooking booking) {
		getHibernateTemplate().merge(booking);		
	}

}
