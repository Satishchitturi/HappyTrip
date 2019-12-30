package com.happytrip.services.impl;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.happytrip.dao.UserDao;
import com.happytrip.model.Role;
import com.happytrip.model.User;
import com.happytrip.services.Roles;
import com.happytrip.services.UserProfileService;

@Service
public class UserProfileServiceImpl implements UserProfileService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public void createUser(User user) {
		// TODO Auto-generated method stub
		Role userRole = new Role();
		userRole.setUser(user);
		userRole.setRole(Roles.ROLE_USER.name());
		user.addRole(userRole);
		user.setCreatedDate(new Date());
		user.setEnabled(true);
		userDao.save(user);
	}

	@Override
	public User getUserByUsername(String username) {
		return userDao.findForUsername(username);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		this.userDao.update(user);
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}
