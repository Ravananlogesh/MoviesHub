package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.java.dao.AdminDAO;
import com.java.dto.Admin;

@WebServlet("/register")
public class AdminData extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		AdminDAO dao=new AdminDAO();
		try {
			int id=dao.lastId();
			String aname = req.getParameter("admin");
			long aphno = Long.parseLong(req.getParameter("cno"));
			String amail = req.getParameter("email");
			String apass = req.getParameter("password");
			Admin admin=new Admin();
			admin.setAid(id+1);
			admin.setAname(aname);
			admin.setAcon(aphno);
			admin.setAmail(amail);
			admin.setApass(apass);
			int res=dao.saveAdmin(admin);
			if (res>0) 
			{
				RequestDispatcher rd=req.getRequestDispatcher("alogin.jsp");
				rd.include(req, resp);
			}
			else {
				RequestDispatcher rd=req.getRequestDispatcher("asignup.jsp");
				rd.include(req, resp);
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		
	}
}
