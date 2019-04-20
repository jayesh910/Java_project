package com.almproject;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un= request.getParameter("username");
		String pw= request.getParameter("password");
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/almproject","root","8888");
			
			 stmt = con.prepareStatement("select * from users where Username=? and Password=?");
			stmt.setString(1, un);
			stmt.setString(2, pw);
			
			ResultSet rs = stmt.executeQuery();
			
			while(rs.next()) {
				response.sendRedirect("Dashboard.jsp");
				return;
			}
			
		        
			response.sendRedirect("Error.html");
			
			
		}
		catch (Exception e) {
			// TODO: handle exception
			//System.out.println("EEXC");
			//response.sendRedirect("Error.html");
			e.printStackTrace();
		}
		
		/*if(un.equals("jayesh") && pw.equals("1234")) {
			response.sendRedirect("Success.html");
		}
		else
			response.sendRedirect("Error.html");
		doGet(request, response);*/
	}

}
