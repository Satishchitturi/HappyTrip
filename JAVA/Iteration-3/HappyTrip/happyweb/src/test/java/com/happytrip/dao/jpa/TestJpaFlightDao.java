package com.happytrip.dao.jpa;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.happytrip.dao.AirlineDao;
import com.happytrip.dao.FlightDao;
import com.happytrip.model.Airline;
import com.happytrip.model.Flight;
import com.happytrip.services.AdminService;
import com.happytrip.services.DuplicateFlightNameException;
import com.happytrip.util.SessionFactoryUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/test-root-context.xml"})
public class TestJpaFlightDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private FlightDao flightDao;
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private AirlineDao airlineDao;
	
	@Before
	public void setup(){
		SessionFactoryUtil.setSessionFactor(sessionFactory);
	}
	
	@Test
	public void testSaveAndFindAll_FlightIsValid()
	{
		String airlineCode = "Code123";
		Airline airline = new Airline();
		airline.setAirlineCode(airlineCode);
		airline.setAirlineName("airlinename");
		airlineDao.save(airline);
		Flight flight=new Flight();
		flight.setAirline(airline);
		flight.setFlightId(11);
		String flightName="flightName";
		flight.setFlightName(flightName);
		
		try {
			adminService.addFlight(flight, airlineCode);
		} catch (DuplicateFlightNameException e) {
			// TODO Auto-generated catch block
			fail(e.getMessage());
		}
		
		Flight fetchedFlight = flightDao.findByFlightName(flightName);
		assertEquals("flightName", fetchedFlight.getFlightName());
	}
	
	


}
