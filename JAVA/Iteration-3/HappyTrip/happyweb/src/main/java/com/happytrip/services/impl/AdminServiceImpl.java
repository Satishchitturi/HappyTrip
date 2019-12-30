package com.happytrip.services.impl;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;

import com.happytrip.controllers.AdminController;
import com.happytrip.controllers.dto.flight.ScheduledFlightDto;
import com.happytrip.dao.*;

import com.happytrip.model.*;

import com.happytrip.services.AdminService;
import com.happytrip.services.DuplicateAirlineException;
import com.happytrip.services.DuplicateCityException;
import com.happytrip.services.DuplicateFlightNameException;
import com.happytrip.services.DuplicateScheduleException;
import com.happytrip.util.backup.ScheduledFlightBackup;
import com.happytrip.util.transformer.ScheduledFlightModelTransformer;

@Service(value = "adminService")
public class AdminServiceImpl implements AdminService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(AdminServiceImpl.class);

	@Autowired
	private AirlineDao airlineDao;

	@Autowired
	private FlightDao flightDao;

	@Autowired
	private LookupDao lookupDao;

	@Autowired
	private CityDao cityDao;

	@Autowired
	private StateDao stateDao;

	@Autowired
	private RouteDao routeDao;

	@Autowired
	private FlightRouteDao flightRouteDao;

	@Autowired
	private BackupDao backupDao;

	@Autowired
	private GenericDao genericDao;

	@Override
	public void addFlight(Flight flight, String airlineCode) throws DuplicateFlightNameException {
		if (flightDao.findByFlightName(flight.getFlightName()) == null) {
			Airline airline = airlineDao.findByAirlineCode(airlineCode);
			flight.setAirline(airline);
			flightDao.save(flight);
		}else{
			throw new DuplicateFlightNameException("Flight Name already exists");
		}
	}

	@Override
	public boolean isDuplicateFlight(Flight flight) {
		Flight f = flightDao.findByFlightName(flight.getFlightName());
		return null != f;
	}

	@Override
	public void addRoute(Route route) {
		routeDao.save(route);
	}

	@Override
	public boolean isDuplicateRoute(City fromCity, City toCity) {
		Route r = routeDao.findByCities(fromCity, toCity);
		return null != r;
	}

	@Override
	public void addAirline(Airline airline) throws DuplicateAirlineException {
		if(!isDuplicateAirline(airline)){
			airlineDao.save(airline);
		}else{
			throw new DuplicateAirlineException("Airline name or code is duplicate");
		}
	}

	@Override
	public boolean isDuplicateAirline(Airline airline) {
		LOGGER.info("Finding airline by code");
		Airline air = airlineDao.findByAirlineCode(airline.getAirlineCode());
		if (air == null) {
			LOGGER.info("Finding airline by name");
			air = airlineDao.findByAirlineName(airline.getAirlineName());
		}
		LOGGER.info("Found " + air);
		return null != air;
	}

	@Override
	public List<Airline> getAllAirlines() {
		return airlineDao.findAll();
	}

	@Override
	public FlightClass getClassForName(String className) {
		return lookupDao.findForClassName(className);
	}

	@Override
	public Airline getAirlineByCode(String code) {
		return airlineDao.findByAirlineCode(code);
	}

	@Override
	public List<City> getAllCities() {
		return cityDao.getAllCities();
	}

	@Override
	public City getCityByName(String name) {
		return cityDao.findCityByName(name);
	}

	@Override
	public List<Flight> getAllFlights() {
		return flightDao.getAllFlights();
	}

	@Override
	public List<Route> getAllRoutes() {
		return routeDao.getAllRoutes();
	}

	@Override
	public List<FlightClass> getAllFlightClasses() {
		return lookupDao.findAllFlightClasses();
	}

	@Override
	public void addFlightSchedule(ScheduledFlight scheduledFlight) throws DuplicateScheduleException {
		if(!flightRouteDao.machingScheduledFlightExists(scheduledFlight)){
			flightRouteDao.saveScheduledFlight(scheduledFlight);
		}else{
			throw new DuplicateScheduleException("The flight is already scheduled at the given time");
		}
	}

	@Override
	public Flight getFlightById(long flightId) {
		return flightDao.findByFlightId(flightId);
	}

	@Override
	public List<FlightCapacity> getCapacitiesForFlightId(long flightId) {
		return flightDao.getCapacitiesForFlightId(flightId);
	}

	public void setAirlineDao(AirlineDao airlineDao) {
		this.airlineDao = airlineDao;
	}

	public void setFlightDao(FlightDao flightDao) {
		this.flightDao = flightDao;
	}

	public void setLookupDao(LookupDao lookupDao) {
		this.lookupDao = lookupDao;
	}

	public void setCityDao(CityDao cityDao) {
		this.cityDao = cityDao;
	}

	public void setRouteDao(RouteDao routeDao) {
		this.routeDao = routeDao;
	}

	public void setFlightRouteDao(FlightRouteDao flightRouteDao) {
		this.flightRouteDao = flightRouteDao;
	}

	public void setBackupDao(BackupDao backupDao) {
		this.backupDao = backupDao;
	}

	public void setGenericDao(GenericDao genericDao) {
		this.genericDao = genericDao;
	}

	@Override
	public void addCity(City city) throws DuplicateCityException {
		// TODO Auto-generated method stub
		if (this.cityDao.findCityInStateByName(city.getCityName(), city
				.getState().getStateId()) == null) {
			this.cityDao.save(city);
		} else {
			throw new DuplicateCityException(
					"The City has already been added to the state.");
		}
	}

	@Override
	public void addState(State state) {
		// TODO Auto-generated method stub
		this.stateDao.save(state);
	}

	@Override
	public List<State> getAllStates() {
		// TODO Auto-generated method stub
		return this.stateDao.findAll();
	}

}
