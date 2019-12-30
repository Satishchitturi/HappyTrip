package com.happytrip.controllers;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.ModelAndView;

import com.happytrip.model.User;
import com.happytrip.model.reports.AirlineReport;
import com.happytrip.model.reports.BookingReport;
import com.happytrip.model.reports.RouteReport;
import com.happytrip.model.reports.ScheduledFlightReport;
import com.happytrip.model.reports.UserReport;
import com.happytrip.services.ReportingService;
import com.happytrip.services.UserProfileService;

public class ReportController extends HttpServlet{


	private ReportingService reportingService;

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
	
	public boolean checkAdminUser(HttpServletRequest httpServletRequest){
		User user = (User)httpServletRequest.getSession().getAttribute("user");
		if("happyadmin".equals(user.getEmail())){
			return true;
		}
		return false;
	}

	private void initDependencies() {
		reportingService = wac.getBean(ReportingService.class);
	
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		try{
			if(req.getRequestURI().endsWith("/admin/reports.html"))
			{
				responsePage = "/admin/reports.jsp";
				if(checkAdminUser(req))
					req.getRequestDispatcher(responsePage).forward(req, resp);
			}
			else if(req.getRequestURI().endsWith("/admin/report/listAllUsers.html"))
			{
				responsePage = listAllUsers(req);
			}else if(req.getRequestURI().endsWith("/admin/report/listAllBookings.html"))
			{
				responsePage = listAllBookings(req);
			}else if(req.getRequestURI().endsWith("/admin/report/listAllAirline.html")){
				responsePage = listAllAirlines(req);
			}else if(req.getRequestURI().endsWith("/admin/report/listAllScheduledFlight.html"))
			{
				responsePage = listAllScheduledFlight(req);
			}else if(req.getRequestURI().endsWith("/admin/report/listAllRoutes.html")){
				
				responsePage = listAllRoutes(req);
			}
		}catch(Exception e){
			
		}
		
		
		req.getRequestDispatcher(responsePage).include(req, resp);

	}

	public String listAllUsers(HttpServletRequest request) {
		List<UserReport> reports = reportingService.findAllUserReport();
		request.setAttribute("report", reports);
		return "/admin/report/users.jsp";
	}
	

	public String listAllBookings(HttpServletRequest request){
		List<BookingReport> reports = reportingService.findAllBookingReport();
		request.setAttribute("report", reports);
		return "/admin/report/bookings.jsp";
	}
	

	public String listAllAirlines(HttpServletRequest request){
		List<AirlineReport> reports = reportingService.findAllAirlineReport();
		System.out.println(reports.size());
		//changed the session attribute key name from report to reports
		request.setAttribute("reports", reports);
		return "/admin/report/airlines.jsp";
	}
	

	public String listAllScheduledFlight(HttpServletRequest request){
		List<ScheduledFlightReport> reports = reportingService.findAllScheduledFlightReport();
		request.setAttribute("report", reports);
		return "/admin/report/scheduledFlights.jsp";
	}
	

	public String listAllRoutes(HttpServletRequest request){
		List<RouteReport> reports = reportingService.findAllRouteReport();
		request.setAttribute("report", reports);
		return "/admin/report/routes.jsp";
	}
}
