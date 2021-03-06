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
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.model.*;
import com.happytrip.services.AdminService;

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
		AdminService adminService = (AdminService) wac.getBean("adminService");
		List<FlightClass> classes = adminService.getAllFlightClasses();
		Flight flight = new Flight();
		//modified code changed parameter name from Flight to Flight name
		
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
		request.setAttribute("obj", flight);
		HttpSession session = request.getSession(false);
		if(null != session && null != session.getAttribute("user") && ((User)session.getAttribute("user")).getEmail().equalsIgnoreCase("happyadmin")){
			request.getRequestDispatcher("addFlightSuccess.jsp").forward(request, response);
		} else {
			request.getRequestDispatcher("resultSuccess.jsp").forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
