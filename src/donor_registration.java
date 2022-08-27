

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class donor_registration
 */
@WebServlet("/donor_registration")
public class donor_registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		String s3=request.getParameter("t3");
		String s4=request.getParameter("t4");
		String s5=request.getParameter("t5");
		String s6=request.getParameter("t6");
		String s7=request.getParameter("t7");
		String s8=request.getParameter("t8");
		String s9=request.getParameter("t9");
		String s10=request.getParameter("t10");
		String s11=request.getParameter("t11");
		
		
		int n=0;

		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
		//here blood is database name, root is username and password  
		PreparedStatement ps=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?,?,?,?,?)");  
		ps.setString(1,s1);
		ps.setString(2,s2);
		ps.setString(3,s3);
		ps.setString(4,s4);
		ps.setString(5,s5);
		ps.setString(6,s6);
		ps.setString(7,s7);
		ps.setString(8,s8);
		ps.setString(9,s9);
		ps.setString(10,s10);
		ps.setString(11,s11);
		
		
		n=ps.executeUpdate();  
		 if(n!=0)
		 {
			 System.out.println("success");
		    response.sendRedirect("home.jsp"); 
		 }
		 else
			 System.out.println("unsuccess");
		con.close();  
		
		}catch(Exception e){ System.out.println(e);} 
	}

		
		
		
		
	}

