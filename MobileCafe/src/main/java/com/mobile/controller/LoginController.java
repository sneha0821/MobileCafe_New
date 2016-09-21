package com.mobile.controller;
import java.util.ArrayList;
import java.util.Collection;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.mobile.dao.ProductDAO;
import com.mobile.dao.RegisterDAO;
import com.mobile.model.Login;
import com.mobile.model.Register;
import com.google.gson.Gson;
import com.mobile.model.Cart;



@Controller
public class LoginController 
{
	
	@Autowired
	RegisterDAO rdao;
	
	@Autowired
	ProductDAO pdao;

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/loginsuccess")
	public String login_session_attributes(HttpSession session,Model model) 
	{
		System.out.println("Hai..Am");
		String userid = SecurityContextHolder.getContext().getAuthentication().getName();
		
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		     if (authority.getAuthority().equals(role)) 
		     {
		    	 
		    	 session.setAttribute("UserLoggedIn", "true");
		    	 session.setAttribute("Username", userid);
		    	 page="FullProduct";
		    	 ArrayList list=(ArrayList)pdao.showProduct();
		    	 Gson gson = new Gson();
		    	 String jsonInString=gson.toJson(list);
		    	 model.addAttribute("list",jsonInString);
		    	 ArrayList<Cart> cartitem=new ArrayList<Cart>();
		    	 session.setAttribute("mycart", cartitem);
		    	 
		    	 break;
		     }
		     else 
		     {
		    	 session.setAttribute("LoggedIn", "true");
		    	 session.setAttribute("Administrator", "true");
		    	 page="Admin";
		    	 break;
		    }
		}
		return page;
	}

			

//-----------------------------------------------------------------------------
	@RequestMapping("/Admin")
	public String showAdmin() 
	{
			System.out.println("Admin");	
				return "Admin";
	}
	
	@RequestMapping("/Login")
	public String showLogin()
	{
		System.out.println("Login");
	 return "Login";
	}
	
	@RequestMapping("/forgotPassword")
	public String showForgetPassword()
	{
		System.out.println("forgotPassword");
	 return "forgotPassword";
	}
	

	@RequestMapping(value="Register", method=RequestMethod.GET)
	public ModelAndView getLogin(@ModelAttribute("Register")Register register)
	{
			System.out.println("Register");	
			ModelAndView model=new ModelAndView("Register");
			return model;
	}
	
	
	@RequestMapping(value="Register", method=RequestMethod.POST)
	public ModelAndView Success(Register reg, Model m)
	{
			rdao.addUser(reg);
			ModelAndView model=new ModelAndView("Login","Register", new Register());
			return model;
	}
	

	
	
}
	