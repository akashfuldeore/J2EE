package com.cdac.validate;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cdac.dto.User;

@Service
public class UserValidator1 implements Validator {

	@Override
	public boolean supports(Class<?> clazz) {
		return clazz.equals(User.class);
	}

	@Override
	public void validate(Object target, Errors errors) {
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "mobNo", "mbKey", "mobile number required !!!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "passKey", "password required !!!");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "unmKey", "user name required !!!");
		//ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailId", "passKey", "email id required !!!");
		
		User user = (User)target;
		if(user.getPassword()!=null) {
			
			if(user.getPassword().length()<6) { 
				errors.rejectValue("password", "passKey", "more than 5 chars");
			}
		}
		
		if(emailValidate(user.getEmailId())) {
			
			
		}else {
			
			ValidationUtils.rejectIfEmptyOrWhitespace(errors, "emailId", "passKey", "email id required !!!");
			errors.rejectValue("emailId", "passKey", "correct email format required !!!");
		}
		
	}
	
	public boolean emailValidate(String input) {
		
		String emailRegex = "^[A-Z)-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$";
		Pattern emailPat = Pattern.compile(emailRegex, Pattern.CASE_INSENSITIVE);
		Matcher matcher = emailPat.matcher(input);
		return matcher.find();
	}
	
}
