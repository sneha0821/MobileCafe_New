package com.mobile.controller;
import org.springframework.mail.SimpleMailMessage; 
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;
import javax.servlet.http.HttpServletRequest;  
@Controller
public class MailSender {
	@Autowired 
	private JavaMailSender mailSender; 
	 
	 
	     @RequestMapping(value="/sendEmail", method = RequestMethod.GET) 
	     public String doSendEmail(HttpServletRequest request) { 
	    	 System.out.println("Welcome to mail"); 
	         // takes input from e-mail form 
	         String recipientAddress = request.getParameter("email"); 
	         String fname=request.getParameter("first_name"); 
	         String subject =request.getParameter("message"); 
	         String message = request.getParameter("comments"); 
	         String finalmessage="Hi "+fname+", "+" "+message+"!!! "+"Check this out!!!"; 
	           
	         // prints debug info 
	         
	         
	         System.out.println(recipientAddress+"  "+fname+" "+subject+"  "+message+" "); 
	         
	         
	         
	         
	         System.out.println("To: " + recipientAddress); 
	         System.out.println("Subject: " + subject); 
	         System.out.println("Message: " + message); 
	           
	         // creates a simple e-mail object 
	         SimpleMailMessage email = new SimpleMailMessage(); 
	         email.setTo(recipientAddress); 
	         email.setSubject(subject); 
	         email.setText(finalmessage); 
	           
	         // sends the e-mail 
	         mailSender.send(email); 
	          System.out.println("Thank you"); 
	         // forwards to the view named "Result" 
	         return "result"; 
	     } 
}
