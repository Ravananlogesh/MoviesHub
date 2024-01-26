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

import com.java.dao.UserDAO;
import com.java.dto.User;
@WebServlet("/Userlogin")
public class UserLogin extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userEmail = req.getParameter("user");
		String pass = req.getParameter("password");

		UserDAO dao = new UserDAO();

		try {
			User user = dao.findByEmail(userEmail);
			if (user != null) {
				if (user.getUpass().equals(pass)) {
					HttpSession session =req.getSession();
					boolean login=true;
					session.setAttribute("login", login);
					session.setAttribute("userId", user.getUid());
					resp.sendRedirect("index.jsp");
				} else {
					req.setAttribute("messages", "password is wrong");
					RequestDispatcher rd = req.getRequestDispatcher("UserLogin.jsp");
					rd.include(req, resp);
				}

			} else {
				req.setAttribute("messages", "email is wrong");
				RequestDispatcher rd = req.getRequestDispatcher("UserLogin.jsp");
				rd.include(req, resp);
			}

		} 
		catch (ClassNotFoundException | SQLException e) 
		{
			e.printStackTrace();
		}

	}
}