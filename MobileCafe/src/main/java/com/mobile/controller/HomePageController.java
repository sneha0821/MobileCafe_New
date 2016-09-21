package com.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.model.Login;
import com.mobile.model.Register;

@Controller
public class HomePageController 
{
	
	public HomePageController() {
		System.out.println("at Controller");
	}
	
	@RequestMapping("/")
	public String showHome()
	{
		return "index";
	}
	
	@RequestMapping("/AboutUs")
	public String showAboutUs() 
	{
			System.out.println("About Us");
			return "AboutUs";
	}
	
	@RequestMapping("/FullProduct")
	public String showFullProduct() 
	{
			System.out.println("Full Product");
			return "FullProduct";
	}
	
	
	
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
			System.out.println("Contact");	
			
				return "ContactUs";
	}

	
	
	
	

}
