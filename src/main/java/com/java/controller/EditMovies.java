package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.java.dao.MovieDAO;
import com.java.dto.Movie;

@WebServlet("/updatemovie")
@MultipartConfig(maxFileSize = 5*1024*1024)
public class EditMovies extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
 @Override
protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 
			MovieDAO dao = new MovieDAO();
			
			try {
				int id=Integer.parseInt(req.getParameter("mid"));
				String mname = req.getParameter("mname");
				double mprice = Double.parseDouble(req.getParameter("mprice"));
				String mgenre = req.getParameter("mgenre");
				String mlang = req.getParameter("mlang");
				Part mimage = req.getPart("mimage");

				Movie movie = new Movie();
				movie.setMid(id);
				movie.setMname(mname);
				movie.setMprice(mprice);
				movie.setMgenre(mgenre);
				movie.setMlang(mlang);
				movie.setMimage(mimage.getInputStream().readAllBytes());
				
				int n=dao.updateMovie(movie);
				
				if (n>0) {
					resp.sendRedirect("home.jsp");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
	 
}
}
