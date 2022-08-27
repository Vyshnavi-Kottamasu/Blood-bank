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
 
 Object s1=session.getAttribute("name1");
 Object s2=session.getAttribute("email1");
 Object s3=session.getAttribute("contact1");
 String st1=String.valueOf(s1);
 String st2=String.valueOf(s2);
 String st3=String.valueOf(s3);
 
 
 
 try{  
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
		//here blood is database name, root is username and password  
		PreparedStatement ps=con.prepareStatement("insert into accept values(?,?,?)");  
		ps.setString(1,st1);
		ps.setString(2,st2);
		ps.setString(3,st3);
        int n=ps.executeUpdate();  
 }
 catch(Exception e){ System.out.println(e);} 
 
 
 
 %>


</body>
</html>