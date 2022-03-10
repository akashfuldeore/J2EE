package com.cdac.cntr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cdac.dto.User;
import com.cdac.service.UserService;
import com.cdac.validate.UserValidator;
import com.cdac.validate.UserValidator1;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private UserValidator userValidator;
	
	@Autowired
	private UserValidator1 userValidator1;
	
	@RequestMapping(value="/PreRegistration.ext", method=RequestMethod.GET)
	public String preRegistration(User user, ModelMap map) {
		
		map.put("user", new User());
		
		return "Registration";
	}
	
	@RequestMapping(value="/Registration.ext", method=RequestMethod.POST)
	public String registration(User user, BindingResult result, ModelMap map) {
		
		userValidator1.validate(user, result);
		if(result.hasErrors()) {
			
			return "Registration";
		}
		
		userService.addUser(user);
		
		return "LogIn";
	}
	
	@RequestMapping(value="/PreLogIn.ext", method=RequestMethod.GET)
	public String preLogIn(User user, ModelMap map) {
		
		map.put("user", new User());
		
		return "LogIn";
	}
	
	@RequestMapping(value="/LogIn.ext", method=RequestMethod.POST)
	public String logIn(User user, BindingResult result, HttpSession session) {
		
		userValidator.validate(user, result);
		if(result.hasErrors()) {
			
			return "LogIn";
		}
		
		boolean recv = userService.validateUser(user);
		
		if(recv) {
			
			session.setAttribute("user", user);
			return "Home";
		}else {
			
			return "LogIn";
		}
		
	}
	
	@RequestMapping(value="/PreForgotPassword.ext", method=RequestMethod.GET)
	public String preForgotPassword(User user, ModelMap map) {
		
		map.put("user", new User());
		
		return "Forgot";
	}
	
	@RequestMapping(value="/Forgot.ext", method=RequestMethod.POST)
	public String forgotPassword(User user) {
		
		boolean recv = userService.forgotPassword(user);
		
		if(recv) {
			
			return "LogOut";
		}else {
			
			return "Forgot";
		}
		
	}
	
	@RequestMapping(value="/PreProfile.ext", method=RequestMethod.GET)
	public String preProfile(ModelMap map, HttpSession session) {
		
		User user = userService.findUser(((User)session.getAttribute("user")).getUserId());
		map.put("user", user);
		return "Profile";
	}
	
	@RequestMapping(value="/PreEditProfile.ext", method=RequestMethod.GET)
	public String preEditProfile(ModelMap map, HttpSession session) {
		
		User user = userService.findUser(((User)session.getAttribute("user")).getUserId());
		
		map.put("user", user);
		
		return "EditProfile";
	}
	
	@RequestMapping(value="/EditProfile.ext", method=RequestMethod.POST)
	public String editProfile(User user, HttpSession session) {
		
		user.setUserId(((User)session.getAttribute("user")).getUserId());
		userService.modifyProfile(user);
		
		return "Profile";
	}
	
	@RequestMapping(value="/Home.ext", method=RequestMethod.GET)
	public String redirectToHome() {
		
		return "Home";
		
	}
	
	@RequestMapping(value="/index.ext", method=RequestMethod.GET)
	public String redirectToWelcomePage() {
		
		return "index";
		
	}
	
	@RequestMapping(value="/PreOffers.ext", method=RequestMethod.GET)
	public String preOffers() {
		
		return "Offers";
		
	}
	
	@RequestMapping(value="/PreSafety.ext", method=RequestMethod.GET)
	public String preSafety() {
		
		return "Safety";
		
	}
	
	@RequestMapping(value="/PrePayment.ext", method=RequestMethod.GET)
	public String prePayment() {
		
		return "Payment";
		
	}
	
	@RequestMapping(value="/PreAboutUs.ext", method=RequestMethod.GET)
	public String preAboutUs() {
		
		return "AboutUs";
		
	}
	
	@RequestMapping(value="/PreContactUs.ext", method=RequestMethod.GET)
	public String preContactUs() {
		
		return "ContactUs";
		
	}
	
	@RequestMapping(value="/PreLogOut.ext", method=RequestMethod.GET)
	public String logOut() {
		
		return "LogOut";
	}
}
