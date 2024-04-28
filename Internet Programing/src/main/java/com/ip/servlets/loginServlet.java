package com.ip.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			
			String url = "jdbc:mysql://localhost:3306/NewIp";
			String name = "root";
			String password = "Shweta@30";
			
			Connection con = DriverManager.getConnection(url, name, password);
			
			String u = request.getParameter("userEmail"); 
			String p = request.getParameter("userPassword"); 
			
			String query = "select userFname from users where userEmail=? and userPassword=?";
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setString(1, u);
			pst.setString(2, p);
			ResultSet rs = pst.executeQuery();
			 if(rs.next()) {
				 response.sendRedirect("index.jsp");
				 session.setAttribute("userEmail", u);
			 }
			 else {
				 response.sendRedirect("index.jsp");	
			 }
			 
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}

}

