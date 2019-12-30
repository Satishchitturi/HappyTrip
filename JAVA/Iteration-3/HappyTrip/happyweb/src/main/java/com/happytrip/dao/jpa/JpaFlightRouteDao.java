package com.happytrip.dao.jpa;

import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.happytrip.dao.FlightRouteDao;
import com.happytrip.dao.SeatsExhaustedException;
import com.happytrip.model.City;
import com.happytrip.model.FlightClass;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.SeatAvailability;
import com.happytrip.util.SessionFactoryUtil;

@Repository
public class JpaFlightRouteDao implements FlightRouteDao {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(JpaFlightRouteDao.class);

	private HibernateTemplate getHibernateTemplate() {
		return SessionFactoryUtil.getHibernateTemplate();
	}

	@Transactional
	@Override
	public List<ScheduledFlight> searchFlights(long fromCity, long toCity,
			Date dateOfTravel, FlightClass classOfFlight, int paxNo, String departureTimeLag) {
		// TODO Auto-generated method stub
		String searchQuery = "select fr from ScheduledFlight fr "
				+ "join fetch fr.route route "
				+ " join fr.availability avail"
				+ " join fetch fr.flightRouteCosts costs "
				+ " join fetch fr.flight fl "
				+ " join fetch fl.airline air "
				+ " where"
				+ " route.fromCity.cityId like ? and route.toCity.cityId like ? and "
				+ " fr.scheduledFlightDate=? and avail.flightClass like ? and "
				+ " avail.availableSeats>=? and costs.flightClass like ? and fr.departureTime>=? order by costs.costPerTicket asc";
		List<ScheduledFlight> flights = getHibernateTemplate().find(
				searchQuery, fromCity, toCity, dateOfTravel, classOfFlight,
				paxNo, classOfFlight, departureTimeLag);

		return flights;
	}

	@Override
	public List<City> findAllFromCities(String fromCity) {
		// TODO Auto-generated method stub
		LOGGER.info("Searching for city " + fromCity);
		String searchQuery = "select distinct(city) from City city where"
				+ " city.cityName like ? order by city.cityName asc";
		List<City> cities = getHibernateTemplate().find(searchQuery,
				fromCity + "%");
		Set<City> uniqueCities = new TreeSet<City>();
		uniqueCities.addAll(cities);
		cities.clear();
		cities.addAll(uniqueCities);

		return cities;
	}

	@Override
	public List<City> findAllToCity(String fromCity) {
		// TODO Auto-generated method stub
		String searchQuery = "select toc route.toc toCity from Route route where"
				+ " route.fromCity like ?";
		List<City> cities = getHibernateTemplate().find(searchQuery, fromCity);
		Set<City> uniqueCities = new TreeSet<City>();
		uniqueCities.addAll(cities);
		cities.clear();
		cities.addAll(uniqueCities);
		return cities;
	}

	@Override
	public void saveScheduledFlight(ScheduledFlight scheduledFlight) {
		getHibernateTemplate().save(scheduledFlight);

	}

	public void updateAvailability(int paxNo, ScheduledFlight flight,
			FlightClass flightClass) throws SeatsExhaustedException {
		String seatAvailabilitySearch = "from SeatAvailability sa where sa.scheduledFlight like ? "
				+ "and sa.flightClass like ?";
		List<SeatAvailability> seats = getHibernateTemplate().find(
				seatAvailabilitySearch, flight, flightClass);
		if (seats != null && !seats.isEmpty()) {
			SeatAvailability availability = seats.get(0);
			int seatsAvailable = availability.getAvailableSeats();
			if (seatsAvailable < paxNo) {
				throw new SeatsExhaustedException("Seats not available");
			} else {
				availability.setAvailableSeats(seatsAvailable - paxNo);
				getHibernateTemplate().update(availability);
			}
		} else {
			throw new SeatsExhaustedException("Unable to find seats");
		}
	}

	@Override
	public ScheduledFlight findDetailsById(long id, String classOfFlight) {
		// TODO Auto-generated method stub
		String searchQuery = "select flight from ScheduledFlight flight "
				+ "join fetch flight.flightRouteCosts costs where  "
				+ "flight.flightRouteId like ? and costs.flightClass.classType like ?";
		List<ScheduledFlight> flights = getHibernateTemplate().find(
				searchQuery, id, classOfFlight);
		if (flights != null && !flights.isEmpty()) {
			return flights.get(0);
		}
		return null;
	}

	@Override
	public List<ScheduledFlight> findAllFlightsForDuration(Date startDate,
			Date endDate) {
		return null;
	}

	@Override
	public List<ScheduledFlight> findAllFlightsForDate(Date date) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		String searchQuery = "select distinct(flight) from ScheduledFlight flight "
				+ "join fetch flight.availability avail join fetch flight.flight f " +
				" join fetch f.airline a join fetch avail.flightClass fclass join fetch flight.route route " +
				" where  "
				+ "flight.scheduledFlightDate = ? order by flight.departureTime";
		List<ScheduledFlight> flights = getHibernateTemplate().find(
				searchQuery, date);
		return flights;
	}

	@Override
	public boolean machingScheduledFlightExists(ScheduledFlight scheduledFlight) {
		// TODO Auto-generated method stub
		String searchQuery = "select flight from ScheduledFlight flight "
				+ " where  "
				+ "flight.scheduledFlightDate like ? and flight.arrivalTime like ? and flight.departureTime like ?" +
				" and flight.route like ? and flight.flight like ?";
		List<ScheduledFlight> flights = getHibernateTemplate().find(
				searchQuery, scheduledFlight.getScheduledFlightDate(), scheduledFlight.getArrivalTime(), scheduledFlight.getDepartureTime(),
				scheduledFlight.getRoute(), scheduledFlight.getFlight());
		if(flights != null && !flights.isEmpty()){
			return true;
		}
		return false;
	}
}
