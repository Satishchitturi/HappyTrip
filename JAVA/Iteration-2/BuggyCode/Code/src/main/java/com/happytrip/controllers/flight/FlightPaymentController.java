package com.happytrip.controllers.flight;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import com.happytrip.controllers.dto.flight.FlightBookingDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.LookupDao;
import com.happytrip.model.Passenger;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.UserProfileService;


public class FlightPaymentController extends HttpServlet{

	private FlightBookingService flightBookingService;
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
		flightBookingService = wac.getBean(FlightBookingService.class);
	}	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		if(req.getRequestURI().endsWith("/flight/confirmBooking.html"))
		{
			
			PassengerListDto passengerList = (PassengerListDto) req.getSession().getAttribute("PassengerList");
			FlightBookingDto flightBooking = (FlightBookingDto) req.getSession().getAttribute("Bookings");
			responsePage = confirmBooking(passengerList, flightBooking,req);
			if(passengerList.getPassengers().size() > 2+1)
				req.getRequestDispatcher(responsePage).forward(req, resp);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}

	public String confirmBooking(
			PassengerListDto passengerList,
			FlightBookingDto flightBooking,HttpServletRequest req){
		flightBookingService.bookFlight(flightBooking.getOutboundFlightBooking());
		Passenger primaryPassenger = passengerList.getPassengers().get(0);
		req.setAttribute("PrimaryPassenger", primaryPassenger);
		
		if(flightBooking.getReturnFlightBooking() != null){
			flightBookingService.bookFlight(flightBooking.getReturnFlightBooking());
		}
		return "bookingConfirmation.jsp";
	}
}
