package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {

	@Id
	@GeneratedValue
	private int userId;
	private String userName;
	private String emailId;
	private String mobNo;
	private String password;
	
	public User() {
	
		super();
	}

	public User(String userName, String emailId, String mobNo, String password) {
		super();
		this.userName = userName;
		this.emailId = emailId;
		this.mobNo = mobNo;
		this.password = password;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public String toString() {
		return userId + " " + userName + " " + emailId + " " + mobNo
				+ " " + password;
	}

}
