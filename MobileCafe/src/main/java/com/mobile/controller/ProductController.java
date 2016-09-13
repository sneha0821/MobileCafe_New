package com.mobile.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.mobile.dao.CategoryDAO;
import com.mobile.dao.ProductDAO;
import com.mobile.model.Category;
import com.mobile.model.Product;
import com.mobile.model.Seller;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO pdao;

	
	public String getdata()
	{
		ArrayList list=(ArrayList)pdao.showProduct();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(list);
		return jsonInString;
	}
	

	@RequestMapping(value="/AddProduct",method=RequestMethod.GET)
	public ModelAndView showCategory(Product addprod,Model m)
	{
		String[] s=pdao.showcatseller();
		System.out.println(s[0]);
		m.addAttribute("catlist",s[0]);
		m.addAttribute("selllist",s[1]);		
		ModelAndView mv=new ModelAndView("AddProduct","Product",new Product());
		return mv;

	
	}
	

	@RequestMapping(value="/addproduct",method=RequestMethod.POST)
	public String addproduct(@ModelAttribute("prdt")Product prdt, HttpServletRequest request,RedirectAttributes attributes) 
	{
		System.out.println(prdt.getPid());
		pdao.addProduct(prdt);
		
		String path="D:\\Chandru\\MobileCafe\\src\\main\\webapp\\myfiles\\";
		path=path+String.valueOf(prdt.getPid())+".jpg";
		System.out.println(path);
		File f=new File(path);
		MultipartFile filedet=prdt.getPimage();
		
		if(!filedet.isEmpty())
		{
			try
			{
			  byte[] bytes=filedet.getBytes();
			  System.out.println(bytes.length);
			  FileOutputStream fos=new FileOutputStream(f);
              			BufferedOutputStream bs=new BufferedOutputStream(fos);
              			bs.write(bytes);
              			bs.close();
             			 System.out.println("File Uploaded Successfully");
			}
			catch(Exception e)
			{
				System.out.println("Exception Arised"+e);
			}
		}
		else
		{
			System.out.println("File is Empty not Uploaded");
			
		}
		return "product";
	
	}
	
	@RequestMapping(value="/ViewProduct",method=RequestMethod.GET)
	public ModelAndView viewProduct1(Model m)
	{
	
		ArrayList list=(ArrayList)pdao.showProduct();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(list);
		m.addAttribute("list",jsonInString);
		ModelAndView mv=new ModelAndView("ViewProduct","Product",new Product());
		return mv;
	}
	
	
	@RequestMapping(value="/EditProduct",method=RequestMethod.GET)
	public ModelAndView editproduct(@RequestParam("id")String pid,Model m) 
	{
	//ModelAndView mv=new ModelAndView("editcatagory","catagory",new Catagory());
		Product p=pdao.showProduct(pid);
		m.addAttribute("EditProduct1",p);
		ModelAndView mv=new ModelAndView("EditProduct","EditProduct",new Product());
		return mv;

	}
	
	//Getting values from Category Page
	@RequestMapping(value="/EditProduct",method=RequestMethod.POST)
	public ModelAndView editproduct(Product typepro,Model m) 
	{
		pdao.editProduct(typepro);
		//m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewProduct","Product",new Product());
		return mv;

	}

	@RequestMapping(value="/delProduct",method=RequestMethod.GET)
	public ModelAndView DeleteProduct(@RequestParam("id")int pid,Model m)
	{
		pdao.deleteProduct(pid);
		//m.addAttribute("list",getdata());
		ModelAndView mv=new ModelAndView("ViewProduct","ViewProduct",new Product());
		return mv;
	}
	


}
