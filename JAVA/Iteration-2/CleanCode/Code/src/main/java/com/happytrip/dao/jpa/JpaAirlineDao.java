package com.happytrip.dao.jpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.AirlineDao;
import com.happytrip.model.Airline;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaAirlineDao implements AirlineDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(JpaAirlineDao.class);

	public HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public void save(Airline airline) {
		getHibernateTemplate().save(airline);
	}

	@Override
	public Airline findByAirlineCode(String code) {
		String searchQuery = "from Airline a where a.airlineCode = ?";
		List<Airline> airlines = getHibernateTemplate().find(searchQuery, code);
		if(airlines.size() > 0){
			return airlines.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<Airline> findAll() {
		String searchQuery = "from Airline a";
		System.out.println("???????????????????????????????????????????????????????????????????????"+ getHibernateTemplate());
		return getHibernateTemplate().find(searchQuery);
	}

}
