package com.java.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.java.dao.UserDAO;
import com.java.dto.User;

@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		UserDAO dao=new UserDAO();
		try {
			int id=dao.lastId();
			String uname = req.getParameter("user");
			long uphno = Long.parseLong(req.getParameter("cno"));
			String umail = req.getParameter("email");
			String upass = req.getParameter("password");
			User user=new User();
			user.setUid(id+1);
			user.setUname(uname);
			user.setUcon(uphno);
			user.setUmail(umail);
			user.setUpass(upass);
			int res=dao.saveUser(user);
			if (res>0) 
			{
				RequestDispatcher rd=req.getRequestDispatcher("UserLogin.jsp");
				rd.include(req, resp);
			}
			else {
				RequestDispatcher rd=req.getRequestDispatcher("UserSignup.jsp");
				rd.include(req, resp);
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			        
			e.printStackTrace();
		}
	                                            
	}
}
