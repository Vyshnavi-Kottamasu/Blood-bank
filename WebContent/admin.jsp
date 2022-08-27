
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>
welcome <%= session.getAttribute("name") %>
</h1>
<form action="inactive.jsp">
<input type="submit" name="t1" value="Inactive donors">
</form>

<form action="viewdonors.jsp">
<input type="submit" name="t2" value="View donors">
</form>

<form action="display_accepted_donors.jsp">
<input type="submit" name="t3" value="donors who donated blood">
</form>


</body>
</html>