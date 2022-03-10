package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.User;
import com.cdac.dto.WithReturn;
import com.cdac.dto.WithoutReturn;
import com.cdac.service.UserService;
import com.cdac.service.WithReturnService;
import com.cdac.service.WithoutReturnService;

@Controller
public class BookingController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private WithoutReturnService withoutReturnService;

	@Autowired
	private WithReturnService withReturnService;
	
	@RequestMapping(value="/PreBookACab.ext", method = RequestMethod.GET)
	public String preBookACab() {
		
		return "BookACab";
	}
	
	@RequestMapping(value="/PreBookingTypes.ext", method = RequestMethod.GET)
	public String preBookingTypes(String category, ModelMap map) {
		
		map.addAttribute("category", category);
		
		return "BookingTypes";
	}
	
	@RequestMapping(value="/PreWithoutReturn.ext", method = RequestMethod.GET)
	public String preWithoutReturn(String category, ModelMap map, HttpSession session) {
		
		System.out.println(category);
		
		map.put("category", category);
		
		User user = userService.findUser(((User)session.getAttribute("user")).getUserId());
		
		WithoutReturn withoutReturn = new WithoutReturn();
		withoutReturn.setUserId(user.getUserId());
		withoutReturn.setUserName(user.getUserName());
		withoutReturn.setEmailId(user.getEmailId());
		withoutReturn.setMobNo(user.getMobNo());
		withoutReturn.setCategory(category);
		
		map.put("withoutReturn", withoutReturn);
		
		return "WithoutReturn";
	}
	
	@RequestMapping(value="/WithoutReturn.ext", method = RequestMethod.POST)
	public String withoutReturn(WithoutReturn withoutReturn, ModelMap map) {
		
		withoutReturnService.addWithoutReturn(withoutReturn);
		
		return "Home";
	}
	
	@RequestMapping(value="/PreWithReturn.ext", method = RequestMethod.GET)
	public String preWithReturn(String category, ModelMap map, HttpSession session) {
		
		System.out.println(category);
		
		map.put("category", category);
		
		User user = userService.findUser(((User)session.getAttribute("user")).getUserId());
		
		WithReturn withReturn = new WithReturn();
		withReturn.setUserId(user.getUserId());
		withReturn.setUserName(user.getUserName());
		withReturn.setMobNo(user.getMobNo());
		withReturn.setEmailId(user.getEmailId());
		withReturn.setCategory(category);
		
		map.put("withReturn", withReturn);
		
		return "WithReturn";
	}
	
	@RequestMapping(value="/WithReturn.ext", method = RequestMethod.POST)
	public String withReturn(WithReturn withReturn, ModelMap map) {
		
		withReturnService.addWithReturn(withReturn);
		
		return "Home";
	}
	
	@RequestMapping(value="/PreManageBookingTypes.ext", method = RequestMethod.GET)
	public String preManageBookingTypes() {
		
		return "ManageBookingTypes";
	}
	
	@RequestMapping(value="/ShowWithoutReturn.ext", method = RequestMethod.GET)
	public String showWithoutReturn(ModelMap map, HttpSession session) {
		
		List<WithoutReturn> list =  withoutReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withoutReturnlist", list);
		
		return "ShowWithoutReturnBookings";
	}
	
	@RequestMapping(value="/ShowWithReturn.ext", method = RequestMethod.GET)
	public String showWithReturn(ModelMap map, HttpSession session) {
		
		List<WithReturn> list =  withReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withReturnlist", list);
		
		return "ShowWithReturnBookings";
	}
	
	@RequestMapping(value="/PreUpdateWithoutReturn.ext", method = RequestMethod.GET)
	public String preUpdateWithoutReturn(Integer bookingId, ModelMap map) {
		
		System.out.println(bookingId);
		
		WithoutReturn withoutReturnBooking = withoutReturnService.findBooking(bookingId);
		map.put("withoutReturnBooking", withoutReturnBooking);
		
		map.put("userName", withoutReturnBooking.getUserName());
		map.put("emailId", withoutReturnBooking.getEmailId());
		map.put("noOfPas", withoutReturnBooking.getNoOfPas());
		map.put("category", withoutReturnBooking.getCategory());
		
		return "UpdateWithoutReturnBooking";
	}
	
	@RequestMapping(value="/UpdateWithoutReturnBooking.ext", method = RequestMethod.POST)
	public String updateWithoutReturnBooking(WithoutReturn withoutReturnBooking, ModelMap map, HttpSession session) {
		
		withoutReturnService.modifyBooking(withoutReturnBooking);
		
		List<WithoutReturn> list =  withoutReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withoutReturnlist", list);
		
		return "ShowWithoutReturnBookings";
	}
	
	@RequestMapping(value="/PreDeleteWithoutReturnBooking.ext", method = RequestMethod.GET)
	public String preDeleteWithoutReturnBooking(Integer bookingId, ModelMap map, HttpSession session) {
		
		withoutReturnService.removeBooking(bookingId);
		
		List<WithoutReturn> list =  withoutReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withoutReturnlist", list);
		
		return "ShowWithoutReturnBookings";
	}
	
	@RequestMapping(value="/PreUpdateWithReturn.ext", method = RequestMethod.GET)
	public String preUpdateWithReturn(Integer bookingId, ModelMap map) {
		
		System.out.println(bookingId);
		
		WithReturn withReturnBooking = withReturnService.findBooking(bookingId);
		map.put("withReturnBooking", withReturnBooking);
		
		map.put("userName", withReturnBooking.getUserName());
		map.put("emailId", withReturnBooking.getEmailId());
		map.put("noOfPas", withReturnBooking.getNoOfPas());
		map.put("category", withReturnBooking.getCategory());
		
		return "UpdateWithReturnBooking";
	}
	
	@RequestMapping(value="/UpdateWithReturnBooking.ext", method = RequestMethod.POST)
	public String updateWithReturnBooking(WithReturn withReturnBooking, ModelMap map, HttpSession session) {
		
		withReturnService.modifyBooking(withReturnBooking);
		
		List<WithReturn> list =  withReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withReturnlist", list);
		
		return "ShowWithReturnBookings";
	}
	
	@RequestMapping(value="/PreDeleteWithReturnBooking.ext", method = RequestMethod.GET)
	public String preDeleteWithReturnBooking(Integer bookingId, ModelMap map, HttpSession session) {
		
		withReturnService.removeBooking(bookingId);
		
		List<WithReturn> list =  withReturnService.getBookings(((User)session.getAttribute("user")).getUserId());
		map.put("withReturnlist", list);
		
		return "ShowWithReturnBookings";
	}
}
