package com.java.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Admin {
	private int aid;
	private String aname;
	private long acon;
	private String amail;
	private String apass;

public Admin(ResultSet rt) throws SQLException {
		
		this.aid = rt.getInt(1);
		this.aname = rt.getString(2);
		this.acon = rt.getLong(3);
		this.amail = rt.getString(4);
		this.apass = rt.getString(5);
	}
public Admin() {
	
}

	
	public int getAid() {
		return aid;
	}

	public void setAid(int aid) {
		this.aid = aid;

	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}

	public long getAcon() {
		return acon;
	}

	public void setAcon(long acon) {
		this.acon = acon;
	}

	public String getAmail() {
		return amail;
	}

	public void setAmail(String amail) {
		this.amail = amail;
	}

	public String getApass() {
		return apass;
	}

	public void setApass(String apass) {
		this.apass = apass;
	}

	@Override
	public String toString() {
		return "Admindto [aid=" + aid + ", aname=" + aname + ", acon=" + acon + ", amail=" + amail + ", apass=" + apass
				+ "]";
	}
}
