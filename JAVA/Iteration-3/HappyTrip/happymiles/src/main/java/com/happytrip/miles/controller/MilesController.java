package com.happytrip.miles.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.happytrip.miles.HappyMile;
import com.happytrip.miles.HappyMilesService;

@Controller
@RequestMapping("/miles")
public class MilesController implements HappyMilesService {

	private static List<HappyMile> miles = new ArrayList<HappyMile>();
	private static Map<String, HappyMile> milesMap = new HashMap<String, HappyMile>();

	public MilesController() {
		// TODO Auto-generated constructor stub
	}

	public static void addMiles(HappyMile mile) {
		miles.add(mile);
		milesMap.put(mile.getAilineName(), mile);
	}

	@RequestMapping(value = "/{airlineName}", method = RequestMethod.GET)
	@ResponseBody
	public HappyMile getForAirlineName(
			@PathVariable("airlineName") String airlineName) {
		// TODO Auto-generated method stub
		System.out.println("Getting mile for airline " + airlineName);
		HappyMile mile = milesMap.get(airlineName);
		if (mile == null) {
			mile = new HappyMile();
			mile.setAvailable(false);
			System.out.println("Setting mile as false");
			return mile;
		} else {
			System.out.println("Setting mile as true");
			return mile;
		}

	}

}
//Add appropriate comments