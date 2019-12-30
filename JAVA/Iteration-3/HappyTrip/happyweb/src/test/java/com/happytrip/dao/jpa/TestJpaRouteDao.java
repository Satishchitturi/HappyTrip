package com.happytrip.dao.jpa;

import static org.junit.Assert.*;
import static org.junit.Assert.assertEquals;

import java.util.List;

import org.hibernate.SessionFactory;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.happytrip.dao.CityDao;
import com.happytrip.dao.RouteDao;
import com.happytrip.model.City;
import com.happytrip.model.Route;
import com.happytrip.util.SessionFactoryUtil;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring/test-root-context.xml" })
public class TestJpaRouteDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Autowired
	private RouteDao routeDao;

	@Autowired
	private CityDao cityDao;

	@Before
	public void setup() {
		SessionFactoryUtil.setSessionFactor(sessionFactory);
	}

	// Preethi m1021538 this will test whether it is saved.

	@Test
	public void testgetAllRoutes() {
		

		// routeDao.save(route);

		try {
			Route route = new Route();
			City city1 = new City();
			city1.setCityName("Bangalore");
			cityDao.save(city1);
			City city2 = new City();
			city2.setCityName("Chennai");
			cityDao.save(city2);
			route.setFromCity(city1);
			route.setToCity(city2);
			routeDao.save(route);
			List<Route> routes = routeDao.getAllRoutes();
			assertEquals(
					route.getRouteId(),
					routeDao.findByCityNames(route.getFromCity().getCityName(),
							route.getToCity().getCityName()).getRouteId());
		} catch (Exception e) {
			e.printStackTrace();
			fail();
		}

	}

}
