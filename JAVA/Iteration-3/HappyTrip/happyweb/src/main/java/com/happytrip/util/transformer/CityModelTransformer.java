package com.happytrip.util.transformer;

import java.util.ArrayList;
import java.util.List;

import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.model.City;
import com.happytrip.model.State;

public class CityModelTransformer {

	public static JsonCityDto transform(City city)
	{
		JsonCityDto jsonCityDto = new JsonCityDto();
		jsonCityDto.setCityName(city.getCityName());
		jsonCityDto.setId(city.getCityId());
		jsonCityDto.setStateName(city.getState().getStateName());
		jsonCityDto.setStateId(city.getState().getStateId());
		return jsonCityDto;
	}
	
	public static City transform(JsonCityDto jsonCityDto)
	{
		City city = new City();
		city.setCityId(jsonCityDto.getId());
		city.setCityName(jsonCityDto.getCityName());
		State state = new State();
		state.setStateId(jsonCityDto.getStateId());
		city.setState(state);
		return city;
	}

	public static List<JsonCityDto> transform(List<City> allCities) {
		List<JsonCityDto> cities = new ArrayList<JsonCityDto>();
		for(City c : allCities)
		{
			JsonCityDto jsonCityDto = new JsonCityDto();
			jsonCityDto.setId(c.getCityId());
			jsonCityDto.setCityName(c.getCityName());
			jsonCityDto.setStateName(c.getState().getStateName());
			jsonCityDto.setStateId(c.getState().getStateId());
			cities.add(jsonCityDto);
		}
		return cities;
	}
}
