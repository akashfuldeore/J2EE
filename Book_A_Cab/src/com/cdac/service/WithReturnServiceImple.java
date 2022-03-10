package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.WithReturnDao;
import com.cdac.dto.WithReturn;
import com.cdac.dto.WithoutReturn;

@Service
public class WithReturnServiceImple implements WithReturnService {

	@Autowired
	private WithReturnDao withReturnDao;
	
	@Override
	public void addWithReturn(WithReturn withReturn) {
		
		withReturnDao.insertWithReturn(withReturn);
	}

	@Override
	public List<WithReturn> getBookings(int userId) {
		
		
		return withReturnDao.selectBookings(userId);
	}
	
	@Override
	public WithReturn findBooking(int bookingId) {
		
		return withReturnDao.selectBooking(bookingId);
	}
	
	@Override
	public void modifyBooking(WithReturn withReturnBooking) {
		
		withReturnDao.updateBooking(withReturnBooking);;
	}
	
	@Override
	public void removeBooking(int bookingId) {
		
		withReturnDao.deleteBooking(bookingId);
	}
	
}
