package com.happytrip.dao.jpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.RouteDao;
import com.happytrip.model.City;
import com.happytrip.model.Route;
import com.happytrip.util.SessionFactoryUtil;


@Repository
public class JpaRouteDao implements RouteDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(JpaRouteDao.class);

	@Override
	public void save(Route route) {
		getHibernateTemplate().save(route);

	}

	@Override
	public List<Route> getAllRoutes() {
		String queryString = "from Route r";
		return getHibernateTemplate().find(queryString);
	}
	
	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public Route findByCityNames(String fromCity, String toCity) {
		String queryString = "from Route r where r.fromCity.cityName = ? and r.toCity.cityName = ?";
		List<Route> routes = getHibernateTemplate().find(queryString, fromCity, toCity);
		if(routes.size() > 0){
			return routes.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Route findByCities(City fromCity, City toCity) {
		// TODO Auto-generated method stub
		String queryString = "from Route r where r.fromCity = ? and r.toCity = ?";
		List<Route> routes = getHibernateTemplate().find(queryString, fromCity, toCity);
		if(routes.size() > 0){
			return routes.get(0);
		} else {
			return null;
		}
	}

}
