package com.happytrip.services.impl;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.happytrip.dao.BackupDao;
import com.happytrip.dao.CityDao;
import com.happytrip.dao.FlightBookingDao;
import com.happytrip.dao.FlightRouteDao;
import com.happytrip.dao.report.ReportDao;
import com.happytrip.model.City;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.FlightClass;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.reports.BookingReport;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.InvalidCityException;
import com.happytrip.services.JourneyDateBeyondLimitException;
import com.happytrip.util.transformer.FlightBookingModelTransformer;
@Service
public class FlightBookingServiceImpl implements FlightBookingService {

	@Autowired
	private FlightRouteDao flightRouteDao;
	
	@Autowired
	private FlightBookingDao flightBookingDao;
	
	@Autowired
	private BackupDao backupDao;
	
	@Autowired
	private CityDao cityDao;
	
	@Autowired
	private ReportDao reportDao;
	
	@Override
	public List<City> findAllFromCities(String cityName) {
		// TODO Auto-generated method stub
		return flightRouteDao.findAllFromCities(cityName);
	}

	
	@Override
	public List<City> findAllCitiesFlownFrom(String cityName) {
		// TODO Auto-generated method stub
		return flightRouteDao.findAllToCity(cityName);
	}

	@Override
	public List<ScheduledFlight> searchFlights(String fromCity, String toCity,
			FlightClass classOfFlight, int paxNo, Date departureDate) throws InvalidCityException, JourneyDateBeyondLimitException{
		// TODO Auto-generated method stub
		
		// Check if the cities are valid
		if(cityDao.findCityByName(fromCity) == null){
			throw new InvalidCityException("From city is not valid");
		}
		if(cityDao.findCityByName(toCity)==null){
			throw new InvalidCityException("To city is not valid");
		}
		
		return flightRouteDao.searchFlights(fromCity, toCity, departureDate,
				classOfFlight, paxNo);
	}

	@Override
	public void bookFlight(FlightBooking flightBooking) {
		flightBookingDao.save(flightBooking);
		BookingReport bookingReport = FlightBookingModelTransformer.transformToBookingReport(flightBooking);
		reportDao.storeBookingReport(bookingReport );
	}


	@Override
	public ScheduledFlight searchScheduledFlightById(long id){
		return flightRouteDao.findScheduledFlightById(id);
	}
}
