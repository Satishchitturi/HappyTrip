package com.happytrip.dao.jpa;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import com.happytrip.dao.AirlineDao;
import com.happytrip.exception.DaoException;
import com.happytrip.model.Airline;
import com.happytrip.util.SessionFactoryUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/test-root-context.xml"})
public class TestJpaAirlineDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired
	private AirlineDao airlineDao;
	
	@Before
	public void setup(){
		SessionFactoryUtil.setSessionFactor(sessionFactory);
	}


	@Test
	public void testFindAll() {
		assertNotNull(airlineDao.findAll());
	}
	
	/*@Test
	public void testSaveAndFindAll_AirlineIsValid()
	{
		String airlineCode = "Code123";
		Airline airline = new Airline();
		airline.setAirlineCode(airlineCode);
		airline.setAirlineLogo("airlinelogo");
		airline.setAirlineName("airlinename");
		airlineDao.save(airline);
		Airline fetchedAirline = airlineDao.findByAirlineCode(airlineCode);
		assertEquals(airlineCode, fetchedAirline.getAirlineCode());
		
	}*/

	/*@Test
	public void testSaveNullAirline()
	{
		try {
			Airline airline = new Airline();
			airlineDao.save(airline);
			fail();
		} catch (NullPointerException e) {
			assertTrue(true);
		}
		
	}*/
}
