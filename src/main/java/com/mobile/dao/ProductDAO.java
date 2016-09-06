package com.mobile.dao;
import java.util.*;

import org.springframework.stereotype.Repository;

import com.mobile.model.Product;

@Repository
public class ProductDAO
{
	public ProductDAO()
	{
		
	}
	
	public List<Product> addProduct()
	{
		List<Product> myprod =new ArrayList<Product>();
		myprod.add(new Product("P101","SAMSUNG J2 2016", " S101", "Samsung J2 2016 Mobile", "SAMSUNG", 15, 9500));
		myprod.add(new Product("P102","Samsung Galaxy S7 Edge", " S101", "Samsung Galaxy S7 Mobile", "SAMSUNG", 15, 9500));
		myprod.add(new Product("P103","Micromax Q 417", " S102", "Micromax Q 417 (Canvas Mega 4G) Mobile", "MICROMAX", 15, 9500));
		myprod.add(new Product("P104","Micromax E 455", " S102", "Micromax E 455 (Canvas Nitro 4G) Mobile","MICROMAX", 15, 9000));
		myprod.add(new Product("P105","Apple Iphone 6 64GB ", " S103", "Apple Iphone 6 64GB - (Gold) Mobile", "APPLE IOS", 15, 9500));
		myprod.add(new Product("P106","Apple Iphone 6 Plus 128GB", " S103", "Apple Iphone 6 Plus 128GB Mobile", "APPLE IOS", 15, 9500));
		myprod.add(new Product("P107","Microsoft Lumia 540 ", " S104", "Microsoft Lumia 540 (DS) White Mobile", "MICROSOFT", 15, 9500));
		myprod.add(new Product("P108","Microsoft Lumia 535 Dual SIM", " S104", "Microsoft Lumia 535 Dual SIM Mobile", "MICROSOFT", 15, 7500));
		return myprod;
		
	}
	
	
	
}
