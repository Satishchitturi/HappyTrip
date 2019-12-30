package com.happytrip.dao.jpa;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.FlightClassDao;
import com.happytrip.model.FlightClass;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaFlightClassDao implements FlightClassDao {

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}
	

	@Override
	public void save(FlightClass flightClass) {
		// TODO Auto-generated method stub
		getHibernateTemplate().save(flightClass);
	}

}
