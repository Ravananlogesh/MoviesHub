package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.dto.Admin;
import com.java.dao.AdminDAO;

@WebServlet("/adminlogin")
public class AdminLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String admail = req.getParameter("admin");
		String adpass = req.getParameter("password");

		AdminDAO dao = new AdminDAO();
                                                 
		try {
			Admin admin = dao.findByEmail(admail);
			if (admin != null) {
				if (admin.getApass().equals(adpass)) {
					HttpSession session=req.getSession();
					session.setAttribute("name", admin.getAname());
					RequestDispatcher rd = req.getRequestDispatcher("adminPage");
					rd.include(req, resp);
				} else {
					req.setAttribute("messages", "password is wrong");
					RequestDispatcher rd = req.getRequestDispatcher("alogin.jsp");
					rd.include(req, resp);
				}

			} else {
				req.setAttribute("messages", "email is wrong");
				RequestDispatcher rd = req.getRequestDispatcher("alogin.jsp");
				rd.include(req, resp);
			}

		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}

	}
}
