package com.mobile.model;

import javax.persistence.*;

@Entity
public class Category
{
	@Id
	String cid;
	@Column
	String cname;
	@Column
	String cdesc;
	public Category()
	{
	}
	
	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCdesc() {
		return cdesc;
	}
	public void setCdesc(String cdesc) {
		this.cdesc = cdesc;
	}
	
}
