<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
	String q="select * from donor";
	PreparedStatement ps=con.prepareStatement(q);  
	ResultSet rs=ps.executeQuery();

%>

<table border="1">
<tr><td>Name</td><td>Gender</td><td>Age</td><td>Email</td><td>Weight</td><td>District</td><td>Contact no</td><td>Blood Group</td></tr>
<%while(rs.next()){
	%>
<tr><td><%=rs.getString("name") %></td>
    <td><%=rs.getString("gender") %></td>
    <td><%=rs.getString("age") %></td>
    <td><%=rs.getString("email") %></td>
    <td><%=rs.getString("weight") %></td>
    <td><%=rs.getString("district") %></td>
    <td><%=rs.getString("contact_no") %></td>
    <td><%=rs.getString("blood_group") %></td>
    <%} %>
 </tr>	
	
	
	

</table>

<%
}
catch(Exception e){
	System.out.println(e);
}
%>
</body>
</html>