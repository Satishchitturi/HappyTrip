package com.happytrip.dao;

import java.util.List;

import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.model.City;

public interface CityDao {
	void save(City city);
	List<City> getAllCities();
	City findCityByName(String name);
	City findCityInStateByName(long cityId, String cityName, long stateId);
	City findCityInStateByName(String cityName, long stateId);
	void removeAll();
	City findCity(City city);
	City updateCity(City transform);
}
