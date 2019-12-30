package com.happytrip.dao.jpa;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.happytrip.dao.FlightRouteDao;
import com.happytrip.model.City;
import com.happytrip.model.FlightClass;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaFlightRouteDao implements FlightRouteDao {
	private static final Logger LOGGER = LoggerFactory.getLogger(JpaFlightRouteDao.class);

	private HibernateTemplate getHibernateTemplate(){
		return SessionFactoryUtil.getHibernateTemplate();
	}


	@Transactional
	@Override
	public List<ScheduledFlight> searchFlights(String fromCity, 
			String toCity, Date dateOfTravel, FlightClass classOfFlight,int paxNo) {
		
		System.out.println("Search Details::toCity"+toCity+"Date Of Travel"+dateOfTravel.toString()+"Flight Class"+classOfFlight.getClassId()+"Flight Class Name"+classOfFlight.getClassType());
		// TODO Auto-generated method stub
		String searchQuery = 
				"select fr from ScheduledFlight fr " +
				"join fetch fr.route route " +
				" join fr.availability avail" +
				" join fetch fr.flightRouteCosts costs " +
				" join fetch fr.flight fl " +
				" join fetch fl.airline air " +
				" where" +
				" route.fromCity.cityName like ? and route.toCity.cityName like ? and " +
				" fr.scheduledFlightDate=? and avail.flightClass like ? and " +
				" avail.availableSeats>? and costs.flightClass like ?";
		List<ScheduledFlight> flights = getHibernateTemplate().find(searchQuery,fromCity, toCity,dateOfTravel,classOfFlight,paxNo,classOfFlight);
		System.out.println(flights);
		if(paxNo>2){
			for(int i=0 ; i<=flights.size();i++){
				LOGGER.debug(flights.get(i).getArrivalTime());
			}
		}
		return flights;
	}

	@Override
	public List<City> findAllFromCities(String fromCity) {
		// TODO Auto-generated method stub
		String searchQuery = "from City city where" +
		" city.cityName like ?";
		return getHibernateTemplate().find(searchQuery, fromCity+"%");
	}

	@Override
	public List<City> findAllToCity(String fromCity) {
		// TODO Auto-generated method stub
		String searchQuery = "select route.toCity from Route route where" +
		" route.fromCity like ?";
		return getHibernateTemplate().find(searchQuery, fromCity);
	}


	@Override
	public void saveScheduledFlight(ScheduledFlight scheduledFlight) {
		getHibernateTemplate().save(scheduledFlight);
		
	}


	@Override
	public ScheduledFlight findDetailsById(long id, String classOfFlight) {
		// TODO Auto-generated method stub
		String searchQuery = "select flight from ScheduledFlight flight " +
				"join fetch flight.flightRouteCosts costs where  " +
				"flight.flightRouteId like ? and costs.flightClass.classType like ?";
		List<ScheduledFlight> flights = getHibernateTemplate().find(searchQuery, id, classOfFlight);
		if(flights != null && !flights.isEmpty()){
			return flights.get(0);
		}
		return null;	
	}


	@Override
	public ScheduledFlight findScheduledFlightById(long id){
		String searchQuery = "select flight from ScheduledFlight flight where flight.flightRouteId = ?";
		List<ScheduledFlight> flights = getHibernateTemplate().find(searchQuery, id);
		if(flights != null && !flights.isEmpty()){
			return flights.get(0);
		}
		return null;
	}


	@Override
	public ScheduledFlight findScheduledFlightByIdAndDate(String date, long id) {
		// TODO Auto-generated method stub
		
		
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		String searchQuery="from ScheduledFlight sf " +
				"WHERE sf.scheduledFlightDate ='"+sdf.format(new Date(date))+"' " +
				"AND sf.flight.flightId=?";
		List<ScheduledFlight> flights;
		
			flights = getHibernateTemplate().find(searchQuery, id );
			if(flights != null && !flights.isEmpty()){
				return flights.get(0);
			}
		
		return null;
	}
	}
