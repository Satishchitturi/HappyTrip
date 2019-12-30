package com.happytrip.dao.jpa;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.BookingCancellationDao;
import com.happytrip.model.BookingCancelation;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaBookingCancellationDao implements BookingCancellationDao {
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public void save(BookingCancelation cancellation) {
		getHibernateTemplate().save(cancellation);
	}

}
