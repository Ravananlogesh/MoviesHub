package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.dao.MovieDAO;
import com.java.dto.Movie;

@WebServlet("/editmovie")
@MultipartConfig(maxFileSize = 5*1024*1024)
public class FindMovie extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
		int id=Integer.parseInt(req.getParameter("id"));
         MovieDAO dao=new MovieDAO();
         
         try {
        	 Movie m = dao.findId(id);
        	 if (m != null) {
        		HttpSession session=req.getSession();
 				String adminName=(String)session.getAttribute("name");
 				if (adminName !=null) {
 					 req.setAttribute("movie", m);
 	        	     RequestDispatcher d = req.getRequestDispatcher("edit.jsp");
 	        	     d.forward(req, resp);
 				}
 				else {
 					req.setAttribute("messgage", "Access Denied Login Required");
 					RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
 					rd.include(req, resp);
 				}
        	     
        	 }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
         
	}
}
