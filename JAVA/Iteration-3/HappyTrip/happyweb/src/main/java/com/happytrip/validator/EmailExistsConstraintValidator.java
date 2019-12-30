package com.happytrip.validator;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

import org.springframework.beans.factory.annotation.Autowired;

import com.happytrip.dao.UserDao;
import com.happytrip.model.User;
import com.happytrip.services.UserProfileService;
import com.happytrip.util.AuthenticatedUserUtil;

public class EmailExistsConstraintValidator implements ConstraintValidator<EmailExistsConstraint, String> {

	@Autowired
	private UserProfileService profileService;
	
	@Autowired
	private UserDao userDao;
	@Override
	public void initialize(EmailExistsConstraint arg0) {
	}

	@Override
	public boolean isValid(String arg0, ConstraintValidatorContext arg1) {
		User user = AuthenticatedUserUtil
				.currentLoggedInUser(profileService);
		
		if(user != null)
		{
			 if(!user.getEmail().equals(arg0)){
					return userDao.findForUsername(arg0) == null;	
			 }
		}else
		{
			return userDao.findForUsername(arg0) == null;	
		}
		return true;
	}

}
