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

	private HibernateTemplate getHibernateTemplate(){
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
		String searchQuery = "select distinct(a) from Airline a order by a asc";
		return getHibernateTemplate().find(searchQuery);
	}

	@Override
	public Airline findByAirlineName(String airlineName) {
		// TODO Auto-generated method stub
		String searchQuery = "from Airline a where a.airlineName = ?";
		List<Airline> airlines = getHibernateTemplate().find(searchQuery, airlineName);
		if(airlines.size() > 0){
			return airlines.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Airline findByAirlineId(long code) {
		String searchQuery = "from Airline a where a.airlineId = ?";
		List<Airline> airlines = getHibernateTemplate().find(searchQuery, code);
		if(airlines.size() > 0){
			return airlines.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Airline updateAirline(Airline airline) {
		getHibernateTemplate().merge(airline);
		return airline;
	}

	@Override
	public Airline deleteAirline(Long id) {
		Airline airline = findByAirlineId(id);
		getHibernateTemplate().delete(airline);
		getHibernateTemplate().flush();
		return airline;
	}

	@Override
	public Airline findAnotherAirlineWithCode(Airline airline) {
		// TODO Auto-generated method stub
		String searchQuery = "from Airline a where a.airlineCode = ? and a.airlineId != ?";
		List<Airline> airlines = getHibernateTemplate().find(searchQuery, airline.getAirlineCode(),airline.getAirlineId());
		if(airlines.size() > 0){
			return airlines.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Airline findAnotherAirlineWithName(Airline airline) {
		// TODO Auto-generated method stub
		String searchQuery = "from Airline a where a.airlineName = ? and a.airlineId != ?";
		List<Airline> airlines = getHibernateTemplate().find(searchQuery, airline.getAirlineName(),airline.getAirlineId());
		if(airlines.size() > 0){
			return airlines.get(0);
		} else {
			return null;
		}
	}

}
