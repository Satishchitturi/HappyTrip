package com.happytrip.dao.jpa;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.happytrip.dao.LookupDao;
import com.happytrip.model.City;
import com.happytrip.model.FlightClass;
import com.happytrip.model.Role;
import com.happytrip.model.State;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaLookupDao implements LookupDao {

	private HibernateTemplate getHibernateTemplate() {
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Override
	public FlightClass findForClassName(String className) {
		// TODO Auto-generated method stub
		String query = "from FlightClass fc where fc.classType like ?";

		List<FlightClass> classes = getHibernateTemplate().find(query,
				className);
		if (classes != null && !classes.isEmpty()) {
			return classes.get(0);
		} else {
			return null;
		}
	}

	@Override
	public List<FlightClass> findAllFlightClasses() {
		String queryString = "select distinct(fc) from FlightClass fc";
		List<FlightClass> flightClasses = getHibernateTemplate().find(queryString);
		Set<FlightClass> uniqueFlightClasses = new TreeSet<FlightClass>();
		uniqueFlightClasses.addAll(flightClasses);
		flightClasses.clear();
		flightClasses.addAll(uniqueFlightClasses);
		return flightClasses;
	}

	@Override
	public State findForStateName(String stateName) {
		// TODO Auto-generated method stub
		String query = "from State s where s.stateName like ?";

		List<State> states = getHibernateTemplate().find(query, stateName);
		if (states != null && !states.isEmpty()) {
			return states.get(0);
		} else {
			return null;
		}
	}

	@Override
	public Role findForRoleName(String roleName) {
		// TODO Auto-generated method stub
		String query = "from Role r where r.role like ?";

		List<Role> roles = getHibernateTemplate().find(query, roleName);
		if (roles != null && !roles.isEmpty()) {
			return roles.get(0);
		} else {
			return null;
		}
	}

	@Override
	public City findForCityName(String cityName) {
		// TODO Auto-generated method stub
		String query = "from City c where c.cityName like ?";

		List<City> cities = getHibernateTemplate().find(query, cityName);
		if (cities != null && !cities.isEmpty()) {
			return cities.get(0);
		} else {
			return null;
		}
	}

}
