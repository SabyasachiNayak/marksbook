package com.marksbook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.marksbook.model.Login;
import com.marksbook.model.User;
import com.marksbook.service.UserService;

@Controller
@RequestMapping("/login")
public class LoginController {
	
   @Autowired
   UserService userService;
	
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String login(ModelMap model) {
	      return "login";
   } 
   
   @RequestMapping(value = "/validate", method = RequestMethod.POST,produces="application/json")
   public ResponseEntity<User> validate(@RequestBody Login login) {
	   boolean isValid = userService.isValidUser(login);
	   int id = 0;
	   String name = null;
	   User user = null;
	   if(isValid)
	   {
		   user = new User();
		   id = userService.getIdByEmail(login.getEmail());
		   name = userService.getNameByEmail(login.getEmail());
		   user.setId(id);
		   user.setName(name);
		   user.setEmail(login.getEmail());
		   return new ResponseEntity<User>(user,HttpStatus.OK);
	   }
	   else
	   {
		   return new ResponseEntity<User>(user,HttpStatus.OK);
	   }
   } 
}
