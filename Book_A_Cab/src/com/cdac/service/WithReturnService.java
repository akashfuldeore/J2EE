package com.cdac.service;

import java.util.List;

import com.cdac.dto.WithReturn;
import com.cdac.dto.WithoutReturn;

public interface WithReturnService {

	void addWithReturn(WithReturn withReturn);
	List<WithReturn> getBookings(int userId);
	WithReturn findBooking(int bookingId);
	void modifyBooking(WithReturn withReturnBooking);
	void removeBooking(int bookingId);
}
