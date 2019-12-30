package com.happytrip.controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;

import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.model.City;
import com.happytrip.services.FlightBookingService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(HomeController.class);

	@Autowired
	private FlightBookingService search;

	public void setSearch(FlightBookingService search) {
		this.search = search;
	}

	@ModelAttribute("SearchData")
	public FlightSearchDto getSearchData() {
		return new FlightSearchDto();
	}

	@RequestMapping(value = "/cities", method = RequestMethod.GET)
	@ResponseBody
	public List<City> cities(@RequestParam("term") String term) {

		try {
			List<City> cities = listAllCities(term);
			for (City city : cities) {
				city.setCityName(city.getCityName()+" ("+city.getState().getStateName()+")");
				city.setState(null);
			}
			return cities;
		} catch (Exception e) {
			LOGGER.info(e.getMessage());
		}
		return new ArrayList<City>();
	}
	
	List<City> listAllCities(String term){
		return search.findAllFromCities(term);
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home.html", method = RequestMethod.GET)
	public String home(WebRequest request,Locale locale, Model model) {
		LOGGER.info("Welcome home! the client locale is " + locale.toString());
		try{
			request.removeAttribute("SelectedFlights", WebRequest.SCOPE_SESSION);
			request.removeAttribute("PassengerList", WebRequest.SCOPE_SESSION);
			request.removeAttribute("Bookings", WebRequest.SCOPE_SESSION);
		} catch(Exception e) {
			e.printStackTrace();
			return "home";
		}
		return "home";
	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String welcome(Locale locale, Model model) {
		LOGGER.info("Welcome home! the client locale is " + locale.toString());
		return "adminLogin";
	}

	@ExceptionHandler(Throwable.class)
	public String adminError(Throwable t){
		LOGGER.error("Exception", t);
		return "/resultError";
	}

}
