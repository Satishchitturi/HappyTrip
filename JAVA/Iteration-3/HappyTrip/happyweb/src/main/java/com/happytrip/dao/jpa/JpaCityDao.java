package com.happytrip.dao.jpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.controllers.dto.JsonCityDto;
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
		String queryString = "select distinct(c) from City c order by c.cityName asc";
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

	@Override
	public City findCity(City city) {
		String queryString = "from City c where c.cityId = ?";
		List<City> cities = getHibernateTemplate().find(queryString, city.getCityId());
		if(cities.size() > 0){
			return cities.get(0);
		} else {
			return null;
		}
		
	}

	@Override
	public City updateCity(City transform) {
		City city = findCity(transform);
		city.setCityName(transform.getCityName());
		return getHibernateTemplate().merge(city);
	}

	@Override
	public City findCityInStateByName(long cityId, String cityName, long stateId) {
		// TODO Auto-generated method stub
		String queryString = "from City c where c.cityName = ? and c.state.stateId = ? and c.cityId != ?";
		List<City> cities = getHibernateTemplate().find(queryString, cityName, stateId, cityId);
		if(cities.size() > 0){
			return cities.get(0);
		} else {
			return null;
		}
	}

	@Override
	public City findCityInStateByName(String cityName, long stateId) {
		// TODO Auto-generated method stub
		String queryString = "from City c where c.cityName = ? and c.state.stateId = ?";
		List<City> cities = getHibernateTemplate().find(queryString, cityName, stateId);
		if(cities.size() > 0){
			return cities.get(0);
		} else {
			return null;
		}
	}
}
