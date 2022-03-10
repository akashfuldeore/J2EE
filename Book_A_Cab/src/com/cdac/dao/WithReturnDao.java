package com.cdac.dao;

import java.util.List;

import com.cdac.dto.WithReturn;
import com.cdac.dto.WithoutReturn;

public interface WithReturnDao {

	void insertWithReturn(WithReturn withReturn);
	List<WithReturn> selectBookings(int userId);
	WithReturn selectBooking(int bookingId);
	void updateBooking(WithReturn withReturnBooking);
	void deleteBooking(int bookingId);
}
