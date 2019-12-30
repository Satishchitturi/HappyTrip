package com.happytrip.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.happytrip.controllers.dto.JsonAirlineDto;
import com.happytrip.controllers.dto.JsonCityDto;
import com.happytrip.controllers.dto.flight.FlightScheduleDto;
import com.happytrip.dao.BackupDao;
import com.happytrip.model.*;

import com.happytrip.services.AdminService;
import com.happytrip.services.AirlineService;
import com.happytrip.services.CityService;
import com.happytrip.services.DuplicateAirlineException;
import com.happytrip.services.DuplicateCityException;
import com.happytrip.services.DuplicateScheduleException;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.UserProfileService;

@Controller
public class AdminController {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(AdminController.class);
	private static final String LOCALE_MESSAGE = "Welcome home! the client locale is ";
	@Autowired
	private AdminService adminService;

	@Autowired
	private volatile AirlineService service;

	@Autowired
	private UserProfileService profileService;

	@Autowired
	private BackupDao backupDao;

	@Autowired
	private volatile CityService cityService;

	@Autowired
	private FlightBookingService flightService;

	public void setAdminService(AdminService adminService) {
		this.adminService = adminService;
	}

	public void setProfileService(UserProfileService profileService) {
		this.profileService = profileService;
	}

	public void setBackupDao(BackupDao backupDao) {
		this.backupDao = backupDao;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		dateFormat.setLenient(false);

		// true passed to CustomDateEditor constructor means convert empty
		// String to null
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@ModelAttribute("AddFlight")
	public Flight getAddFlightForm() {
		return new Flight();
	}

	@ModelAttribute("AddAirline")
	public Airline getAddAirlineForm() {
		return new Airline();
	}

	@ModelAttribute("AddRoute")
	public Route getAddRouteForm() {
		return new Route();
	}

	@ModelAttribute("AddCity")
	public City getAddCityForm() {
		return new City();
	}

	@ModelAttribute("AddSchedule")
	public FlightScheduleDto getAddScheduleForm() {
		return new FlightScheduleDto();
	}

	@RequestMapping(value = "/admin/manage/airlines.html", method = RequestMethod.GET)
	public String viewAirlines(Model model) {
		List<JsonAirlineDto> jsonAirlineDtos = service.readAll();
		model.addAttribute("jsonAirlineDto", jsonAirlineDtos);
		return "admin/manage/viewairlines";
	}

	@RequestMapping(value = "/admin/manage/cities.html", method = RequestMethod.GET)
	public String viewCities(Model model) {
		try {
			List<JsonCityDto> jsonCityDtos = cityService.readAll();
			model.addAttribute("jsonCityDto", jsonCityDtos);
			return "admin/manage/viewcities";
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/admin/addFlight.html", method = RequestMethod.GET)
	public String addFlight(Locale locale, Model model) {
		LOGGER.info(LOCALE_MESSAGE + locale.toString());

		List<Airline> airlines = listAllAirlines();
		List<FlightClass> classes = listAllFlightClasses();

		model.addAttribute("airlines", airlines);
		model.addAttribute("classes", classes);

		return "admin/addFlight";
	}

	List<Airline> listAllAirlines() {
		return adminService.getAllAirlines();
	}

	List<FlightClass> listAllFlightClasses() {
		return adminService.getAllFlightClasses();
	}

	@RequestMapping(value = "/admin/addAirline.html", method = RequestMethod.GET)
	public String addAirline(Locale locale, Model model) {
		LOGGER.info(LOCALE_MESSAGE + locale.toString());

		return "admin/addAirline";
	}

	@RequestMapping(value = "/admin/addAirline", method = RequestMethod.POST)
	public String saveAirline(@ModelAttribute("AddAirline") Airline airline,
			BindingResult result, Model model) {

		try {
			adminService.addAirline(airline);
			model.addAttribute("message", "Airline added successfully");
			return "admin/resultSuccess";
		} catch (DuplicateAirlineException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", e.getMessage());

			return "admin/addAirline";
		}
	}

	@RequestMapping(value = "/admin/addRoute.html", method = RequestMethod.GET)
	public String addRoute(Locale locale, Model model) {
		LOGGER.info(LOCALE_MESSAGE + locale.toString());

		List<City> cities = listAllCities();

		model.addAttribute("toCities", cities);
		model.addAttribute("fromCities", cities);

		return "admin/addRoute";
	}

	List<State> listAllStates() {
		return adminService.getAllStates();
	}

	List<City> listAllCities() {
		return adminService.getAllCities();
	}

	@RequestMapping(value = "/admin/reports.html", method = RequestMethod.GET)
	public String showReports(Locale locale, Model model) {
		return "admin/reports";
	}

	@RequestMapping(value = "/admin/addRoute", method = RequestMethod.POST)
	public String saveRoute(@ModelAttribute("AddRoute") Route route,
			BindingResult result, Model model) {

		if (!adminService.isDuplicateRoute(route.getFromCity(),
				route.getToCity())) {
			route.setFromCity(route.getFromCity());
			route.setToCity(route.getToCity());
			adminService.addRoute(route);
			model.addAttribute("message", "Route added successfuly");
			return "admin/resultSuccess";
		} else {
			model.addAttribute("message", "Route already exists");

			List<City> cities = adminService.getAllCities();

			model.addAttribute("toCities", cities);
			model.addAttribute("fromCities", cities);
			return "admin/addRoute";
		}
	}

	@RequestMapping(value = "/admin/scheduleFlight.html", method = RequestMethod.GET)
	public String addSchedule(Locale locale, Model model) {
		LOGGER.info(LOCALE_MESSAGE + locale.toString());

		List<Flight> flights = listAllFlights();
		List<Route> routes = listAllRoutes();
		List<FlightClass> classes = listAllFlightClasses();

		model.addAttribute("flights", flights);
		model.addAttribute("routes", routes);
		model.addAttribute("classes", classes);

		return "admin/scheduleFlight";
	}

	List<Flight> listAllFlights() {
		return adminService.getAllFlights();
	}

	List<Route> listAllRoutes() {
		return adminService.getAllRoutes();
	}

	@RequestMapping(value = "/admin/addCity", method = RequestMethod.GET)
	public String addCity(Locale locale, Model model) {
		LOGGER.info(LOCALE_MESSAGE + locale.toString());

		List<State> states = listAllStates();

		model.addAttribute("states", states);

		return "admin/addCity";
	}

	@RequestMapping(value = "/admin/addCity", method = { RequestMethod.POST })
	public String saveCity(@ModelAttribute("AddCity") City city,
			BindingResult result, Model model, Locale locale) {
		try {
			saveCity(city);
		} catch (DuplicateCityException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", e.getMessage());
			return addCity(locale, model);
		}
		model.addAttribute("message", "City added successfuly");
		return "admin/resultSuccess";
	}

	private void saveCity(City city) throws DuplicateCityException {
		// TODO Auto-generated method stub
		this.adminService.addCity(city);
	}

	@RequestMapping(value = "/admin/scheduleFlight", method = RequestMethod.POST)
	public String saveRoute(
			@ModelAttribute("AddSchedule") FlightScheduleDto flightScheduleDto,
			BindingResult result, Model model, Locale locale) {
		try {
			scheduleFlight(flightScheduleDto);
			model.addAttribute("message", "Schedule added successfuly");
			return "admin/resultSuccess";
		} catch (DuplicateScheduleException e) {
			// TODO Auto-generated catch block
			model.addAttribute("message", e.getMessage());
			return addSchedule(locale, model);
		}
	}

	void scheduleFlight(FlightScheduleDto flightScheduleDto)
			throws DuplicateScheduleException {
		ScheduledFlight scheduledFlight = flightScheduleDto
				.convertDtoToEntity();
		List<FlightCapacity> capacities = adminService
				.getCapacitiesForFlightId(scheduledFlight.getFlight()
						.getFlightId());
		Set<SeatAvailability> availabilitySet = new HashSet<SeatAvailability>();
		int capacitySize = capacities.size() - 1;

		for (int i = 0; i <= capacitySize; i++) {
			FlightCapacity seats = capacities.get(i);
			SeatAvailability availability = new SeatAvailability();
			availability.setAvailableSeats(seats.getTotalSeats());
			availability.setFlightClass(seats.getFlightClass());
			availability.setScheduledFlight(scheduledFlight);
			availabilitySet.add(availability);
		}
		scheduledFlight.setAvailability(availabilitySet);
		adminService.addFlightSchedule(scheduledFlight);
	}

	@ExceptionHandler(Throwable.class)
	public String adminError() {
		return "admin/resultError";
	}

	@RequestMapping(value = "/admin/manage/scheduleFlights.html", method = RequestMethod.GET)
	public String viewScheduleFlights(Model model) {
		try {
			List<FlightInventory> flights = flightService
					.loadFlightInventoryForCurrentDate();
			model.addAttribute("flights", flights);
			return "admin/manage/viewFlightSchedules";
		} catch (Throwable t) {
			t.printStackTrace();
			LOGGER.error(t.getMessage());
			return "admin/resultError";
		}
	}
}
