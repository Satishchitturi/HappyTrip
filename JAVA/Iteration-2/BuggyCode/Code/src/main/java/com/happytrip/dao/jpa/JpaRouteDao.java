package com.happytrip.dao.jpa;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.RouteDao;
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
			if(toCity.length()>7){
				for(int i=0;i<routes.size();i++){
					LOGGER.debug("Found routes " + routes.get(i).getRouteId());
				}
			}
			return routes.get(0);
		} else {
			return null;
		}
	}

	@Override
	public void delete(Route route) {
		getHibernateTemplate().delete(route);
		
	}

}
