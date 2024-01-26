package com.java.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/adminPage")
public class AdminHomeSession extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		String adminName=(String)session.getAttribute("name");  
		if (adminName !=null) {
			RequestDispatcher rd=req.getRequestDispatcher("admin.jsp");
			rd.include(req, resp);
		}
		else {
			req.setAttribute("messgage", "Access Denied Login Required");
			RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
			rd.include(req, resp);
	}
	}

}
