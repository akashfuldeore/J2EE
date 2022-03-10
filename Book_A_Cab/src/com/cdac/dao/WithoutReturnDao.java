package com.cdac.dao;

import java.util.List;

import com.cdac.dto.WithoutReturn;

public interface WithoutReturnDao {

	void insertWithoutReturn(WithoutReturn withoutReturn);
	List<WithoutReturn> selectBookings(int userId);
	WithoutReturn selectBooking(int bookingId);
	void updateBooking(WithoutReturn withoutReturnBooking);
	void deleteBooking(int bookingId);
}
