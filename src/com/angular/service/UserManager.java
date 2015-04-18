package com.angular.service;

import com.angular.dao.IUserDAO;
import com.angular.entity.User;

public class UserManager implements IUserManager {

	
	private IUserDAO userDao;
	
	public void setUserDao(IUserDAO userDao) {
		this.userDao = userDao;
	}
	@Override
	public void saveUser(User user) {
		// TODO Auto-generated method stub

		userDao.saveUser(user);
	}

}
