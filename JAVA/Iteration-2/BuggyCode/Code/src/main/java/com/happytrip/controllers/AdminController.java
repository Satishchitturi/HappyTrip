package com.happytrip.controllers;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.happytrip.controllers.dto.flight.FlightScheduleDto;
import com.happytrip.dao.BackupDao;
import com.happytrip.model.*;
import com.happytrip.services.AdminService;
import com.happytrip.services.UserProfileService;


public class AdminController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);
	private AdminService adminService;
	private BackupDao backupDao;
	private UserProfileService profileService;

	public AdminController(AdminService adminService, BackupDao backupDao,
			UserProfileService profileService) {
		super();
		this.adminService = adminService;
		this.backupDao = backupDao;
		this.profileService = profileService;
	}

	public AdminController() {
	}
	private static WebApplicationContext wac;
	private static void initContext(ServletContext servletContext) {
		wac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(servletContext);
	}

	@Override
	public void init() throws ServletException {
		ServletContext servletContext = this.getServletContext();
		initContext(servletContext);
		initDependencies();
	}

	private void initDependencies() {
		adminService = wac.getBean(AdminService.class);
		profileService = wac.getBean(UserProfileService.class);
		backupDao = wac.getBean(BackupDao.class);
	}

	public String saveAirline(Airline airline,HttpServletRequest req) {
		if(!adminService.isDuplicateAirline(airline)){
			adminService.addAirline(airline);
			req.setAttribute("message","Airline added successfuly");
			if(checkUser(req.getSession(false))){
				return "addAirlineConfirm";
			} else {
				return "resultSuccess.jsp";
			}
		}
		return "addAirline.jsp";
	}
	private boolean checkUser(HttpSession session) {
		if( null != session && null != session.getAttribute("user") && ((User)session.getAttribute("user")).getEmail().equalsIgnoreCase("happyadmin")){
			return true;
		} else {
			return false;
		}
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		
		String responsePage = "";
		if(req.getRequestURI().endsWith("/admin/addFlight.html"))
		{
			responsePage = addFlight(req);
		}
		else if(req.getRequestURI().endsWith("/admin/addAirline.html"))
		{
			responsePage = addAirline(req);
		}
		else if(req.getRequestURI().endsWith("/admin/addRoute.html"))
		{
			responsePage = addRoute(req);
		}
		else if(req.getRequestURI().endsWith("/admin/scheduleFlight.html"))
		{
			responsePage = addSchedule(req);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String responsePage = "";

		if(req.getRequestURI().endsWith("/admin/addAirline"))
		{
			Airline airline = readAirline(req);
			responsePage = saveAirline(airline, req);

		}else if(req.getRequestURI().endsWith("/admin/addRoute")){

			Route route = readRoute(req);
			responsePage = saveRoute(route, req);

		}else if(req.getRequestURI().endsWith("/admin/scheduleFlight")){

			FlightScheduleDto flightScheduleDto = readSchedule(req);
			responsePage = saveFlightRoute(flightScheduleDto, req);
		}
		
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}		
	public Airline readAirline(HttpServletRequest req) {
		Airline airline = new Airline();
		airline.setAirlineCode(req.getParameter("airlinecode"));
		airline.setAirlineName(req.getParameter("airlinename"));
		airline.setAirlineLogo("");
		return airline;
	}

	private Route readRoute(HttpServletRequest req) {
		String fromCityName = req.getParameter("from");
		String toCityName = req.getParameter("to"); 
		Route route = new Route();
		if(fromCityName != null)
		{
			City fromCity = new City();
			fromCity.setCityName(fromCityName);
			City toCity = new City();
			toCity.setCityName(toCityName);
			route.setFromCity(fromCity);
			route.setToCity(toCity);
			return route;
		}
		return route;
	
	}

	private FlightScheduleDto readSchedule(HttpServletRequest req) {
		FlightScheduleDto flightScheduleDto = new FlightScheduleDto();
		Flight flight = new Flight();
		flight.setFlightId(Integer.parseInt(req.getParameter("flightId")));
		ScheduledFlight scheduledFlight = new ScheduledFlight();
		flightScheduleDto.setScheduledFlight(scheduledFlight);
		scheduledFlight.setArrivalTime(req.getParameter("arrivaltime"));
		scheduledFlight.setDepartureTime(req.getParameter("departuretime"));
		scheduledFlight.setDistanceInKms(Integer.parseInt(req.getParameter("distanceInKms")));
		scheduledFlight.setFlight(flight);
		Route route = new Route();
		route.setRouteId(Integer.parseInt(req.getParameter("routeId")));
		scheduledFlight.setRoute(route);
		scheduledFlight.setScheduledFlightDate(new Date(req.getParameter("departureDate")));
		List<FlightClass> classes = (List<FlightClass>)req.getSession(true).getAttribute("classes");
		for(FlightClass fclass : classes)
		{
			final String flightCost = req.getParameter("costPerTicketFor"+fclass.getClassType());
			if(flightCost == null || "".equals(flightCost))
				continue;
			FlightRouteCost cost = new FlightRouteCost();
			cost.setCostPerTicket(Float.parseFloat(flightCost));
			cost.setFlightClass(fclass);
			cost.setFlightRoute(scheduledFlight);
			flightScheduleDto.addFlightRouteCost(cost);

		}
		return flightScheduleDto;
	}

	public String addFlight(HttpServletRequest req) {
		List<Airline> airlines = adminService.getAllAirlines();
		List<FlightClass> classes = adminService.getAllFlightClasses();
		req.setAttribute("airlines", airlines );
		req.setAttribute("classes",classes);
		return "addFlight.jsp";
	}


	public String addAirline(HttpServletRequest req) {
		return "addAirline.jsp";
	}

	public String addRoute(HttpServletRequest req) {
		List<City> cities = adminService.getAllCities();
		req.setAttribute("toCities", cities);
		req.setAttribute("fromCities", cities);
		return "addRoute.jsp";
	}

	public String saveRoute(Route route, HttpServletRequest req) {

		if(!adminService.isDuplicateRoute(route.getFromCity().getCityName(), route.getToCity().getCityName())){
			route.setFromCity(adminService.getCityByName(route.getFromCity().getCityName()));
			route.setToCity(adminService.getCityByName(route.getToCity().getCityName()));
			adminService.addRoute(route);
			req.setAttribute("message","Route added successfuly");
			if(checkUser(req.getSession(false))){
				return "addRouteConfirm";
			} else {
				return "resultSuccess.jsp";
			}
			
		}
		List<City> cities = adminService.getAllCities();
		req.setAttribute("toCities", cities);
		req.setAttribute("fromCities", cities);
		return "addRoute.jsp";
	}
	
	public String saveFlightRoute(FlightScheduleDto flightScheduleDto, 
			HttpServletRequest req) {
		ScheduledFlight scheduledFlight = flightScheduleDto.convertDtoToEntity();
		List<FlightCapacity> capacities = adminService.getCapacitiesForFlightId(scheduledFlight.getFlight().getFlightId());
		Set<SeatAvailability> availabilitySet = new HashSet<SeatAvailability>();

		for(FlightCapacity seats : capacities){
			SeatAvailability availability = new SeatAvailability();
			availability.setAvailableSeats(seats.getTotalSeats());
			availability.setFlightClass(seats.getFlightClass());
			availability.setScheduledFlight(scheduledFlight);
			availabilitySet.add(availability);
		}
		scheduledFlight.setAvailability(availabilitySet);
		adminService.addFlightSchedule(scheduledFlight);
		req.setAttribute("message","Schedule added successfuly");
		if(checkUser(req.getSession(false))){
			return "addScheduleConfirm";
		} else {
			return "resultSuccess.jsp";
		}
		
	}
	public String addSchedule(HttpServletRequest req) {
		List<Flight> flights = adminService.getAllFlights();
		List<Route> routes = adminService.getAllRoutes();
		List<FlightClass> classes = adminService.getAllFlightClasses();
		req.setAttribute("flights", flights);
		req.setAttribute("routes", routes);
		req.getSession(true).setAttribute("classes", classes);

		return "scheduleFlight.jsp";
	}

	
}
