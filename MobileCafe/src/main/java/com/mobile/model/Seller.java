package com.mobile.model;

import javax.persistence.*;
@Entity
public class Seller 
{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int sid;
	@Column
    private	String sname;
	@Column
	private String semailid;
	@Column
	private String smobno;
	
public Seller()
{

}
	public int getSid() {
	return sid;
	}

	public void setSid(int sid) {
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
