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
import com.entities.user;
import com.db.dbconnect;

@WebServlet("/Register_servlet")
public class Register_servlet extends HttpServlet {
	// this class is to retrieve the data entered by the user
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

String  log_name=req.getParameter("name");
String  log_email=req.getParameter("email");
String  log_pass=req.getParameter("passsword");

// store this info in user class 
user u=new user();
u.setName(log_name);
u.setEmail(log_email);
u.setPassword(log_pass);

// get info from userdao (data stored in sql)
userDAO dao=new userDAO(dbconnect.getConnection());
// pass user object 
boolean f=dao.userRegister(u);
System.out.print("in dao success");
if(f) {
	// concept of session tracking using httpsession
	HttpSession session=req.getSession();
	session.setAttribute("reg-sucess", "REGISTREATION SUCESSFULLY");
	resp.sendRedirect("register.jsp");
}
else {
	HttpSession session=req.getSession();
	session.setAttribute("failed-msg", "Registration Unsucessfull");
	resp.sendRedirect("register.jsp");
}
	}

}
