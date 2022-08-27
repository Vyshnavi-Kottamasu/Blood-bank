<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Details</title>
</head>
<body>
<%
String s1=request.getParameter("t1");
String s2=request.getParameter("t2");
HttpSession hs1=request.getSession(true);

try
{
	Class.forName("com.mysql.jdbc.Driver");  
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","root","root");  
	String q="select * from donor where blood_group=? and district=? or blood_group='O+'";
	//String q1="insert into send_request values(?,?)";
	PreparedStatement ps=con.prepareStatement(q);  
	//PreparedStatement ps1=con.prepareStatement(q1); 
	ps.setString(1,s1);
	ps.setString(2,s2);
	
	ResultSet rs=ps.executeQuery();
	//int n=ps1.executeUpdate();  

%>
<form action="MAIL" method="post">
<table border="1">
<tr><th>Name</th><th>Age</th><th>Blood Group</th>
</tr>
<%while(rs.next()){
	 
    %>
<tr><td><%=rs.getString("name") %></td>
    <td><%= rs.getString("age") %></td>
    <td><%= rs.getString("blood_group") %></td>
   
    <td><input type="submit" name="submit" value="request"  onclick="this.disabled='disabled'"  ></td>
    <% hs1.setAttribute("email1",rs.getString("email"));
	  hs1.setAttribute("name1",rs.getString("name"));
	  hs1.setAttribute("contact1",rs.getString("contact"));
	  } //while_close %>
 </tr>	
	
</table>
</form>
<%


}//try_close
catch(Exception e){
	System.out.println(e);
}
%>



</body>
</html>