package com.java.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.rowset.serial.SerialBlob;

import com.java.dto.Movie;

public class MovieDAO {
	public Connection getConnection() throws ClassNotFoundException, SQLException {

		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/moviehub", "root", "root");
	}
	public List<Movie> getAllMovie() throws ClassNotFoundException, SQLException {

		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select * from movie");
		ResultSet rs = pst.executeQuery();
		List<Movie> movie = new ArrayList<Movie>();
		Movie m=null;
		while (rs.next()) {
			m=new Movie(rs);

			Blob b = rs.getBlob(7);
			byte[] img = b.getBytes(1, (int) b.length());
			m.setMimage(img);
			movie.add(m);
		}

		return movie;

	}

	

	

	public Movie findId(int id) throws ClassNotFoundException, SQLException {
        try (Connection conn = getConnection();
             PreparedStatement pt = conn.prepareStatement("select * from movie where mid=?")) {
            pt.setInt(1, id);
            try (ResultSet rs = pt.executeQuery()) {
                if (rs.next()) {
                    Movie m = new Movie();
                    m.setMid(rs.getInt(1));
                    m.setMname(rs.getString(2));
                    m.setMprice(rs.getDouble(3));
                    m.setMgenre(rs.getString(4));
                    m.setMlang(rs.getString(5));
                    m.setUrl(rs.getString(6));
                    Blob imageBlob = rs.getBlob(7);
                    if (imageBlob != null) {
                        byte[] img = imageBlob.getBytes(1, (int) imageBlob.length());
                        m.setMimage(img);
                    }
                    return m;
                }
            }
        }
        return null;
    }
	public int delete(int id) throws ClassNotFoundException, SQLException {
		Connection conn = getConnection();

		PreparedStatement pt = conn.prepareStatement("delete from movie where mid=?");
		pt.setInt(1, id);

		return pt.executeUpdate();

	}

	public int savamovies(Movie movie) throws ClassNotFoundException, SQLException {
		Connection conn = getConnection();

		PreparedStatement pt = conn.prepareStatement("insert into movie values(?,?,?,?,?,?,?)");
		pt.setInt(1, movie.getMid());
		pt.setString(2, movie.getMname());
		pt.setDouble(3, movie.getMprice());
		pt.setString(4, movie.getMgenre());
		pt.setString(5, movie.getMlang());
		pt.setString(6, movie.getUrl());
		Blob imageblob = new SerialBlob(movie.getMimage());
		pt.setBlob(7, imageblob);
		return pt.executeUpdate();

	}
	public int lastId() throws SQLException, ClassNotFoundException {
		Connection conn = getConnection();
		PreparedStatement pst = conn.prepareStatement("select MAX(mid) AS lastId from movie");
		ResultSet rt=pst.executeQuery();
		int lastId=0;
		if (rt.next()) {
			lastId=rt.getInt("lastId");
		} 
		return lastId;
	}
	public int updateMovie(Movie movie) throws ClassNotFoundException, SQLException {
	    Connection conn = getConnection();

	    try (PreparedStatement pt = conn.prepareStatement("update movie set mname=?, mprice=?, mgenre=?, mlanguage=?,url=?, mimage=? where mid=?")) {
	        pt.setString(1, movie.getMname());
	        pt.setDouble(2, movie.getMprice());
	        pt.setString(3, movie.getMgenre());
	        pt.setString(4, movie.getMlang());
	        pt.setString(5, movie.getUrl());
	        Blob imageBlob = new SerialBlob(movie.getMimage());
	        pt.setBlob(6, imageBlob);
	        pt.setInt(7, movie.getMid());

	        return pt.executeUpdate();
	    }
	}
}
