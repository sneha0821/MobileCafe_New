package com.mobile.dao;


import org.hibernate.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.mobile.model.Category;

import java.util.*;

@Repository
public class CategoryDAO 
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void addCategory(Category c)
	{
		System.out.println("Category DAO");
		System.out.println(c.getCid());
		System.out.println(c.getCname());
		try
		{
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		//tx.begin();
		session.save(c);
		session.flush();
		tx.commit();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}
	}
	
	
	public List showCategory()
	{
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		List showcat=session.createQuery("from Category").list();
		tx.commit();
		session.close();
		return showcat;
	}
	
	public Category showCategory(int showcat)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	        Category c=(Category)session.get(Category.class,showcat);
	                 tx.commit();
	         return c;
		
	}
	
	public void editCategory(Category editcat)
	{
		Session s=sessionFactory.openSession();
		Transaction tx=s.getTransaction();
		tx.begin();
		   Category c=(Category)s.get(Category.class,editcat.getCid());
		   c.setCname(editcat.getCname());
		   c.setCdesc(editcat.getCdesc());
			s.update(c);
		tx.commit();
	}
	public void deleteCategory(int delcatid)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	        Category c=(Category)session.get(Category.class,delcatid);
	        System.out.println(c);
	         session.delete(c); 
	         tx.commit();
	}
	
	
}
