package com.happytrip.dao.jpa;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring/test-root-context.xml"})
public class TestJpaFlightRouteDao {

	@Test
	public void testSearchFlights() {
	}

	@Test
	public void testSaveScheduledFlight() {
	}

	@Test
	public void testUpdateAvailability() {
	}

	@Test
	public void testFindAllFlightsForDuration() {
	}

	@Test
	public void testFindAllFlightsForDate() {
	}

}
