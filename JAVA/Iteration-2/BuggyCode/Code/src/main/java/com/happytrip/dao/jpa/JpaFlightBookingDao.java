package com.happytrip.dao.jpa;

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

}
