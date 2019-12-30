package com.happytrip.controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;

import com.happytrip.controllers.dto.ContactDto;
import com.happytrip.controllers.dto.UserDto;
import com.happytrip.dao.LookupDao;
import com.happytrip.model.User;
import com.happytrip.model.UserContact;
import com.happytrip.services.FlightBookingService;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.transformer.UserDtoTransformer;
import com.happytrip.validator.RegisterValidator;


public class RegisterController extends HttpServlet{
	

	private UserProfileService userProfileService;

	public RegisterController(){
		
	}
	
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
		userProfileService = wac.getBean(UserProfileService.class);
	
	}


	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	    dateFormat.setLenient(false);

	    // true passed to CustomDateEditor constructor means convert empty String to null
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String responsePage = "";
		if(req.getRequestURI().endsWith("/register.html"))
		{
			responsePage = register(req); 
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String responsePage = "";
		if(req.getRequestURI().endsWith("/registerprocess"))
		{
			UserDto userRegister = new UserDto();
			ContactDto userContact = new ContactDto();
			userRegister.setUserContact(userContact);
			responsePage = loginProcess(userRegister, req); 
		}
		req.getRequestDispatcher(responsePage).forward(req, resp);
	}
	
	public String register(HttpServletRequest request) {

		return "register.jsp";
	}
	

	public String loginProcess(UserDto userRegister,HttpServletRequest request) {
		

		ContactDto userContact = userRegister.getUserContact();
		userRegister.setDateOfBirth(new Date(request.getParameter("dateOfBirth")));
		userRegister.setEmail(request.getParameter("email"));
		userRegister.setFullName(request.getParameter("fullname"));
		userRegister.setGender(request.getParameter("gender"));
		userRegister.setLoginId(request.getParameter("loginId"));
		userRegister.setPassword(request.getParameter("password"));
		userRegister.setEnabled(true);
		userContact.setAddress(request.getParameter("Address"));
		userContact.setMobileNo(request.getParameter("Mobileno"));
		userContact.setPinCode(request.getParameter("Pincode"));
		userProfileService.createUser(UserDtoTransformer.transform(userRegister));
		return "login.jsp";
	}

}
