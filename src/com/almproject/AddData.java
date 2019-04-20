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

/**
 * Servlet implementation class AddData
 */
@WebServlet("/AddData")
public class AddData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddData() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String nm= request.getParameter("addname");
		String ln= request.getParameter("addlink");
		String dsc = request.getParameter("adddesc");
		Connection con = null;
		PreparedStatement stmt = null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/almproject","root","8888");
			
			 stmt = con.prepareStatement(" insert into links values (?,?,?)");
			stmt.setString(1, nm);
			stmt.setString(2, ln);
			stmt.setString(3, dsc);
			
			stmt.execute();
			con.close();
			
			
				response.sendRedirect("Dashboard.jsp");
			
		}
		catch (Exception e) {
			// TODO: handle exception
			//System.out.println("EEXC");
			//response.sendRedirect("Error.html");
			e.printStackTrace();
		}
		
	}

}
