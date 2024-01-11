package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.java.dao.MovieDAO;
@WebServlet("/deletemovie")
public class DeleteMovie  extends HttpServlet
{
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
		dao.delete(id);
		
		RequestDispatcher rd=req.getRequestDispatcher("home.jsp");
		rd.include(req, resp);
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
}
