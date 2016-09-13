package com.mobile.dao;
import java.util.*;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.mobile.model.Category;
import com.mobile.model.Product;
import com.mobile.model.Seller;

@Repository
public class ProductDAO
{
	
	@Autowired
	SessionFactory sessionFactory;
	
	public void addProduct(Product p)
	{
		System.out.println("Product DAO");
		System.out.println(p.getPid());
		System.out.println(p.getPname());
		try
		{
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		//tx.begin();
		session.save(p);
		session.flush();
		tx.commit();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}
	}
	
	
	public List showProduct()
	{
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		List showprod=session.createQuery("from Product").list();
		tx.commit();
		session.close();
		return showprod;
	}
	
	public Product showProduct(String showprod)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	      Product p=(Product)session.get(Product.class,showprod);
	                 tx.commit();
	         return p;
		
	}
	
	public String[] showcatseller()
	{
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		List showcat=session.createQuery("from Category").list();
		List showsel=session.createQuery("from Seller").list();
		tx.commit();
		session.flush();
		session.clear();
		session.close();
		Gson g=new Gson();
		String[] cat=new String[2];
		cat[0]=g.toJson(showcat);
		cat[1]=g.toJson(showsel);
		
		session.close();
		return cat;
		
	}
	
	public void editProduct(Product editprod)
	{
		Session s=sessionFactory.openSession();
		Transaction tx=s.getTransaction();
		tx.begin();
		   Product p=(Product)s.get(Category.class,editprod.getPid());
		   p.setPname(editprod.getPname());
		   p.setPname(editprod.getPname());
		   //need to add some more code
			s.update(p);
		tx.commit();
	}
	public void deleteProduct(int delprodid)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	        Product p=(Product)session.get(Product.class,delprodid);
	        System.out.println(p);
	         session.delete(p); 
	         tx.commit();
	}
	
	
}

	
	
	

