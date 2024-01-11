package com.java.dao;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.java.dto.Admin;

public class AdminDAO {
	public Connection getConnection() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/moviehub", "root", "root");
	}

	public int saveAdmin(Admin admin) throws ClassNotFoundException, SQLException {

		Connection conn = getConnection();
		PreparedStatement pt = conn.prepareStatement("insert into admin values(?,?,?,?)");
		pt.setString(2, admin.getAname());
		pt.setLong(3, admin.getAcon());
		pt.setString(4, admin.getAmail());
		pt.setString(5, admin.getApass());

		return pt.executeUpdate();

	}

	public Admin findByEmail(String email) throws ClassNotFoundException, SQLException {
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from admin where admin_mail=?");
		pst.setString(1,email);
		ResultSet rs = pst.executeQuery();
		
		if (rs.next()) {
			Admin admin = new Admin(rs);
			return admin;
		} else {
			return null;
		}

	}
	public int lastId() throws SQLException, ClassNotFoundException {
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select MAX(mid) AS lastId from admin");
		ResultSet rt=pst.executeQuery();
		int lastId=0;
		if (rt.next()) {
			lastId=rt.getInt("lastId");
		} 
		return lastId;
	}


	}
