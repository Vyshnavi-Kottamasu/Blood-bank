<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Donor Registration</title>
<script language="javascript">
function f1()
{
alert("SORRY YOU CANNOT DONATE");	
window.location="home.jsp";
}

</script>
</head>
<body>

<center><h1>Donor Registration</h1></center>
<form action="donor_registration" method="post">

Have you donated the blood from past three months <input type="radio" name="t16" value="" onclick="f1()" >Yes&nbsp&nbsp&nbsp<input type="radio"name="t16"value="">No
<table border=0 >

<tr><td>Full Name</td><td><input type="text" name="t1" value="" required></td></tr>
<tr><td>Gender</td><td><input type="radio"name="t2" value="male" required>Male<input type="radio"name="t2" value="female" required>Female</td></tr>
<tr><td>Age</td><td><input type="number" name="t3" value="" min="18" max="60" required></td></tr>
<tr><td>Email</td><td><input type="email" name="t4" value="" required></td></tr>
<tr><td>Weight</td><td><input type="number" name="t5" value="" min="60" required></td></tr>
<tr><td>Address</td><td><input type="text" name="t6" value="" required></td></tr>
<tr><td>District</td><td><input type="text" name="t7" value="" required></td></tr>
<tr><td>Contact no</td><td><input type="number" name="t8" value="" required></td></tr>
<tr><td>Blood Group</td><td><select name="t9" required>
                            <option value="O+">O+</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="O-">O-</option> 
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option></select></td></tr>
<tr><td>Upload photograph</td><td><input type="file" name="t10" placeholder="uploadimage" id="uploadimage" required> </td></tr>
<tr><td>Status</td><td><input type="text" name="t11" placeholder="yes" value="yes" required readonly></td></tr> 
<tr><td><input type="submit" name="submit" value="submit"></td><tr>
        
</table></form>





</body>
</html>