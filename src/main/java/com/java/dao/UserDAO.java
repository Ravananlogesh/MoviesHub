package com.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

import com.java.dto.Movie;
import com.java.dto.User;

public class UserDAO {
	public Connection getConnection() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/moviehub", "root", "root");
	}

	public int saveUser(User user) throws ClassNotFoundException, SQLException {

		Connection conn = getConnection();
		PreparedStatement pt = conn.prepareStatement("insert into user values(?,?,?,?,?)");
		pt.setInt(1, user.getUid());
		pt.setString(2, user.getUname());
		pt.setLong(3, user.getUcon());
		pt.setString(4, user.getUmail());
		pt.setString(5, user.getUpass());

		return pt.executeUpdate();

	}

	public User findByEmail(String email) throws ClassNotFoundException, SQLException {
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from user where u_mail=?");
		pst.setString(1,email);
		ResultSet rs = pst.executeQuery();
		
		if (rs.next()) {
			User user = new User(rs);
			return user;
		} else {
			return null;
		}

	}
	public int lastId() throws SQLException, ClassNotFoundException {
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select MAX(uid) AS lastId from user");
		ResultSet rt=pst.executeQuery();
		int lastId=0;
		if (rt.next()) {
			lastId=rt.getInt("lastId");
		} 
		return lastId;
	}
    public int saveCart(int uid,int movieid) throws SQLException, ClassNotFoundException {
    	Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("insert into cartmovie values(?,?)");
		pst.setInt(1, uid);
    	pst.setInt(2, movieid);
        return pst.executeUpdate();    	
    }
	

	}

