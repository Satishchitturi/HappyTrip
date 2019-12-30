package com.happytrip.dao.jpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.CityDao;
import com.happytrip.model.City;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaCityDao implements CityDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(JpaCityDao.class);

	@Override
	public void save(City city) {
		getHibernateTemplate().save(city);

	}

	@Override
	public List<City> getAllCities() {
		String queryString = "from City c";
		return getHibernateTemplate().find(queryString);
	}
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public City findCityByName(String name) {
		String queryString = "from City c where c.cityName = ?";
		List<City> cities = getHibernateTemplate().find(queryString, name);
		if(cities.size() > 0){
			return cities.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void removeAll() {
		// TODO Auto-generated method stub
		String stateQueryString = "delete from State";
		String cityQueryString = "delete from City";
		
		getHibernateTemplate().bulkUpdate(cityQueryString);
		getHibernateTemplate().bulkUpdate(stateQueryString);
	}

}
