package com.happytrip.controllers.flight;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

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
import org.springframework.web.servlet.ModelAndView;

import com.happytrip.controllers.dto.flight.FlightBookingDto;
import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.controllers.dto.flight.FlightSelectionDto;
import com.happytrip.controllers.dto.flight.PassengerListDto;
import com.happytrip.dao.FlightRouteDao;
import com.happytrip.dao.LookupDao;
import com.happytrip.model.Booking;
import com.happytrip.model.BookingContact;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.FlightRouteCost;
import com.happytrip.model.Passenger;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.model.User;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.StringUtil;
public class FlightConfirmationController extends HttpServlet{
	
	private UserProfileService profileService;
	private LookupDao lookupDao;
	

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
		profileService = wac.getBean(UserProfileService.class);
		lookupDao = wac.getBean(LookupDao.class);
	}


	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		try
		{
			if(req.getRequestURI().endsWith("showBookingSummary.html"))
			{
				FlightSearchDto searchData = (FlightSearchDto)req.getSession().getAttribute("SearchData");
				FlightSelectionDto selectedFlights = (FlightSelectionDto)req.getSession().getAttribute("SelectedFlight");
				FlightBookingDto bookings = new FlightBookingDto();
				PassengerListDto passengerList = readPassengerList(req);
				req.getSession().setAttribute("PassengerList",passengerList);
				responsePage = addPassengers(searchData, selectedFlights, passengerList, bookings,req);
				req.getSession().setAttribute("Bookings",bookings);

			}	
			getServletContext().getRequestDispatcher(responsePage).forward(req, resp);
		}catch(Exception e)
		{
			e.printStackTrace();
			resp.sendRedirect("flight/addPassenger.jsp");
		}
		
		
	}
	
	public PassengerListDto readPassengerList(HttpServletRequest request)
	{
		PassengerListDto passengerList = new PassengerListDto();
		passengerList.setMobileNumber(request.getParameter("mobileNumber"));
		int noOfPassengers = Integer.parseInt(request.getParameter("noOfPassengers"));
		List<Passenger> passengers = new ArrayList<Passenger>();
		for(int i = 0 ; i < noOfPassengers ; i++)
		{
			Passenger passenger = new Passenger();
			passenger.setTitle(request.getParameter("Passenger"+i+"Title"));
			passenger.setName(request.getParameter("Passenger"+i+"Name"));
			passenger.setGender(request.getParameter("Passenger"+i+"Gender"));
			passenger.setDateOfBirth(new Date(request.getParameter("passenger"+i+"dateOfBirth")));
			passengers.add(passenger);
		}
		passengerList.setPassengers(passengers);
		return passengerList;
	}
	

	public String addPassengers(FlightSearchDto searchData,FlightSelectionDto selectedFlights,PassengerListDto passengerList,
			FlightBookingDto bookings,HttpServletRequest request){
		Passenger primaryPassenger = passengerList.getPassengers().get(0);
		User loggedInUser = (User)request.getSession().getAttribute("user");
		request.setAttribute("PrimaryPassenger", primaryPassenger);
		FlightBooking outboundFlightBooking = createOutboundBooking(
				searchData.getFlightClass(),searchData.getDepartureDate(),
				selectedFlights.getSelectedOutboundFlight(),passengerList, primaryPassenger,loggedInUser);
		bookings.setOutboundFlightBooking(outboundFlightBooking);
		
		if(selectedFlights.getSelectedReturnFlight() != null){
			FlightBooking returnFlightBooking = createOutboundBooking(
					searchData.getFlightClass(),searchData.getReturnDate(),
					selectedFlights.getSelectedReturnFlight(),passengerList, primaryPassenger,loggedInUser);
			bookings.setReturnFlightBooking(returnFlightBooking);
		}
		return "/flight/showBookingSummary.jsp";
	}
	
	private FlightBooking createOutboundBooking(String flightClassName,
			Date journeyDate,
			ScheduledFlight flightToBeBooked, PassengerListDto passengerList, 
			Passenger primaryPassenger,User loggedInUserObj) {
		// TODO Auto-generated method stub
		FlightBooking flightBooking = new FlightBooking();
		
		flightBooking.setFlightClass(lookupDao.findForClassName(flightClassName));
		
		flightBooking.setDateOfJourney(journeyDate);
		FlightRouteCost flightRouteCost = (FlightRouteCost)flightToBeBooked.getFlightRouteCosts().toArray()[0];
		flightBooking.setCostPerTicket((flightRouteCost.getCostPerTicket()));
		Set<Passenger> passengers = new HashSet<Passenger>();
		passengers.addAll(passengerList.getPassengers());
		flightBooking.setPassengers(passengers);
		flightBooking.setNoOfSeats(passengerList.getPassengers().size());
		flightBooking.setFlightRoute(flightToBeBooked);
		Set<FlightRouteCost> costs = flightToBeBooked.getFlightRouteCosts();
		
		float totalCost = calculateTotalCost(costs,passengerList);
		Booking booking = new Booking();
		booking.setBookingReferenceNo(Long.toString(StringUtil.generateReference(System.currentTimeMillis())));
		booking.setTotalCost(totalCost);
		BookingContact contact = new BookingContact();
		contact.setContactName(primaryPassenger.getName());
		contact.setMobileNo(passengerList.getMobileNumber());
		User loggedInUser = loggedInUserObj;
		if(loggedInUser != null){
			booking.setBooker(loggedInUser);
		}
		booking.setBookingcontact(contact);
		flightBooking.setBooking(booking);
		
		return flightBooking;
	}

	private float calculateTotalCost(Set<FlightRouteCost> costs,
			PassengerListDto passengerList) {
		// TODO Auto-generated method stub
		int totalPax = passengerList.getPassengers().size();
		float totalCost = 0;
		if(costs != null){
			FlightRouteCost perTicketCost = costs.iterator().next();
			totalCost = totalPax * perTicketCost.getCostPerTicket();
		}
		return totalCost;
	}
	

	@InitBinder
	protected void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(
	            dateFormat, false));
	}

}
