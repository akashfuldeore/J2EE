package com.cdac.dto;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class WithReturn {

	@Id
	@GeneratedValue
	private int bookingId;
	private int userId;
	private String userName;
	private String mobNo;
	private String emailId;
	private String noOfPas;
	private String pickUpAddr;
	private String pickUpDate;
	private String pickUpTime;
	private String dropAddr;
	private String dropDate;
	private String dropTime;
	private String category;
	
	public WithReturn() {
	
		super();
	}

	
	public WithReturn(int userId, String userName, String mobNo, String emailId, String noOfPas, String pickUpAddr,
			String pickUpDate, String pickUpTime, String dropAddr, String dropDate, String dropTime, String category) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.mobNo = mobNo;
		this.emailId = emailId;
		this.noOfPas = noOfPas;
		this.pickUpAddr = pickUpAddr;
		this.pickUpDate = pickUpDate;
		this.pickUpTime = pickUpTime;
		this.dropAddr = dropAddr;
		this.dropDate = dropDate;
		this.dropTime = dropTime;
		this.category = category;
	}

	public WithReturn(int bookingId) {
		super();
		this.bookingId = bookingId;
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
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

	public String getMobNo() {
		return mobNo;
	}

	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getNoOfPas() {
		return noOfPas;
	}

	public void setNoOfPas(String noOfPas) {
		this.noOfPas = noOfPas;
	}

	public String getPickUpAddr() {
		return pickUpAddr;
	}

	public void setPickUpAddr(String pickUpAddr) {
		this.pickUpAddr = pickUpAddr;
	}

	public String getPickUpDate() {
		return pickUpDate;
	}

	public void setPickUpDate(String pickUpDate) {
		this.pickUpDate = pickUpDate;
	}

	public String getPickUpTime() {
		return pickUpTime;
	}

	public void setPickUpTime(String pickUpTime) {
		this.pickUpTime = pickUpTime;
	}

	public String getDropAddr() {
		return dropAddr;
	}

	public void setDropAddr(String dropAddr) {
		this.dropAddr = dropAddr;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getDropDate() {
		return dropDate;
	}


	public void setDropDate(String dropDate) {
		this.dropDate = dropDate;
	}


	public String getDropTime() {
		return dropTime;
	}


	public void setDropTime(String dropTime) {
		this.dropTime = dropTime;
	}


	@Override
	public String toString() {
		return bookingId + " " + userId + " " + userName + " "
				+ mobNo + " " + emailId + " " + noOfPas + " " + pickUpAddr
				+ " " + pickUpDate + " " + pickUpTime + " " + dropAddr + " "
				+ category+ " " + dropDate + " " + dropTime;
	}
	
	
}
