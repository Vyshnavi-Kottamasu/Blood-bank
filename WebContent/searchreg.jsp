<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form name="f6" action="searchreg1.jsp" method="post">
             <center><h1>Search For Donor</h1></center>
           
            <table name="t1" align="center" >
                <tr><td>Select blood group:</td><td><select name="t1">
                            <option value="">--Select Group--</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                </select></td></tr>


                <tr>
					<td>Select District:</td>
					<td>
						<select name="t2">
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
				</tr>
    
             
             <tr><td><input type="submit" value="Search" name="s1"/></td></tr>
             </table>
             <br><br>
            



        </form>
			
</body>
</html>