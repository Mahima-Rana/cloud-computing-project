package com.ip.servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class registerServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		try {
			String user = "root";                                                                                                
			String password = "Shweta@30";
			String url = "jdbc:mysql://localhost:3306/NewIp";
			
			String userFname = request.getParameter("userFname");
			String userLname = request.getParameter("userLname");
			String userMobile = request.getParameter("userMobile");
			String userEmail = request.getParameter("userEmail");
			String userPassword = request.getParameter("userPassword");
			
			String sql = "insert into users (userFname, userLname, userMobile, userEmail, userPassword) VALUES (?, ?, ?, ?, ?)";
			
			Connection con = DriverManager.getConnection(url, user, password);
			PreparedStatement pst = con.prepareStatement(sql);
				pst.setString(1, userFname);
				pst.setString(2, userLname);
				pst.setString(3, userMobile);
				pst.setString(4, userEmail);
				pst.setString(5, userPassword);
				
			int changed = pst.executeUpdate();
			if(changed > 0) {
				response.sendRedirect("index.jsp");
				session.setAttribute("userEmail", userEmail);
			}
			else {
				response.sendRedirect("register.jsp");	
			}
						

		} catch (Exception e) {
				e.printStackTrace();
				response.sendRedirect("register.jsp");								
		}											
	}											
}

