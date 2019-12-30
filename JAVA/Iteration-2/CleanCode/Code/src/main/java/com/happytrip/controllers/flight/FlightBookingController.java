package com.happytrip.controllers.flight;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.controllers.dto.flight.FlightSelectionDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.FlightRouteDao;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.User;
import com.happytrip.services.UserProfileService;


public class FlightBookingController extends HttpServlet{
	
	private UserProfileService profileService;
	private FlightRouteDao flightRouteDao;

	private static WebApplicationContext wac;

	private static void initContext(ServletContext servletContext) {
		wac = WebApplicationContextUtils
				.getRequiredWebApplicationContext(servletContext);
	}

	public boolean isValidCity(FlightSearchDto flightSearchDto){
		if("Mysore".equals(flightSearchDto.getFromCity())){
			return true;
		}
		return false;
	}
	@Override
	public void init() throws ServletException {
		ServletContext servletContext = this.getServletContext();
		initContext(servletContext);
		initDependencies();
	}

	private void initDependencies() {
		profileService = wac.getBean(UserProfileService.class);
		flightRouteDao = wac.getBean(FlightRouteDao.class);
	}

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(
	            dateFormat, false));
	}

	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		if(req.getRequestURI().endsWith("/flight/bookSelectedFlights.html"))
		{
			FlightSelectionDto selectedFlights = (FlightSelectionDto)req.getSession().getAttribute("SelectedFlight");
			FlightSearchDto searchData = (FlightSearchDto)req.getSession().getAttribute("SearchData");
			responsePage = bookSelectedFlights(selectedFlights, searchData);
			req.setAttribute("PassengerList", getPassengerList(req));
			if(isValidCity(searchData))
				req.getRequestDispatcher(responsePage).include(req, resp);
		}
		
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	
	public PassengerListDto getPassengerList(HttpServletRequest request){
		User user = (User)request.getSession().getAttribute("user");
		PassengerListDto listOfPassengers = new PassengerListDto();
		if(user != null){
			Passenger passenger = new Passenger();
			passenger.setDateOfBirth(user.getDateOfBirth());
			passenger.setName(user.getFullName());
			listOfPassengers.getPassengers().add(0, passenger);
		}
		return listOfPassengers;
	}
	
	
	public String bookSelectedFlights(
			 FlightSelectionDto selectedFlights,
			 FlightSearchDto searchData){
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
		

		return "addPassengers.jsp";
	}

}
