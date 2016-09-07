package com.mobile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mobile.dao.ProductDAO;
import com.mobile.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO dao;
	@RequestMapping("/Product")
	public String showProduct(Model m)
	{
		String list=dao.addProduct();		//List<Product> list=dao.addProduct();
		m.addAttribute("list", list);
		return "Product";
	}


}
