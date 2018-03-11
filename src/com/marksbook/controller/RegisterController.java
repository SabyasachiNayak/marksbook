package com.marksbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.marksbook.model.User;
import com.marksbook.service.UserService;
import com.marksbook.utility.StatusMessage;

@Controller
@RequestMapping("/register")
public class RegisterController {
	
   @Autowired
   UserService userService;

   @RequestMapping(value = "/user", method = RequestMethod.GET)
   public String login(ModelMap model) {
	      return "register";
   } 
   
   @RequestMapping(value = "/registerUser", method = RequestMethod.POST,produces="application/json")
   public ResponseEntity<StatusMessage> register(@RequestBody User user)
   {
	   StatusMessage status = new StatusMessage();
	   boolean emailExists = userService.emailExist(user.getEmail());
	   if(!emailExists)
	   {
		   userService.register(user);
		   status.setStatus("SUCCESS");
		   status.setMessage("User registered successfully.");
		   
		   return new ResponseEntity<StatusMessage>(status, HttpStatus.OK);
	   }
	   else
	   {
		   status.setStatus("FAILURE");
		   status.setMessage("Email already exists.");
		   return new ResponseEntity<StatusMessage>(status, HttpStatus.OK);
	   }
   }
}
