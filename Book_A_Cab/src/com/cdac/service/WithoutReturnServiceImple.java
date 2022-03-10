package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.WithoutReturnDao;
import com.cdac.dto.WithoutReturn;

@Service
public class WithoutReturnServiceImple implements WithoutReturnService {

	@Autowired
	private WithoutReturnDao withoutReturnDao;

	@Override
	public void addWithoutReturn(WithoutReturn withoutReturn) {
		
		withoutReturnDao.insertWithoutReturn(withoutReturn);
	}

	@Override
	public List<WithoutReturn> getBookings(int userId) {
		
		return withoutReturnDao.selectBookings(userId);
	}

	@Override
	public WithoutReturn findBooking(int bookingId) {
		
		return withoutReturnDao.selectBooking(bookingId);
	}

	@Override
	public void modifyBooking(WithoutReturn withoutReturnBooking) {
		
		withoutReturnDao.updateBooking(withoutReturnBooking);
	}

	@Override
	public void removeBooking(int bookingId) {
		
		withoutReturnDao.deleteBooking(bookingId);
	}

}
