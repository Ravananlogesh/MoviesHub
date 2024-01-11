package com.java.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

public class Movie 
{
	private int mid;
	
	private String mname;
	private double mprice;
	private String mgenre;
	private String mlang;
	private byte[] mimage;
	public Movie() {
		
	}
	public Movie( ResultSet rt) throws SQLException {
		this.mid =rt.getInt(1); 
		this.mname = rt.getString(2);
		this.mprice =rt.getDouble(3);
		this.mgenre = rt.getString(4);
		this.mlang = rt.getString(5);
	}
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public double getMprice() {
		return mprice;
	}
	public void setMprice(double mprice) {
		this.mprice = mprice;
	}
	public String getMgenre() {
		return mgenre;
	}
	public void setMgenre(String mgenre) {
		this.mgenre = mgenre;
	}
	public String getMlang() {
		return mlang;
	}
	public void setMlang(String mlang) {
		this.mlang = mlang;
	}
	public byte[] getMimage() {
		return mimage;
	}
	public void setMimage(byte[] mimage) {
		this.mimage = mimage;
	}
	@Override
	public String toString() {
		return "Moviedto [mid=" + mid + ", mname=" + mname + ", mprice=" + mprice + ", mgenre="
				+ mgenre + ", mlang=" + mlang + ", mimage=" + mimage + "]";
	}
}
