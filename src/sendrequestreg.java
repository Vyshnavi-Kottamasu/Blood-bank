

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
 * Servlet implementation class sendrequestreg
 */
@WebServlet("/sendrequestreg")
public class sendrequestreg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String s1=request.getParameter("a1");
		String s3=request.getParameter("a3");
		String s4=request.getParameter("a4");
		String s5=request.getParameter("a5");
		String s6=request.getParameter("a6");
		String s7=request.getParameter("a7");
		
		
		int n=0;

		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
		//here blood is database name, root is username and password  
		PreparedStatement ps=con.prepareStatement("insert into request values(?,?,?,?,?,?)");  
		ps.setString(1,s1);
		ps.setString(2,s3);
		ps.setString(3,s4);
		ps.setString(4,s5);
		ps.setString(5,s6);
		ps.setString(6,s7);
	
		
		n=ps.executeUpdate();  
		 if(n!=0)
			 System.out.println("success");
		    //response.sendRedirect("donor_registration.jsp");  
		 else
			 System.out.println("unsuccess");
		con.close();  
		
		}catch(Exception e){ System.out.println(e);} 
		
		
		
		
		
		
		
	}

}
