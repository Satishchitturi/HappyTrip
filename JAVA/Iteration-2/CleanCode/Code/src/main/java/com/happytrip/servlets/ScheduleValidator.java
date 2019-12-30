package com.happytrip.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happytrip.model.ScheduledFlight;
import com.happytrip.services.AdminService;
import com.happytrip.services.impl.AdminServiceImpl;

/**
 * Servlet implementation class ScheduleValidator
 */
public class ScheduleValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScheduleValidator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Long flightId=Long.parseLong(request.getParameter("flightId"));
		String date=request.getParameter("departureDate");
		String isPresent="false";
		AdminService adminService= new AdminServiceImpl();
		ScheduledFlight schedule=adminService.findScheduledFlightByIdAndDate(date, flightId);
		
		if(schedule!=null){
			isPresent="true";
		}
		
		response.setContentType("application/JSON");
		response.getWriter().write(isPresent);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
