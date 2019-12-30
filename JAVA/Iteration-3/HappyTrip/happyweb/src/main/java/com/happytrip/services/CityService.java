package com.happytrip.services;

import java.util.List;


import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.model.City;


public interface CityService {

	public City create(JsonCityDto Airline);
	 
	public City read(Long id);
 
	public List<JsonCityDto> readAll();
 
	public JsonCityDto update(JsonCityDto Airline);
 
	public JsonCityDto delete(Long id);
}
