package com.happytrip.controllers;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import com.happytrip.controllers.dto.flight.FlightSearchDto;
import com.happytrip.controllers.dto.flight.FlightSelectionDto;
import com.happytrip.dao.LookupDao;
import com.happytrip.model.ScheduledFlight;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.InvalidCityException;
import com.happytrip.services.JourneyDateBeyondLimitException;


public class SearchController extends HttpServlet{
	private static final Logger LOGGER = LoggerFactory.getLogger(SearchController.class);

	
	private FlightBookingService flightSearchService;
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
		flightSearchService = wac.getBean(FlightBookingService.class);
		lookupDao = wac.getBean(LookupDao.class);
	}


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String responsePage = "";
		if(req.getRequestURI().endsWith("/searchFlights.html"))
		{
			responsePage = searchFlights(req);
		}
		else if(req.getRequestURI().endsWith("/flight/search.html"))
		{
			FlightSearchDto searchData;
			try {
				searchData = readSearchData(req);
				responsePage = search(searchData, req);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	public String searchFlights(HttpServletRequest request) {
		LOGGER.info("Welcome home! the client locale is ");
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG);
		String formattedDate = dateFormat.format(date);
		request.setAttribute("serverTime", formattedDate );
		return "flight/flight_booking.jsp";
	}

	public FlightSearchDto readSearchData(HttpServletRequest request) throws Exception
	{
		FlightSearchDto flightSearchDto = new FlightSearchDto();
		flightSearchDto.setFlightClass(request.getParameter("flightClass"));
		flightSearchDto.setFromCity(request.getParameter("fromCity"));
		flightSearchDto.setToCity(request.getParameter("toCity"));
		try
		{	flightSearchDto.setReturnJourney(Boolean.parseBoolean(request.getParameter("returnJourney")));
		flightSearchDto.setNoOfChildren(Integer.parseInt(request.getParameter("noOfchildren")));
		flightSearchDto.setNoOfInfants(Integer.parseInt(request.getParameter("noOfinfants")));
		flightSearchDto.setNoOfAdults(Integer.parseInt(request.getParameter("noOfadults")));
		flightSearchDto.setDepartureDate(new Date(request.getParameter("departureDate")));
		if(flightSearchDto.isReturnJourney())
			flightSearchDto.setReturnDate(new Date(request.getParameter("returnDate")));
		}catch(NumberFormatException e)
		{
			throw new Exception("Invalid input");
		}
		catch(IllegalArgumentException e)
		{
			throw new Exception("Invalid departure date");
		}

		return flightSearchDto;		
	}
	/**
	 * 
	 * @param searchData
	 * @param result
	 * @param model
	 * @return
	 */
	
	public String search(FlightSearchDto searchData,HttpServletRequest request){
		List<ScheduledFlight> toFlights = null;
		List<ScheduledFlight> returnFlights = null;
		try {
			toFlights = this.flightSearchService.searchFlights(
					searchData.getFromCity(), searchData.getToCity(), 
					lookupDao.findForClassName(searchData.getFlightClass()),
					searchData.getNoOfAdults()+searchData.getNoOfChildren()+searchData.getNoOfInfants(),
					searchData.getDepartureDate());
			if(searchData.isReturnJourney()){
				returnFlights = this.flightSearchService.searchFlights(
						searchData.getToCity(), searchData.getFromCity(), 
						lookupDao.findForClassName(searchData.getFlightClass()),
						searchData.getNoOfAdults()+searchData.getNoOfChildren()+searchData.getNoOfInfants(),
						searchData.getReturnDate());
			}
		
		} catch (InvalidCityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JourneyDateBeyondLimitException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("fromCity", searchData.getFromCity());
		request.setAttribute("toCity", searchData.getToCity());
		request.setAttribute("toFlights", toFlights);
		FlightSelectionDto selectedFlights = new FlightSelectionDto();
		if(toFlights != null && !toFlights.isEmpty()){
			selectedFlights.setSelectedOutboundFlight(toFlights.get(0));
		}
		request.setAttribute("returnFlights", returnFlights);
		if(returnFlights != null && !returnFlights.isEmpty()){
			selectedFlights.setSelectedReturnFlight(returnFlights.get(0));
		}
		request.setAttribute("SelectedFlights",selectedFlights);
		request.getSession(true).setAttribute("SelectedFlight",selectedFlights);
		request.getSession(true).setAttribute("SearchData",searchData);
		return "searchResults.jsp";
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		dateFormat.setLenient(false);

		// true passed to CustomDateEditor constructor means convert empty String to null
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}




}
