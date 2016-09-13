package com.mobile.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product 
{
	@Id
	private String pid;
	@Column
	private String pname;
	@Column
	private String psupid;
	@Column
	private String pcatid;
	@Column
	private String pdescrp;
	@Column
	private String pcatgry;
	@Column
	int pquan;
	@Column
	int pcost;
	@Transient
	MultipartFile pimage;
	
	public MultipartFile getPimage() {
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
	public Product()
	{
	
	}
	
	public String getPcatid() {
		return pcatid;
	}
	public void setPcatid(String pcatid) {
		this.pcatid = pcatid;
	}
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPsupid() {
		return psupid;
	}
	public void setPsupid(String psupid) {
		this.psupid = psupid;
	}
	public String getPdescrp() {
		return pdescrp;
	}
	public void setPdescrp(String pdescrp) {
		this.pdescrp = pdescrp;
	}
	public String getPcatgry() {
		return pcatgry;
	}
	public void setPcatgry(String pcatgry) {
		this.pcatgry = pcatgry;
	}
	public int getPquan() {
		return pquan;
	}
	public void setPquan(int pquan) {
		this.pquan = pquan;
	}
	public int getPcost() {
		return pcost;
	}
	public void setPcost(int pcost) {
		this.pcost = pcost;
	}
	

	
}
