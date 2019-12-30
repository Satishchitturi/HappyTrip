package com.happytrip.services.impl;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.happytrip.dao.*;
import com.happytrip.dao.report.ReportDao;
import com.happytrip.model.*;
import com.happytrip.model.reports.AirlineReport;
import com.happytrip.model.reports.ScheduledFlightReport;

import com.happytrip.services.AdminService;
import com.happytrip.util.transformer.AirlineModelTransformer;
import com.happytrip.util.transformer.ScheduledFlightModelTransformer;

@Service(value="adminService")
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	private AirlineDao airlineDao;
	
	@Autowired
	private FlightDao flightDao;
	
	@Autowired
	private LookupDao lookupDao;
	
	@Autowired
	private CityDao cityDao;
	
	@Autowired
	private RouteDao routeDao;
	
	@Autowired	
	private FlightRouteDao flightRouteDao;
	
	@Autowired
	private BackupDao backupDao;
	
	@Autowired
	private GenericDao genericDao;
	
	@Autowired
	private ReportDao reportDao;
	

	@Override
	public void addFlight(Flight flight, String airlineCode) {
		Airline airline = airlineDao.findByAirlineCode(airlineCode);
		flight.setAirline(airline);
		flightDao.save(flight);
	}

	@Override
	public boolean isDuplicateFlight(Flight flight) {
		Flight f= flightDao.findByFlightName(flight.getFlightName());
		return null != f;
	}

	@Override
	public void addRoute(Route route) {
			routeDao.save(route);
	}

	@Override
	public boolean isDuplicateRoute(String fromCity, String toCity) {
		Route r= routeDao.findByCityNames(fromCity, toCity);
		return null != r;
	}

	@Override
	public void addAirline(Airline airline) {
			airlineDao.save(airline);
			AirlineReport airlineReport = AirlineModelTransformer
					.transformToAirlineReport(airline);
			reportDao.storeAirlinesReport(airlineReport);
	}

	@Override
	public boolean isDuplicateAirline(Airline airline) {
		Airline air = airlineDao.findByAirlineCode(airline.getAirlineCode());
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
	public void addFlightSchedule(ScheduledFlight scheduledFlight) {
		flightRouteDao.saveScheduledFlight(scheduledFlight);
		ScheduledFlightReport scheduleFlightReport = ScheduledFlightModelTransformer
				.transformToScheduleReport(scheduledFlight);
		reportDao.storeScheduledFlighReport(scheduleFlightReport);
		
	}

	@Override
	public Flight getFlightById(long flightId) {
		return flightDao.findByFlightId(flightId);
	}

	@Override
	public List<FlightCapacity> getCapacitiesForFlightId(long flightId) {
		return flightDao.getCapacitiesForFlightId(flightId);
	}

	@Override
	public Route getRouteByCityNames(String fromCity, String toCity) {
		return routeDao.findByCityNames(fromCity, toCity);
	}

}
