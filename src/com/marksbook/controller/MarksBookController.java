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

@Controller
@RequestMapping("/user")
public class MarksBookController {
	   
   @Autowired
   UserService userService;
	   
   @RequestMapping(value = "/welcome", method = RequestMethod.GET)
   public String welcome(ModelMap model) {
	      return "welcome";
   }
   
   @RequestMapping(value = "/marksboard", method = RequestMethod.GET)
   public String rankingDashboard(ModelMap model) {
	      return "marksboard";
   }
   
   @RequestMapping(value = "/user", method = RequestMethod.GET)
   public String user(ModelMap model) {
	      return "user";
   }
   
   @RequestMapping(value = "/register", method = RequestMethod.POST,produces="application/json")
   public ResponseEntity<User> register(@RequestBody User user)
   {
	   userService.register(user);
	   return new ResponseEntity<User>(user, HttpStatus.OK);
   }
   
   @RequestMapping(value = "/getId", method = RequestMethod.GET,produces="application/json")
   public ResponseEntity<Integer> getId(String email)
   {
	   int id = userService.getIdByEmail(email);
	   return new ResponseEntity<Integer>(id, HttpStatus.OK);
   }
   
 /*  @RequestMapping(value = "/getEngineer/{id}", method = RequestMethod.GET,produces="application/json")
   public @ResponseBody Engineer getEngineer(@PathVariable("id") int id)
   {
	   Engineer engineer = engineerService.getEngineerById(id);
       return engineer;
   }
   
   @RequestMapping(value = "/addEngineer", method = RequestMethod.POST,produces="application/json")
   public ResponseEntity<Engineer> addEngineer(@RequestBody Engineer engineer)
   {
	   int id = userService.getIdByEmail(engineer.getEmailId());
	   engineer.setId(id);
	   engineerService.save(engineer);
	   return new ResponseEntity<Engineer>(engineer, HttpStatus.OK);
   }
   
   //Update a Engineer Point by id
   @RequestMapping(value = "/updateEngineer/{id}", method = RequestMethod.PUT,produces="application/json")
   public ResponseEntity<?> updatEngineer(@PathVariable("id") int id, @RequestBody Engineer engineer) {
	  engineerService.update(id, engineer);
      return new ResponseEntity<Engineer>(engineer, HttpStatus.OK);
   }  */
}
