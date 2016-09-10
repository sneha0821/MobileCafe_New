package com.mobile.controller;
import com.google.gson.Gson;
import com.mobile.dao.CategoryDAO;
import com.mobile.model.Category;

//import java.util.*;
import java.util.ArrayList;

//import com.mobile.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO cdao;
	
	public String getdata()
	{
		ArrayList list=(ArrayList)cdao.showCategory();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(list);
		return jsonInString;
	}
	
	
	@RequestMapping(value="/AddCategory",method=RequestMethod.GET)
	public ModelAndView showCategory(Model m)
	{
		ModelAndView mv=new ModelAndView("AddCategory","Category",new Category());
		return mv;
	}
	
	@RequestMapping(value="/AddCategory",method=RequestMethod.POST)
	public ModelAndView addCategory(Category addcat,Model m)
	{
		//System.out.println(category.getCid());
		//System.out.println(category.getCname());
		
		cdao.addCategory(addcat);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("AddCategory","Category",new Category());
		return mv;
		
	}
	
	
	
	
	
	@RequestMapping(value="/ViewCategory",method=RequestMethod.GET)
	public ModelAndView viewCategory1(Model m)
	{
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewCategory","ViewCategory",new Category());
		return mv;
	}
	
	
	@RequestMapping(value="/EditCategory",method=RequestMethod.GET)
	public ModelAndView editcategory(@RequestParam("id")int cid,Model m) 
	{
		//ModelAndView mv=new ModelAndView("editcatagory","catagory",new Catagory());
		Category s=cdao.showCategory(cid);
		m.addAttribute("EditCategory",s);
		ModelAndView mv=new ModelAndView("EditCategory","EditCategory",new Category());
		return mv;

	}
	
	//Getting values from Category Page
	@RequestMapping(value="/EditCategory",method=RequestMethod.POST)
	public ModelAndView editcategory(Category typepro,Model m) 
	{
		cdao.editCategory(typepro);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("EditCategory","EditCategory",new Category());
		return mv;

	}

	@RequestMapping(value="/delCategory",method=RequestMethod.GET)
	public ModelAndView DeleteCatagory(@RequestParam("id")int cid,Model m)
	{
		cdao.deleteCategory(cid);
		m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewCategory","ViewCategory",new Category());
		return mv;
	}
	
}

