package com.happytrip.controllers.flight;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.happytrip.controllers.dto.flight.FlightBookingDto;
import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.controllers.dto.flight.FlightSelectionDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.LookupDao;
import com.happytrip.model.Booking;
import com.happytrip.model.BookingContact;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.FlightRouteCost;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.User;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.AuthenticatedUserUtil;
import com.happytrip.util.StringUtil;

@Controller
@SessionAttributes({ "SearchData", "SelectedFlights", "PassengerList",
		"Bookings" })
public class FlightConfirmationController {
	@Autowired
	private UserProfileService profileService;
	
	@Autowired
	private FlightBookingService flightBookingService;

	public void setProfileService(UserProfileService profileService) {
		this.profileService = profileService;
	}

	public void setLookupDao(LookupDao lookupDao) {
		this.lookupDao = lookupDao;
	}

	@ModelAttribute("Bookings")
	public FlightBookingDto getFlightBooking() {
		return new FlightBookingDto();
	}

	@Autowired
	private LookupDao lookupDao;

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, false));
	}

	@RequestMapping(value = "/flight/showBookingSummary.html", method = RequestMethod.GET)
	public ModelAndView addPassengers(
			@ModelAttribute("SearchData") FlightSearchDto searchData,
			@ModelAttribute("SelectedFlights") FlightSelectionDto selectedFlights,
			@ModelAttribute("PassengerList") PassengerListDto passengerList,
			@ModelAttribute("Bookings") FlightBookingDto bookings) {
		Map<String, Object> models = new HashMap<String, Object>();
		Passenger primaryPassenger = passengerList.getPassengers().get(0);

		models.put("PrimaryPassenger", primaryPassenger);

		if (selectedFlights.getSelectedOutboundFlight() != null) {
			FlightBooking outboundFlightBooking = flightBookingService.createBooking(
					searchData.getFlightClass(), searchData.getDepartureDate(),
					selectedFlights.getSelectedOutboundFlight(), passengerList,
					primaryPassenger,AuthenticatedUserUtil.currentLoggedInUser(profileService));
			
			bookings.setOutboundFlightBooking(outboundFlightBooking);
		}

		if (selectedFlights.getSelectedReturnFlight() != null) {
			FlightBooking returnFlightBooking = flightBookingService.createBooking(
					searchData.getFlightClass(), searchData.getReturnDate(),
					selectedFlights.getSelectedReturnFlight(), passengerList,
					primaryPassenger,AuthenticatedUserUtil.currentLoggedInUser(profileService));
			bookings.setReturnFlightBooking(returnFlightBooking);
		}
		return new ModelAndView("/flight/showBookingSummary", models);
	}


	@ExceptionHandler(Throwable.class)
	public String adminError(){
		return "/resultError";
	}

}
