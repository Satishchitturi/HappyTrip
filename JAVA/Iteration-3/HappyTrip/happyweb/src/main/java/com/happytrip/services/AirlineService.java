package com.happytrip.services;

import java.util.List;


import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.model.Airline;



public interface AirlineService {

	public Airline create(JsonAirlineDto Airline);
	 
	public Airline read(Long id);
 
	public List<JsonAirlineDto> readAll();
 
	public JsonAirlineDto update(JsonAirlineDto Airline) throws DuplicateAirlineException ;
 
	public JsonAirlineDto delete(Long id);
}
