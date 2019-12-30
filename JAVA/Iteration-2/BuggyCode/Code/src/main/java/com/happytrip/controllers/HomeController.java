package com.happytrip.controllers;

import java.io.IOException;


import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.json.JSONArray;
import net.sf.json.JSONSerializer;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.happytrip.model.City;
import com.happytrip.services.FlightBookingService;
public class HomeController extends HttpServlet {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(HomeController.class);


	private FlightBookingService search;

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
		search = wac.getBean(FlightBookingService.class);
	}


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
	
		String responsePage = "";
		if(req.getRequestURI().endsWith("/home.html"))
		{
			responsePage = home(req);
			req.getRequestDispatcher(responsePage).forward(req, resp);
		}
		else if(req.getRequestURI().endsWith("/cities"))
		{
			String term = req.getParameter("term");
			List<City> cities = cities(term);
			PrintWriter out = resp.getWriter();
			resp.setContentType("application/json");
			JSONArray obj = (JSONArray) JSONSerializer.toJSON(cities);
			resp.setContentType("application/json");
			out.print(obj);
			out.flush();
		}
		

	}
	
	

	public List<City> cities( String term) {

		try {
			List<City> cities = search.findAllFromCities(term);
			for (City city : cities) {
				city.setState(null);
			}
			return cities;
		} catch (Exception e) {
			LOGGER.info(e.getMessage());
		}
		return new ArrayList<City>();
	}

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	public String home(HttpServletRequest request) {
		LOGGER.info("Welcome home! the client locale is ");

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG,
				DateFormat.LONG);

		String formattedDate = dateFormat.format(date);
		request.setAttribute("serverTime", formattedDate);

		return "home.jsp";
	}

}
