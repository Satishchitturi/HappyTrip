package com.happytrip.dao;

import java.util.List;

import com.happytrip.model.Airline;

public interface AirlineDao {
	public void save(Airline airline);
	public Airline findByAirlineId(long code);
	public Airline findByAirlineCode(String code);
	public Airline findAnotherAirlineWithCode(Airline airline);
	public Airline findAnotherAirlineWithName(Airline airline);
	public Airline findByAirlineName(String airlineName);
	public List<Airline> findAll();
	public Airline updateAirline(Airline airline);
	public Airline deleteAirline(Long id);
}
