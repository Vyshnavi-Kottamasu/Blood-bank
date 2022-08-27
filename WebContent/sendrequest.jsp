

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Send Request</title>
</head>
<body>
<center><h1>Send Request</h1></center>
<form action="sendrequest1.jsp" method="post">
<table>
<tr><td>Enter Blood Group:</td><td><select name="t1" required>
                            <option> </option>
                            <option value="O+">O+</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="O-">O-</option> 
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            </select></td><br>
</tr>
<tr><td>Select District:</td>
					<td>
						<select name="t2" required>
							<option value="">--Select--</option>
							<option value="Adilabad">Adilabad</option>
							<option value="Ananthapur">Ananthapur</option>
							<option value="Chithur">Chithur</option>
							<option value="East Godavari">East Godavari</option>
							<option value="Guntur">Guntur</option>
							<option value="Hyderabad">Hyderabad</option>
							<option value="Kadapa">Kadapa</option>
							<option value="Karimnagar">Karimnagar</option>
							<option value="Khammam">Khammam</option>
							<option value="Krishna">Krishna</option>
							<option value="Kurnool">Kurnool</option>
							<option value="Mehbubnagar">Mehbubnagar</option>
							<option value="Medak">Medak</option>
							<option value="Nalgonda">Nalgonda</option>
							<option value="Nellore">Nellore</option>
							<option value="Nizamabad">Nizamabad</option>
							<option value="Prakasham">Prakasham</option>
							<option value="Rangareddi">Rangareddi</option>
							<option value="Srikakulam">Srikakulam</option>
							<option value="Vishakapatnam">Vishakapatnam</option>
							<option value="Warangal">Warangal</option>
							<option value="West Godavari">West Godavari</option>
						</select>
					</td>
					</tr><br>

<tr><td><input type="submit" name="submit" value="search"></td></tr>
</table>
</form>

<form action="display_accepted_donors.jsp">
<input type="submit" name="t4" value="donors who accepted to donate">
</form>




</body>
</html>