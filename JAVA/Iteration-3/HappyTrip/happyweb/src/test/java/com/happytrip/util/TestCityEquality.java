package com.happytrip.util;

import static org.junit.Assert.*;

import java.util.Set;
import java.util.TreeSet;

import org.junit.Test;

import com.happytrip.model.City;
import com.happytrip.model.State;

public class TestCityEquality {

	@Test
	public void test() {
		City city1 = new City();
		city1.setCityId(1);
		city1.setCityName("Bangalore");
		
		State state1 = new State();
		
		state1.setStateId(1);
		state1.setStateName("T");
		city1.setState(state1);
		
		City city2 = new City();
		city2.setCityId(2);
		city2.setCityName("Bangalore");
		State state2 = new State();
		
		state2.setStateId(1);
		state2.setStateName("TN");
		
		city2.setState(state2);
		Set<City> cities = new TreeSet<City>();
		cities.add(city1);
		cities.add(city2);
		
		assertEquals(2,cities.size());
	}

}
