package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.userDAO;
import com.db.dbconnect;
import com.entities.user;

@WebServlet("/login_servlet")
public class login_servlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String user_email=req.getParameter("email");
		String user_password=req.getParameter("passsword");
		
		//get the dao object for information reteival 
	userDAO ud=new userDAO(dbconnect.getConnection());
	user us=ud.getLogin(user_email, user_password);
	System.out.println("get user"+us);
	if(us!=null) {
		HttpSession session=req.getSession();
		session.setAttribute("user-obj",us);
		resp.sendRedirect("home.jsp");
	}
	else{
		HttpSession session=req.getSession();
		session.setAttribute("user-obj",us);
		resp.sendRedirect("login.jsp");
	}

}
}