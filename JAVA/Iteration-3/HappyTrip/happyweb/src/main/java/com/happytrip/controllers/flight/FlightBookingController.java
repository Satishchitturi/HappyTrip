package com.happytrip.controllers.flight;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.controllers.dto.flight.FlightSelectionDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.FlightRouteDao;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.User;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.AuthenticatedUserUtil;

@Controller
@SessionAttributes({"SearchData","SelectedFlights","PassengerList"})
public class FlightBookingController {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(FlightBookingController.class);

	@Autowired
	private UserProfileService profileService;
	
	@Autowired
	private FlightRouteDao flightRouteDao;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(
	            dateFormat, false));
	}
	
	@ModelAttribute("PassengerList")
	public PassengerListDto getPassengerList(){
		User user = AuthenticatedUserUtil.currentLoggedInUser(profileService);
		PassengerListDto listOfPassengers = new PassengerListDto();
		if(user != null){
			Passenger passenger = new Passenger();
			passenger.setDateOfBirth(user.getDateOfBirth());
			passenger.setName(user.getFullName());
			passenger.setGender(user.getGender());
			if(user.getGender() != null && user.getGender().equals("male")){
				passenger.setTitle("Mr");
			}else{
				passenger.setTitle("Ms");
			}
			if(user.getUserContact() != null){
				listOfPassengers.setMobileNumber(user.getUserContact().getMobileNo());
			}
			
			LOGGER.info("Adding passenger " + passenger);
			listOfPassengers.getPassengers().add(0, passenger);
		}
		return listOfPassengers;
	}
	
	
	@RequestMapping(value = "/flight/bookSelectedFlights.html", method = RequestMethod.POST)
	public String bookSelectedFlights(
			@ModelAttribute("SelectedFlights") FlightSelectionDto selectedFlights,
			@ModelAttribute("SearchData") FlightSearchDto searchData, Model model){
		ScheduledFlight selectedOutbound = selectedFlights.getSelectedOutboundFlight();
		ScheduledFlight selectedReturn = selectedFlights.getSelectedReturnFlight();
		
		if(selectedOutbound != null){
			selectedFlights.setSelectedOutboundFlight(flightRouteDao.findDetailsById(
					selectedOutbound.getFlightRouteId(), searchData.getFlightClass()));
		}
		if(selectedReturn != null){
			selectedFlights.setSelectedReturnFlight(flightRouteDao.findDetailsById(
					selectedReturn.getFlightRouteId(), searchData.getFlightClass()));
		}
		User user = AuthenticatedUserUtil.currentLoggedInUser(profileService);
		if(user != null){
			model.addAttribute("mobileNumber", user.getUserContact().getMobileNo());
		} else {
			model.addAttribute("mobileNumber", "");
		}
		
		return "/flight/addPassengers";
	}

	@ExceptionHandler(Throwable.class)
	public String adminError(){
		return "/resultError";
	}
	
	@RequestMapping(value="/error404")
	public String get404() {
	    return "/resultError";
	}

}
