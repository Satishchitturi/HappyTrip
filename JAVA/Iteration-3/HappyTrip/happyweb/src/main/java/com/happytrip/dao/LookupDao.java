package com.happytrip.dao;

import java.util.List;

import com.happytrip.model.City;
import com.happytrip.model.FlightClass;
import com.happytrip.model.Role;
import com.happytrip.model.State;

public interface LookupDao {

	public FlightClass findForClassName(String className);
	public List<FlightClass> findAllFlightClasses();
	public State findForStateName(String stateName);
	public Role findForRoleName(String roleName);
	public City findForCityName(String cityName);
}
