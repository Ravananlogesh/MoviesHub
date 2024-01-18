package com.java.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

public class User {
	private int uid;
	private String uname;
	private long ucon;
	private String umail;
	private String upass;
	
	
public User(ResultSet rt) throws SQLException {
		
		this.uid = rt.getInt(1);
		this.uname = rt.getString(2);
		this.ucon = rt.getLong(3);
		this.umail = rt.getString(4);
		this.upass = rt.getString(5);
	}
	public User() {
		
	}
	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", ucon=" + ucon + ", umail=" + umail + ", upass=" + upass
				+ "]";
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public long getUcon() {
		return ucon;
	}
	public void setUcon(long ucon) {
		this.ucon = ucon;
	}
	public String getUmail() {
		return umail;
	}
	public void setUmail(String umail) {
		this.umail = umail;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
}
