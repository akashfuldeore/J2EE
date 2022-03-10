package com.cdac.service;

import java.util.List;

import com.cdac.dto.WithoutReturn;

public interface WithoutReturnService {

	void addWithoutReturn(WithoutReturn withoutReturn);
	List<WithoutReturn> getBookings(int userId);
	WithoutReturn findBooking(int bookingId);
	void modifyBooking(WithoutReturn withoutReturnBooking);
	void removeBooking(int bookingId);
}
