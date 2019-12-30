package com.happytrip.controllers;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.happytrip.controllers.dto.flight.FlightScheduleDto;
import com.happytrip.dao.BackupDao;
import com.happytrip.model.*;
import com.happytrip.services.AdminService;
import com.happytrip.services.UserProfileService;

@MultipartConfig(maxFileSize = 16177215)
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final Logger LOGGER = LoggerFactory
			.getLogger(AdminController.class);
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

	public String saveAirline(Airline airline, HttpServletRequest req)
			throws ServletException, IOException {

		if (!adminService.isDuplicateAirline(airline)) {
			adminService.addAirline(airline);
			req.setAttribute("message", "Airline added successfuly");
			// Modified Code for BUG1 starts here
			req.setAttribute("airline", airline);
			// Modified Code for BUG1 ends here
			if (checkUser(req.getSession(false))) {
				return "addAirlineConfirm";
			} else {
				return "resultSuccess.jsp";
			}
		}
		return "addAirline.jsp";
	}

	private boolean checkUser(HttpSession session) {
		if (null != session
				&& null != session.getAttribute("user")
				&& ((User) session.getAttribute("user")).getEmail()
						.equalsIgnoreCase("happyadmin")) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String responsePage = "";
		if (req.getRequestURI().endsWith("/admin/addFlight.html")) {
			responsePage = addFlight(req);
		}
		else if (req.getRequestURI().endsWith("/admin/addAirline.html")) {		
			responsePage = addAirline(req);
		} else if (req.getRequestURI().endsWith("/admin/addRoute.html")) {
			responsePage = addRoute(req);
		} else if (req.getRequestURI().endsWith("/admin/scheduleFlight.html")) {
			responsePage = addSchedule(req);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String responsePage = "";
		if (req.getRequestURI().endsWith("/admin/addAirline")) {
			Airline airline = null;
			try {
				airline = readAirline(req);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			responsePage = saveAirline(airline, req);
		} else if (req.getRequestURI().endsWith("/admin/addRoute")) {
			Route route = null;
			try {
				route = readRoute(req);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			responsePage = saveRoute(route, req);
		} else if (req.getRequestURI().endsWith("/admin/scheduleFlight")) {
			FlightScheduleDto flightScheduleDto = null;
			try {
				flightScheduleDto = readSchedule(req);
			} catch (FileUploadException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			responsePage = saveFlightRoute(flightScheduleDto, req);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	
	public Airline readAirline(HttpServletRequest req) throws ServletException,
			IOException, FileUploadException {

		Airline airline = new Airline();
		// modified Code starting for CR
		List<FileItem> fileitems = new ServletFileUpload(
				new DiskFileItemFactory()).parseRequest(req);
		for (FileItem item : fileitems) {
			if (item.isFormField()) {
				String name = item.getFieldName();
				if (name.equals("airlineCode")) {
					String airlineCode = item.getString();
					airline.setAirlineCode(airlineCode);
				}
				if (name.equals("airlineName")) {
					String airlineName = item.getString();
					airline.setAirlineName(airlineName);
				}
				if (name.equals("airlineLogo")) {
					String airlineLogo = item.getString();
					airline.setAirlineLogo(airlineLogo);
				}
			} else {
				String absoluteFilesystemPath = getServletContext()
						.getRealPath("/");
				File file = new File(absoluteFilesystemPath
						+ "images\\air_logos");

				saveImage(item, file);
			}
		}
		// ends here
		return airline;
	}

	private Route readRoute(HttpServletRequest req) throws FileUploadException,
			IllegalStateException, IOException, ServletException {

		// String fromCityName = req.getParameter("fromCity");
		// Modified code for Bug3
		// String toCityName = req.getParameter("toCity");
		Route route = new Route();
		List<FileItem> fileitems = new ServletFileUpload(
				new DiskFileItemFactory()).parseRequest(req);
		for (FileItem item : fileitems) {
			if (item.isFormField()) {
				String filedName = item.getFieldName();
				City fromCity = new City();
				City toCity = new City();
				if(filedName.equals("fromCity")){
					String fromCityName = item.getString();
					fromCity.setCityName(fromCityName);
					route.setFromCity(fromCity);
				}
				if(filedName.equals("toCity")){
					String toCityName = item.getString();
					toCity.setCityName(toCityName);
					route.setToCity(toCity);
					
				}
			} else {
				String absoluteFilesystemPath = getServletContext()
						.getRealPath("/");
				File file = new File(absoluteFilesystemPath + "images\\routes");
				saveImage(item, file);
			}
		}
		return route;
	}

	public static void saveImage(FileItem item, File file) throws IOException {
		if (!file.exists()) {
			file.mkdir();
		}
		String filename = FilenameUtils.getName(item.getName());
		byte[] bytess = item.get();
		File file1 = new File(file, filename);
		FileOutputStream fileOutputStream = new FileOutputStream(file1);
		fileOutputStream.write(bytess);
		fileOutputStream.flush();
		fileOutputStream.close();
	}

	private FlightScheduleDto readSchedule(HttpServletRequest req)
			throws FileUploadException, IOException, IllegalStateException, ServletException {
		FlightScheduleDto flightScheduleDto = new FlightScheduleDto();
		Flight flight = new Flight();
		Route route = new Route();
		ScheduledFlight scheduledFlight = new ScheduledFlight();
		List<FileItem> fileitems = new ServletFileUpload(
				new DiskFileItemFactory()).parseRequest(req);
		for (FileItem item : fileitems) {
			if (item.isFormField()) {
				String fieldName = item.getFieldName();
				System.out.println(fieldName);
				if (fieldName.equals("flightId")) {
					String flightId = item.getString();
					flight.setFlightId(Integer.parseInt(flightId));
				}
				if (fieldName.equals("route")) {
					String routeId = item.getString();
					route.setRouteId(Integer.parseInt(routeId));
					scheduledFlight.setRoute(route);
				}
				if (fieldName.equals("arrivalTime")) {
					String arrivalTime = item.getString();
					scheduledFlight.setArrivalTime(arrivalTime);
				}
				if (fieldName.equals("departureTime")) {
					String departureTime = item.getString();
					scheduledFlight.setDepartureTime(departureTime);
				}
				if (fieldName.equals("distanceKms")) {
					String distanceKms = item.getString();
					scheduledFlight.setDistanceInKms(Integer.parseInt(distanceKms));
				}
				if (fieldName.equals("departureDate")) {
					String departureDate = item.getString();
					scheduledFlight.setScheduledFlightDate(new Date(departureDate));
				}
				List<FlightClass> classes = (List<FlightClass>) req.getSession(true).getAttribute("classes");
				for (FlightClass fclass : classes) {
				if (fieldName.equals("costPerTicketFor"+fclass.getClassType())) {
					String val6 = item.getString();
					final String flightCost= val6;
							if (flightCost == null || "".equals(flightCost))
								continue;
							FlightRouteCost cost = new FlightRouteCost();
							cost.setCostPerTicket(Float.parseFloat(flightCost));
							cost.setFlightClass(fclass);
							cost.setFlightRoute(scheduledFlight);
							flightScheduleDto.addFlightRouteCost(cost);
				}
				}	
				scheduledFlight.setFlight(flight);
				flightScheduleDto.setScheduledFlight(scheduledFlight);
			} else {
				String absoluteFilesystemPath = getServletContext()
						.getRealPath("/");
				File file = new File(absoluteFilesystemPath
						+ "images\\scheduleimage");
				saveImage(item, file);
			}
		}
		
		/*  flight.setFlightId(Integer.parseInt(req.getParameter("flightId")));
		  
		  flightScheduleDto.setScheduledFlight(scheduledFlight); //modified
		  code for Bug
		  scheduledFlight.setArrivalTime(req.getParameter("arrivalTime"));
		  //modified code for Bug
		  scheduledFlight.setDepartureTime(req.getParameter("departureTime"));
		  //modified code for Bug
		  scheduledFlight.setDistanceInKms(Integer.parseInt
		  (req.getParameter("distanceKms")));
		  scheduledFlight.setFlight(flight); //Route route = new Route();
			modified code for Bug
		 route.setRouteId(Integer.parseInt(req.getParameter("route")));
		 scheduledFlight.setRoute(route); //modified code for Bug
		 scheduledFlight.setScheduledFlightDate(new
		 Date(req.getParameter("departureDate")));
		
		List<FlightClass> classes = (List<FlightClass>) req.getSession(true).getAttribute("classes");
		for (FlightClass fclass : classes) {
			final String flightCost = req.getParameter("costPerTicketFor"
					+ fclass.getClassType());
		
		final String flightCost= 
			if (flightCost == null || "".equals(flightCost))
				continue;
			FlightRouteCost cost = new FlightRouteCost();
			cost.setCostPerTicket(Float.parseFloat(flightCost));
			cost.setFlightClass(fclass);
			cost.setFlightRoute(scheduledFlight);
			flightScheduleDto.addFlightRouteCost(cost);

		}*/
		return flightScheduleDto;
	}

	public String addFlight(HttpServletRequest req) {
		List<Airline> airlines = adminService.getAllAirlines();
		List<FlightClass> classes = adminService.getAllFlightClasses();
		req.setAttribute("airlines", airlines);
		req.setAttribute("classes", classes);
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
		if (!adminService.isDuplicateRoute(route.getFromCity().getCityName(),
				route.getToCity().getCityName())) {
			route.setFromCity(adminService.getCityByName(route.getFromCity()
					.getCityName()));
			route.setToCity(adminService.getCityByName(route.getToCity()
					.getCityName()));
			adminService.addRoute(route);
			req.setAttribute("message", "Route added successfuly");
			// modified code for Bug3
			req.setAttribute("route", route);
			if (checkUser(req.getSession(false))) {
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
		for (FlightCapacity seats : capacities) {
			SeatAvailability availability = new SeatAvailability();
			availability.setAvailableSeats(seats.getTotalSeats());
			availability.setFlightClass(seats.getFlightClass());
			availability.setScheduledFlight(scheduledFlight);
			availabilitySet.add(availability);
		}
		scheduledFlight.setAvailability(availabilitySet);
		adminService.addFlightSchedule(scheduledFlight);
		req.setAttribute("message", "Schedule added successfuly");
		// modified code for Bug 4
		req.setAttribute("flight", scheduledFlight);
		if (checkUser(req.getSession(false))) {
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
	
/*	@Request*/

}
