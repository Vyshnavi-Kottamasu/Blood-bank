<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>request registration</title>
</head>

<body>
<h1 align="center">Send Request Registration Page</h1>

<form action="sendrequestreg" method="post">
<table>
<tr><td>Name</td><td><input type="text" name="a1" value="" required></td>
<tr><td>Gender</td><td><input type="radio" name="a3" value="male" required>Male</td><td><input type="radio" name="a3" value="female" required>Female</td></tr>
<tr><td>Age</td><td><input type="number" name="a4" value="" required></td></tr>
<tr><td>Phone Number</td><td><input type="number" name="a5" value="" required></td></tr>
<tr><td>Email</td><td><input type="email" name="a6" value="" required></td></tr>
<tr><td>Password</td><td><input type="password" name="a7" value="" required></td></tr>
<tr><td></td><td><input type="submit" class="button"  value="submit"></td></tr>
</table>
</form>
</body>
</html>