package com.marksbook.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.pdfbox.pdmodel.encryption.InvalidPasswordException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

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
   
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String home(ModelMap model) {
	      return "home";
   }
   
   @RequestMapping(value = "/profile", method = RequestMethod.GET)
   public String getProfile(ModelMap model) {
	      return "profile";
   }
   
   @RequestMapping(value = "/dashboard", method = RequestMethod.GET)
   public String getDashboard(ModelMap model) {
	      return "dashboard";
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
       
       HSC hsc = new HSC();
       hsc.setOriyaFM(100);
       hsc.setOriya(hscMap.get("ORIYA(FLO)"));
       hsc.setEnglishFM(100);
       hsc.setEnglish(hscMap.get("ENGLISH(SLE)"));
       hsc.setSanskritFM(100);
       hsc.setSanskrit(hscMap.get("SANSKRIT(TLS)"));
       hsc.setMath1FM(75);
       hsc.setMath1(hscMap.get("MATH PAP-1(MTA)"));
       hsc.setMath2FM(75);
       hsc.setMath2(hscMap.get("MATH PAP-2(MTG)"));
       hsc.setScience1FM(75);
       hsc.setScience1(hscMap.get("SCIENCE PAP-1(SCP)"));
       hsc.setScience2FM(75);
       hsc.setScience2(hscMap.get("SCIENCE PAP-2(SCL)"));
       hsc.setHistoryFM(75);
       hsc.setHistory(hscMap.get("HISTORY(SSH)"));
       hsc.setGeographyFM(75);
       hsc.setGeography(hscMap.get("GEOGRAPHY(SSG)"));
       
       hscService.saveMarks(hsc);
       
      /* while(itr.hasNext())
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
       }*/
       
       
       return "marksboard";
   }
   
   @RequestMapping(value = "/getHSCMarks", method = RequestMethod.GET,produces="application/json")
   public @ResponseBody List<HSC> getHSCMarks() 
   {
	   List<HSC> hscMarks = hscService.getMarks();
	   return hscMarks;
   }
   
   @RequestMapping(value = "/uploadFile", method = RequestMethod.POST)
   public String uploadFile(@RequestParam("chooseFile") MultipartFile file) throws Exception
   {
       File uploadFile = new File();
       String fileName = file.getOriginalFilename();
       uploadFile.setName(fileName);
       uploadFile.setData(file.getBytes());
       fileService.save(uploadFile);  
       
       File fl = new File();
       fl = fileService.getFile(fileName) ;
       byte[] data = fl.getData();
       
       String OS = System.getProperty("os.name").toLowerCase();
       String filePath;
       if(OS.indexOf("win") >= 0)
       {
    	   filePath = this.getClass().getResource("").getPath() + "\\" + fileName; 
       }
       else
       {
    	   filePath =  "/tmp/" + fileName; 
       }
       
       OutputStream out = new FileOutputStream(filePath);
       out.write(data);
       out.close();
       
       saveHSCMarks(filePath);
       
       //java.io.File f = new java.io.File(filePath);
       //f.delete();
 
       return "welcome";
   }  
   
   @RequestMapping(value = "/getFile/{fileName}", method = RequestMethod.GET)
   public File getFile(@PathVariable("fileName") String fileName) throws Exception {
       File file = new File();
       file = fileService.getFile(fileName) ;
       byte[] data = file.getData();
       OutputStream out = new FileOutputStream("C:\\Bunty\\out.pdf");
       out.write(data);
       out.close();
       return file;
   } 
}
