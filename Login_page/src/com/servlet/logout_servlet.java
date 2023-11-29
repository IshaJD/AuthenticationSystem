package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logoutServlet")
public class logout_servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// get the session and destroy it 
		HttpSession session=req.getSession();
		session.removeAttribute("user-obj");
	
		HttpSession session2=req.getSession();	
		session2.setAttribute("logout-msg", "LogoutSucessfully");
		resp.sendRedirect("login.jsp");
	}
		
}
