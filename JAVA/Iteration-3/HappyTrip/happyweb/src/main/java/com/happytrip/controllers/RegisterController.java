package com.happytrip.controllers;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.happytrip.controllers.dto.UserDto;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.transformer.UserDtoTransformer;

@Controller
public class RegisterController {
	
	@Autowired
	private UserProfileService userProfileService;

	public RegisterController(){
		
	}
	private static final Logger LOGGER = LoggerFactory
			.getLogger(RegisterController.class);
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
	    dateFormat.setLenient(false);

	    // true passed to CustomDateEditor constructor means convert empty String to null
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}
	
	@ModelAttribute("UserRegister")
	public UserDto getRegisterForm() {
		return new UserDto();
	}
	
	@RequestMapping(value = "/register.html", method = RequestMethod.GET)
	public String register(ModelMap model) {

		return "register";
	}
	
	@RequestMapping(value = "/registerprocess", method = RequestMethod.POST)
	public String loginProcess(@ModelAttribute("UserRegister")@Valid UserDto userRegister,
			BindingResult result, ModelMap model) {
		if("".equals(userRegister.getPassword()) || userRegister.getPassword() == null)
		{
			result.rejectValue("password", "password","Password is compulsory");
			System.out.println("Added Error");
		}
		if (result.hasErrors()) {
			return "register";
		}
		userProfileService.createUser(UserDtoTransformer.transform(userRegister));
		return "login";
	}

	@ExceptionHandler(Throwable.class)
	public String adminError(Throwable t){
		LOGGER.error("Exception", t);
		return "/resultError";
	}

}
