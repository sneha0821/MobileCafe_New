package com.mobile.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController 
{
@RequestMapping("/AboutUs")
public String showAboutUs() 
{
System.out.println("About Us");
return "AboutUs";
}
@RequestMapping("/ContactUs")
public String showContactUs() 
{
System.out.println("Contact Us");	
return "ContactUs";
}
}