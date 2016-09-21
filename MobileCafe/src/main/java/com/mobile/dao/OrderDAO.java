package com.mobile.dao;

import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.*;
import com.mobile.controller.*;
import com.mobile.model.Address;
import com.mobile.model.Cart;
import com.mobile.model.Category;
import com.mobile.model.Register;
import com.mobile.model.Orders;
import com.mobile.model.Product;

@Repository
public class OrderDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
	public void placeorder(Address a,int tot,String cart)
	{
		Session s=sessionFactory.openSession();
		Transaction tx=s.getTransaction();		
		tx.begin();
		Orders o=new Orders();
		o.setAddress(a.getAddress());
		o.setEmailid(a.getEmail());
		o.setMobilenumber(a.getNumber());
		o.setName(a.getName());
		o.setPdate(new java.util.Date());
		o.setTotal(tot);
		o.setCart(cart);
		s.save(o);
		tx.commit();
		s.flush();
		s.clear();
		s.close();
	}
	
		public Orders getorderdetails()
		{
			Session s=sessionFactory.openSession();
			Transaction tx=s.getTransaction();
			tx.begin();
			Orders c=(Orders)s.createQuery("from Orders o order by o.orderid desc limt 1").list().get(0);
			System.out.println(c);
			tx.commit();
			s.flush();
			s.clear();
			s.close();
			return c;
		}
}
