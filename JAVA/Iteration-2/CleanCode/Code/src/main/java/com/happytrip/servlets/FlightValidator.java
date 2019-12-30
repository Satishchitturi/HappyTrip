package com.happytrip.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.happytrip.model.Flight;
import com.happytrip.services.AdminService;
import com.happytrip.services.impl.AdminServiceImpl;

/**
 * Servlet implementation class FlightValidator
 */
public class FlightValidator extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightValidator() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String isPresent="false";
		/*request.getParameter("flightName");*/
		String flightName=request.getParameter("flightName");
		System.out.println(flightName);
		
		AdminService adminService= new AdminServiceImpl();
		
		System.out.println("==================================================================================="+adminService);
		
		Flight flight = adminService.getFlightByName(flightName);
		
		if(flight!=null){
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
