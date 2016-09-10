package com.mobile.model;

public class Seller 
{
	String sid;
	String sname;
	String semailid;
	String smobno;
	public String getSid() {
		return sid;
	}
	
public Seller()
{

}
	public Seller(String sid, String sname, String semailid, String smobno) {
		
		this.sid = sid;
		this.sname = sname;
		this.semailid = semailid;
		this.smobno = smobno;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSemailid() {
		return semailid;
	}
	public void setSemailid(String semailid) {
		this.semailid = semailid;
	}
	public String getSmobno() {
		return smobno;
	}
	public void setSmobno(String smobno) {
		this.smobno = smobno;
	}
	
	
	

}
