<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
        String s1=request.getParameter("t1");
		String s2=request.getParameter("t2");
		int n=0;
		
		HttpSession hs=request.getSession(true);
		try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
		//here sonoo is database name, root is username and password  
		PreparedStatement stmt=con.prepareStatement("select * from request where email=? and password=?");  
		stmt.setString(1,s1);
		stmt.setString(2,s2);
		ResultSet rs=stmt.executeQuery();
		if(rs.next())
		{
			 out.println("success");
		
			 hs.setAttribute("name",rs.getString("name"));
			 
			 
			 response.sendRedirect("sendrequest.jsp");
		}
		else
		{
			out.println("unsuccess");
		}
		
		
		con.close();  
		}catch(Exception e){ System.out.println(e);} 
		
%>


</body>
</html>