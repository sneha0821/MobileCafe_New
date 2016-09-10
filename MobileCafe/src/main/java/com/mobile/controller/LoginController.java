package com.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.model.Login;
import com.mobile.model.Register;

@Controller
public class LoginController 
{
	
	public LoginController() {
		System.out.println("at Controller");
	}
	@RequestMapping("/AboutUs")
	public String showAboutUs() 
	{
			System.out.println("About Us");
			return "AboutUs";
	}
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
			System.out.println("Contact");	
			
				return "ContactUs";
	}

	
	@RequestMapping("/Admin")
	public String showAdmin() 
	{
			System.out.println("Admin");	
				return "Admin";
	}
	
	@RequestMapping(value="Login", method=RequestMethod.GET)
	public ModelAndView getLogin(@ModelAttribute("Login")Login login)
	{
	
		ModelAndView model=new ModelAndView("Login");
		System.out.println("Login");	
		return model;
		
	}
	
	@RequestMapping(value="Register", method=RequestMethod.GET)
	public ModelAndView getLogin(@ModelAttribute("Register")Register register)
	{
			System.out.println("Register");	
			ModelAndView model=new ModelAndView("Register");
			return model;
	}
	

}
