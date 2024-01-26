package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.dao.UserDAO;

@WebServlet("/addcart")
public class AddCartSession extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		UserDAO dao = new UserDAO();
		int movieid = Integer.parseInt(req.getParameter("id"));

		HttpSession session = req.getSession();
		

		int uid = (int) session.getAttribute("userId");
		           

		try {
			dao.saveCart(uid, movieid);
			Boolean login =(Boolean)session.getAttribute("login");
		if (login !=null && login) {

			session.setAttribute("cart"+movieid, true);
			resp.sendRedirect("index.jsp");

		} 
		else {
			resp.sendRedirect("UserLogin.jsp");
		}
		}
		catch (ClassNotFoundException | SQLException e) {

			e.printStackTrace();
		}
	}
}
