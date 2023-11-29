package com.dao;

import java.sql.Connection;
import java.sql.*;
import com.entities.*;
public class userDAO {
// it contains the operation done on the data entered by the user and interact with the database 
	private Connection conn;

	public userDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	// for register 
	// here we will write the queries 
public boolean userRegister(user us) {
	boolean flag=false;
	try {
		String query="insert into user_info(name,email,passsword)values (?,?,?)";
		PreparedStatement pre=conn.prepareStatement(query);
		pre.setString(1, us.getName());
		pre.setString(2, us.getEmail());
		pre.setString(3, us.getPassword());
		
		pre.executeUpdate();
		flag=true;
	}catch(Exception e) {
		e.printStackTrace();
	}
	
return flag;
}
// for login 
public user getLogin(String em,String pass) {
	user u=null;
	try {
		String query="select * from user_info where email=? and passsword=?";
		PreparedStatement pre=conn.prepareStatement(query);
		pre.setString(1, em);
		pre.setString(2, pass);
		
		ResultSet rs=pre.executeQuery();
		
		
		if(rs.next()) {
			System.out.println("inside the user login");
			// store the info by sql into user class 
			
			u=new user(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getString(4));
				}
	}catch(Exception e) {
		System.out.println("inside the exception");
		e.printStackTrace();
	}
	return u;
}
}
