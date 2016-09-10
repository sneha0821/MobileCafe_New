package com.mobile.model;

public class Product 
{
	private String pid;
	private String pname;
	private String psupid;
	private String pdescrp;
	private String pcatgry;
	int pquan;
	int pcost;
	
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
	public Product(String pid, String pname, String psupid, String pdescrp, String pcatgry, int pquan, int pcost) 
	{
		super();
		this.pid = pid;
		this.pname = pname;
		this.psupid = psupid;
		this.pdescrp = pdescrp;
		this.pcatgry = pcatgry;
		this.pquan = pquan;
		this.pcost = pcost;
	}
	
}
