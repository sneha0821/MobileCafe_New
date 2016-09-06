package com.mobile.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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
	public ModelAndView showProduct()
	{
		List<Product> list=dao.addProduct();
		return new ModelAndView("Product","list",list);
	}


}
