package com.mobile.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.mobile.dao.SellerDAO;
import com.mobile.model.Seller;

@Controller
public class SellerController 
{
	@Autowired
	SellerDAO sdao;
	
	
	
	public String getdata()
	{
		ArrayList list=(ArrayList)sdao.showSeller();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(list);
		return jsonInString;
	}
	
	
	@RequestMapping(value="/AddSeller",method=RequestMethod.GET)
	public ModelAndView showSeller(Model m)
	{
		ModelAndView mv=new ModelAndView("AddSeller","AddSeller1",new Seller());
		return mv;
	}
	
	@RequestMapping(value="/AddSeller",method=RequestMethod.POST)
	public ModelAndView addSeller(Seller addsell,Model m)
	{
		System.out.println(addsell.getSid());
		System.out.println(addsell.getSname());
		
		sdao.addSeller(addsell);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewSeller","AddSeller",new Seller());
		return mv;
		
	}
	
	@RequestMapping(value="/ViewSeller",method=RequestMethod.GET)
	public ModelAndView viewCategory1(Model m)
	{
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewSeller","ViewSeller",new Seller());
		return mv;
	}
	
	
	@RequestMapping(value="/EditSeller",method=RequestMethod.GET)
	public ModelAndView editseller(@RequestParam("id")int sid,Model m) 
	{
		Seller s=sdao.showSeller(sid);
		m.addAttribute("EditSeller1",s);
		ModelAndView mv=new ModelAndView("EditSeller","EditSeller",new Seller());
		return mv;

	}
	
	//Getting values from Category Page
	@RequestMapping(value="/EditSeller",method=RequestMethod.POST)
	public ModelAndView editseller(Seller typesel,Model m) 
	{
		sdao.editSeller(typesel);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewSeller","EditSeller",new Seller());
		
		return mv;

	}

	@RequestMapping(value="/delSeller",method=RequestMethod.GET)
	public ModelAndView DeleteCatagory(@RequestParam("id")int sid,Model m)
	{
		sdao.deleteSeller(sid);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewSeller","ViewSeller",new Seller());
		return mv;
	}
	

}
