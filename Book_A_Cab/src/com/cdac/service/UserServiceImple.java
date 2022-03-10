package com.cdac.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.UserDao;
import com.cdac.dto.User;

@Service
public class UserServiceImple implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public void addUser(User user) {
		
		userDao.insert(user);
	}

	@Override
	public boolean validateUser(User user) {
		
		
		return userDao.validate(user);
	}

	@Override
	public boolean forgotPassword(User user) {
		
		return userDao.forgot(user);
	}

	@Override
	public void modifyProfile(User user) {
		
		userDao.editProfile(user);
	}

	@Override
	public User findUser(int userId) {
		
		return userDao.getUser(userId);
	}
	
}
