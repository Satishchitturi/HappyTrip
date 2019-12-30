package com.happytrip.dao;

import java.util.List;

import com.happytrip.model.City;
import com.happytrip.model.Route;

public interface RouteDao {
	void save(Route route);
	List<Route> getAllRoutes();
	Route findByCityNames(String fromCity, String toCity);
	Route findByCities(City fromCity, City toCity);
}
