package com.marksbook.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.marksbook.model.File;
import com.marksbook.model.HSC;
import com.marksbook.model.User;
import com.marksbook.service.FileService;
import com.marksbook.service.HSCService;
import com.marksbook.service.UserService;
import com.marksbook.utility.PDFParser;

@Controller
@RequestMapping("/user")
public class MarksBookController {
	   
   @Autowired
   UserService userService;
   
   @Autowired
   HSCService hscService;
   
   @Autowired
   FileService fileService;
	   
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
   
   @RequestMapping(value = "/saveHSCMarks", method = RequestMethod.POST,produces="application/json")
   public String saveHSCMarks(String fileName) throws InvalidPasswordException, IOException
   {
	   Map<String,Integer> hscMap = PDFParser.readFromHSCPDF(fileName);
       Iterator<Map.Entry<String, Integer>> itr = hscMap.entrySet().iterator();
       while(itr.hasNext())
       {
    	    HSC hscMarks = new HSC();
            Map.Entry<String, Integer> entry = itr.next();
            hscMarks.setSubject(entry.getKey());
            hscMarks.setMarks(entry.getValue());
            if(entry.getKey().contains("FLO") || entry.getKey().contains("SLE") || entry.getKey().contains("TLS"))
            {
            	hscMarks.setFullmarks(100);
            }
            else
            {
            	hscMarks.setFullmarks(75);
            }
     	    hscService.saveMarks(hscMarks);
       }
       return "marksboard";
   }
   
   @RequestMapping(value = "/getHSCMarks", method = RequestMethod.GET,produces="application/json")
   public @ResponseBody List<HSC> getHSCMarks() 
   {
	   List<HSC> hscMarks = hscService.getMarks();
	   return hscMarks;
   }
   
   @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
   public String handleFileUpload(@RequestParam("chooseFile") MultipartFile file) throws Exception {
         
	   System.out.println("Saving file: " + file.getOriginalFilename());
       
       File uploadFile = new File();
       uploadFile.setName(file.getOriginalFilename());
       uploadFile.setData(file.getBytes());
       fileService.save(uploadFile);   
 
       return "welcome";
   }  
}
