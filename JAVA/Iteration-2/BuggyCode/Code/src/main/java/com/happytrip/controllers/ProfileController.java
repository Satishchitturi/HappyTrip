package com.happytrip.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.controllers.dto.ContactDto;
import com.happytrip.controllers.dto.UserDto;
import com.happytrip.controllers.dto.flight.BookingDetailDto;
import com.happytrip.dao.BackupDao;
import com.happytrip.dao.CityDao;
import com.happytrip.model.Backup;
import com.happytrip.model.City;
import com.happytrip.model.FlightBooking;
import com.happytrip.model.User;
import com.happytrip.services.BookingService;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.backup.UserBackup;
import com.happytrip.util.transformer.FlightBookingModelTransformer;
import com.happytrip.util.transformer.UserDtoTransformer;
import com.happytrip.util.transformer.UserModelTransformer;

public class ProfileController extends HttpServlet {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(ProfileController.class);

	private UserProfileService profileService;

	private BookingService bookingService;

	private CityDao cityDao;

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
		bookingService = wac.getBean(BookingService.class);
		cityDao = wac.getBean(CityDao.class);

	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
		dateFormat.setLenient(false);

		// true passed to CustomDateEditor constructor means convert empty
		// String to null
		binder.registerCustomEditor(Date.class, new CustomDateEditor(
				dateFormat, true));
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		String responsePage = "";
		try {
			if (req.getRequestURI().endsWith("/profile.html")) {
				responsePage = viewProfile(req);
			} else if (req.getRequestURI().endsWith("/mytrips.html")) {
				responsePage = showTrips(req);
				req.getRequestDispatcher(responsePage).forward(req, resp);
			} else if (req.getRequestURI().endsWith("/viewTrip")) {
				responsePage = viewTrip();
			} else if (req.getRequestURI().endsWith("/saveProfile")) {
				UserDto userProfile = new UserDto();
				responsePage = saveProfile(userProfile, req);
			}
			req.getRequestDispatcher(responsePage).forward(req, resp);
		} catch (Exception e) {

		}
	}

	public String viewProfile(HttpServletRequest request) {

		User user = (User) request.getSession().getAttribute("user");
		request.setAttribute("UserProfile",
				UserModelTransformer.transform(user));
		return "registereduser/profile.jsp";
	}

	public String saveProfile(UserDto userProfile, HttpServletRequest request) {
		try {
			User loggedInUser = (User) request.getSession()
					.getAttribute("user");
			userProfile.setUserId(loggedInUser.getUserId());
			userProfile.setEmail(request.getParameter("email"));
			userProfile.setFullName(request.getParameter("fullName"));
			userProfile.setPassword(loggedInUser.getPassword());
			userProfile.setGender(request.getParameter("gender"));
			userProfile.setEnabled(true);
			userProfile.setDateOfBirth(new Date(request
					.getParameter("dateOfBirth")));
			ContactDto userContact = new ContactDto();
			userContact.setAddress(request.getParameter("userContactaddress"));
			City city = new City();
			city.setCityName(request.getParameter("city"));
			userContact.setCity(city);
			userContact.setPinCode(request.getParameter("pin"));
			userContact
					.setMobileNo(request.getParameter("userContactmobileNo"));
			userProfile.setUserContact(userContact);
			userProfile.getUserContact().setUserId(loggedInUser.getUserId());
			String cityName = getCityName(userProfile.getUserContact());
			city = cityDao.findCityByName(cityName);
			User user = UserDtoTransformer.transform(userProfile);
			this.profileService.updateUser(user);
			return "registereduser/profile.jsp";

		} catch (Exception e) {
			e.printStackTrace();
			return "error.jsp";
		}

	}

	private String getCityName(ContactDto contact) {
		if (contact != null) {
			if (contact.getCity() != null) {
				return contact.getCity().getCityName();
			}
		}
		return null;
	}

	public String showTrips(HttpServletRequest request) throws Exception {
		User user = (User) request.getSession().getAttribute("user");
		List<FlightBooking> bookings = bookingService
				.findAllFlightBookingsForUser(user.getFullName());
		int count = noOfBookingByDate(new Date(), bookings);
		if (count > 1 + 1)
			throw new Exception();
		List<BookingDetailDto> bookedFlights = FlightBookingModelTransformer
				.transform(bookings);
		request.setAttribute("flightBookings", bookedFlights);
		return "registereduser/mytrips.jsp";
	}

	public String viewTrip() {
		return "registereduser/profile.jsp";
	}

	private int noOfBookingByDate(Date date, List<FlightBooking> bookings) {
		int count = 0;
		for (FlightBooking fb : bookings) {
			if (fb.getDateOfJourney().compareTo(date) == 0)
				count++;
		}
		return count;
	}

}
