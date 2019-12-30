package com.happytrip.services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.dao.CityDao;
import com.happytrip.model.City;
import com.happytrip.services.CityService;
import com.happytrip.util.transformer.CityModelTransformer;

@Service(value="cityService")
public class CityServiceImpl implements CityService{

	@Autowired
	CityDao cityDao ;
	
	@Override
	public City create(JsonCityDto Airline) {
		City city = CityModelTransformer.transform(Airline);
		cityDao.save(city);
		return null;
	}

	@Override
	public City read(Long id) {
		City city = new City();
		city.setCityId(id);
		return cityDao.findCity(city);
	}

	@Override
	public List<JsonCityDto> readAll() {
		return CityModelTransformer.transform(cityDao.getAllCities());
	}

	@Override
	public JsonCityDto update(JsonCityDto cityDto) {
		return CityModelTransformer.transform(cityDao.updateCity( CityModelTransformer.transform(cityDto)));
	}

	@Override
	public JsonCityDto delete(Long id) {
		return null;
	}

}
