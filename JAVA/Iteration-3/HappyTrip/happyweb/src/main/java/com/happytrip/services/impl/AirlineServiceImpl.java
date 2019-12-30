package com.happytrip.services.impl;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.dao.AirlineDao;
import com.happytrip.model.Airline;
import com.happytrip.services.AdminService;
import com.happytrip.services.AirlineService;
import com.happytrip.services.DuplicateAirlineException;
import com.happytrip.util.transformer.AirlineModelTransformer;

@Service(value="airlineService")
public class AirlineServiceImpl implements AirlineService{
	private static final Logger LOGGER = LoggerFactory
			.getLogger(AirlineServiceImpl.class);

	@Autowired
	AirlineDao airlineDao = null;
	
	@Override
	public Airline create(JsonAirlineDto Airline) {
		Airline airline = AirlineModelTransformer.transform(Airline);
		return null;
	}

	@Override
	public Airline read(Long id) {
		return airlineDao.findByAirlineId(id);
	}

	@Override
	public List<JsonAirlineDto> readAll() {
		List<JsonAirlineDto> airlineDtos = new ArrayList<>();
		for(Airline airline : airlineDao.findAll())
		{
			airlineDtos.add(AirlineModelTransformer.transformToJson(airline));
		}
		return airlineDtos;
	}

	@Override
	public JsonAirlineDto update(JsonAirlineDto airlineDto) throws DuplicateAirlineException {
		Airline airline = AirlineModelTransformer.transform(airlineDto);
		if(!isDuplicateAirline(airline)){
			return AirlineModelTransformer.transformToJson(airlineDao.updateAirline(airline));
		}else{
			throw new DuplicateAirlineException("Airline name or code is duplicate");
		}
	}
	
	public boolean isDuplicateAirline(Airline airline) {
		LOGGER.info("Finding airline by code");
		Airline air = airlineDao.findAnotherAirlineWithCode(airline);
		if (air == null) {
			LOGGER.info("Finding airline by name");
			air = airlineDao.findAnotherAirlineWithName(airline);
		}
		LOGGER.info("Found " + air);
		return null != air;
	}


	@Override
	public JsonAirlineDto delete(Long id) {
		return AirlineModelTransformer.transformToJson(airlineDao.deleteAirline(id));
	}

}
