package com.mobile.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mobile.model.Seller;


@Repository
public class SellerDAO 
{

	@Autowired
	SessionFactory sessionFactory;
	
	public void addSeller(Seller s)
	{
		System.out.println("Seller Product DAO");
		System.out.println(s.getSid());
		System.out.println(s.getSname());
		try
		{
		Session session=sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		//tx.begin();
		session.save(s);
		session.flush();
		tx.commit();
		session.close();
		}
		catch(Exception e)
		{
			System.out.println("Error"+e);
		}
	}
	public List showSeller()
	{
		
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		List showsell=session.createQuery("from Seller").list();
		tx.commit();
		session.close();
		return showsell;
	}
	
	public Seller showSeller(String showsell)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	        Seller s=(Seller)session.get(Seller.class,showsell);
	                 tx.commit();
	         return s;
		
	}
	
	
	public void editSeller(Seller editselid)
	{
		Session session=sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		   Seller s =(Seller)session.get(Seller.class,editselid.getSid());
		   s.setSname(editselid.getSname());
		   s.setSemailid(editselid.getSemailid());
		   s.setSmobno(editselid.getSmobno());
			session.update(s);
		tx.commit();
	}
	public void deleteSeller(String delselid)
	{
		Session session = sessionFactory.openSession();
	      Transaction tx = session.getTransaction();
	      tx.begin();
	        Seller s=(Seller)session.get(Seller.class,delselid);
	        System.out.println(s);
	         session.delete(s); 
	         tx.commit();
	}
	

}
