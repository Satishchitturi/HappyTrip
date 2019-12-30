package com.happytrip.util.transformer;

import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.controllers.dto.flight.AirlineDto;
import com.happytrip.model.Airline;

public final class AirlineModelTransformer {

	private AirlineModelTransformer(){}
	
	public static AirlineDto transform(Airline airline){
		AirlineDto airlineDto = new AirlineDto();
		airlineDto.setAirlineCode(airline.getAirlineCode());
		airlineDto.setAirlineId(airline.getAirlineId());
		airlineDto.setAirlineLogo(airline.getAirlineLogo());
		airlineDto.setAirlineName(airline.getAirlineName());
		//airlineDto.setFlights(airline.getFlights());
		return airlineDto;
	}
	
	public static Airline transform(AirlineDto airlineDto){
		Airline airline = new Airline();
		airline.setAirlineCode(airlineDto.getAirlineCode());
		airline.setAirlineId(airlineDto.getAirlineId());
		airline.setAirlineLogo(airlineDto.getAirlineLogo());
		airline.setAirlineName(airlineDto.getAirlineName());
		//airline.setFlights(airlineDto.getFlights());
		return airline;
	}
	
	
	public static JsonAirlineDto transformToJson(Airline airline){
		JsonAirlineDto airlineDto = new JsonAirlineDto();
		airlineDto.setAirlineCode(airline.getAirlineCode());
		airlineDto.setId(airline.getAirlineId());
		airlineDto.setAirlineLogo(airline.getAirlineLogo());
		airlineDto.setAirlineName(airline.getAirlineName());
		//airlineDto.setFlights(airline.getFlights());
		return airlineDto;
	}
	
	public static Airline transform(JsonAirlineDto airlineDto){
		Airline airline = new Airline();
		airline.setAirlineCode(airlineDto.getAirlineCode());
		airline.setAirlineId(airlineDto.getId());
		airline.setAirlineLogo(airlineDto.getAirlineLogo());
		airline.setAirlineName(airlineDto.getAirlineName());
		//airline.setFlights(airlineDto.getFlights());
		return airline;
	}
}
