package com.happytrip.servlets;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.model.Route;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.services.AdminService;
import com.happytrip.services.FlightBookingService;

/**
 * Servlet implementation class AddScheduleConfirm
 */
public class AddScheduleConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlightBookingService flightBookingService;
	private WebApplicationContext wac;
	private void initContext(ServletContext servletContext) {
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
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddScheduleConfirm() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ScheduledFlight flight = flightBookingService.searchScheduledFlightById(((ScheduledFlight)request.getAttribute("flight")).getFlightRouteId());
		request.setAttribute("obj", flight);
		request.getRequestDispatcher("addScheduleSuccess.jsp").forward(null, null);
	}

}
