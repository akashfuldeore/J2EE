package com.cdac.service;

import com.cdac.dto.User;

public interface UserService {

	void addUser(User user);
	boolean validateUser(User user);
	boolean forgotPassword(User user);
	void modifyProfile(User user);
	User findUser(int userId);
}
