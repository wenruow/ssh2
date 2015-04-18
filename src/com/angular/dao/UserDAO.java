package com.angular.dao;

import org.hibernate.SessionFactory;

import com.angular.entity.User;


public class UserDAO implements IUserDAO {

	
	private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public void saveUser(User user) {
		
		sessionFactory.getCurrentSession().save(user);
		
	}

	
}
