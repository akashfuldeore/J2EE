package com.cdac.dao;

import com.cdac.dto.User;

public interface UserDao {

	void insert(User user);
	boolean validate(User user);
	boolean forgot(User user);
	void editProfile(User user);
	User getUser(int userId);
}
