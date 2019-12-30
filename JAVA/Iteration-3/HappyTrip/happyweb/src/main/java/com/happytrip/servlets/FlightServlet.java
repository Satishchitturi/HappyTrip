package com.happytrip.servlets;

import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.model.*;
import com.happytrip.services.AdminService;
import com.happytrip.services.DuplicateFlightNameException;

/**
 * Servlet implementation class FlightServlet
 */
public class FlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static WebApplicationContext wac;
	
	private static void initContext(ServletContext servletContext){
		wac = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContext);
	}
	
	public void init(){
		ServletContext servletContext = this.getServletContext();	 
		initContext(servletContext);
	}
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FlightServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try{
			AdminService adminService = (AdminService) wac.getBean("adminService");
			List<FlightClass> classes = adminService.getAllFlightClasses();
			Flight flight = new Flight();
			flight.setFlightName(request.getParameter("flightName"));
			Set<FlightCapacity> capacities = new HashSet<FlightCapacity>();
			String requestKey;
			FlightClass currentClass;
			FlightCapacity capacity;
			for(FlightClass flightClass:classes){
				requestKey = "class_" + flightClass.getClassType();
				if(null != request.getParameter(requestKey)){
					currentClass = adminService.getClassForName(flightClass.getClassType());
					capacity = new FlightCapacity();
					capacity.setTotalSeats(Integer.parseInt(request.getParameter("seats_"+flightClass.getClassType())));
					capacity.setFlightClass(currentClass);
					capacity.setFlight(flight);
					capacities.add(capacity);
				}
			}
			flight.setCapacity(capacities);
			adminService.addFlight(flight, request.getParameter("airlineCode"));
			request.setAttribute("message", "Flight added successfuly");
			request.getRequestDispatcher("resultSuccess.jsp").forward(request, response);
		}catch(DuplicateFlightNameException dfe){
			request.setAttribute("message", dfe.getMessage());
			request.getRequestDispatcher("/admin/addFlight.html").forward(request, response);
		}catch(Throwable t){
			t.printStackTrace();
			response.sendRedirect("resultError.jsp");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
