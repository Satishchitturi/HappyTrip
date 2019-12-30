package com.happytrip.services.impl;

import java.io.IOException;
import java.util.Properties;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.happytrip.miles.HappyMile;
import com.happytrip.miles.HappyMilesService;
import com.happytrip.util.StringUtil;

@Service
public class HappyTripMilesService implements HappyMilesService {

	private String airlineMilesUrl = null;

	public HappyTripMilesService(){
		try {
			Properties props = StringUtil.getPropertiesFromClasspath("data/data.properties");
			airlineMilesUrl = props.getProperty("airlines_miles_service");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	//	@RequestMapping(value = "/{airlineName}", method = RequestMethod.GET)
	public HappyMile getForAirlineName(String airlineName) {
		// TODO Auto-generated method stub
		RestTemplate restTemplate = new RestTemplate();
		return restTemplate.getForObject(airlineMilesUrl, HappyMile.class,
				airlineName);
	}

}
