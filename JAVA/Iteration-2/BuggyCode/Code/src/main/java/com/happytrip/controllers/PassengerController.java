package com.happytrip.controllers;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class PassengerController extends HttpServlet{
	private static final Logger LOGGER = LoggerFactory.getLogger(PassengerController.class);

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String responsePage = "";
		if(req.getRequestURI().endsWith("/passengerFlights.html"))
		{
			responsePage = passengerFlights(req);
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	

	public String passengerFlights(HttpServletRequest request) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		String formattedDate = dateFormat.format(date);
		
		request.setAttribute("serverTime", formattedDate );
		
		return "flight/flight_passengers.jsp";
	}
	
	

}
