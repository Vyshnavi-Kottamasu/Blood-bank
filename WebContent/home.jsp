<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home page</title>
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="calendarDateInput.js"></script>
<script language="javascript">
	function homeValidate() {
		if (phone == "") {

			errorMsg += "\nPHONE: Enter phone no.\n";
		} else if (isNaN(phone) || phone.length<10) {

			errorMsg += "\nPHONE: Enter valid phone no.\n";
		}
		if (errorMsg != "") {
			alert(errorMsg);
			return false;
		} else {

			return true;
		}
	}
	function emevalidate() {

		var ru = document.home.t2.value;
		var errorMsg = "";

		if (document.home.t1.value == "" || document.home.t2.value == ""
				|| document.home.t3.value == "" || document.home.t4.value == "") {
			alert("Please enter all the details");
			exit(0);
		} else if (document.home.t1.value == "-1") {
			alert("Please select a blood group");
			return false;
			exit(0);
		}
		if (isNaN(ru)) {

			alert("Required Units: Enter valid no.");
			return false;

		}
		var phone = document.home.t3.value;
		if (phone == "") {

			alert(" Enter phone no.");
			return false;
		} else if (isNaN(phone)|| phone.length<10) {

			alert("Enter valid phone no.");
			return false;
		}

		if (errorMsg != "") {
			alert(errorMsg);
			return false;
		} else {
			document.home.method = "post";
			document.home.action = "postreq.jsp";
			document.home.submit();
		}
	}

	var digits = "0123456789";
	// non-digit characters which are allowed in phone numbers
	var phoneNumberDelimiters = "()- ";
	// characters which are allowed in international phone numbers
	// (a leading + is OK)
	var validWorldPhoneChars = phoneNumberDelimiters + "+";
	// Minimum no of digits in an international phone no.
	var minDigitsInIPhoneNumber = 10;

	function isInteger(s) {
		var i;
		for (i = 0; i < s.length; i++) {
			// Check that current character is number.
			var c = s.charAt(i);
			if (((c < "0") || (c > "9")))
				return false;
		}
		// All characters are numbers.
		return true;
	}
	function trim(s) {
		var i;
		var returnString = "";
		// Search through string's characters one by one.
		// If character is not a whitespace, append to returnString.
		for (i = 0; i < s.length; i++) {
			// Check that current character isn't whitespace.
			var c = s.charAt(i);
			if (c != " ")
				returnString += c;
		}
		return returnString;
	}
	function stripCharsInBag(s, bag) {
		var i;
		var returnString = "";
		// Search through string's characters one by one.
		// If character is not in bag, append to returnString.
		for (i = 0; i < s.length; i++) {
			// Check that current character isn't whitespace.
			var c = s.charAt(i);
			if (bag.indexOf(c) == -1)
				returnString += c;
		}
		return returnString;
	}

	function checkInternationalPhone(strPhone) {
		var bracket = 3
		strPhone = trim(strPhone)
		if (strPhone.indexOf("+") > 1)
			return false
		if (strPhone.indexOf("-") != -1)
			bracket = bracket + 1
		if (strPhone.indexOf("(") != -1 && strPhone.indexOf("(") > bracket)
			return false
		var brchr = strPhone.indexOf("(")
		if (strPhone.indexOf("(") != -1 && strPhone.charAt(brchr + 2) != ")")
			return false
		if (strPhone.indexOf("(") == -1 && strPhone.indexOf(")") != -1)
			return false
		s = stripCharsInBag(strPhone, validWorldPhoneChars);
		return (isInteger(s) && s.length >= minDigitsInIPhoneNumber);
	}

	function ValidateForm() {
		var Phone = document.home.t3.value;

		if ((Phone.value == null) || (Phone.value == "")) {
			alert("Please Enter your Phone Number")
			Phone.focus()
			return false
		}
		if (checkInternationalPhone(Phone.value) == false) {
			alert("Please Enter a Valid Phone Number")
			Phone.value = ""
			Phone.focus()
			return false
		}
		return true
	}
</script>

</head>
<body>
	<div id="container">
		<div id="header">
			<div id="logo_w1">BLOOD BANK</div>

			<div id="header_text">
				<p>A small amount of pain to save a life</p>
				<%
					if (session.getAttribute("uname") != null) {
				%>
				<a href="signout.jsp">Sign Out!</a>
				<%
					} else {
				%>
				<a href="donor_registration.jsp">Register As Donor!</a>
				<%
					}
				%>
			</div>
			<ul>
				<%
					if (session.getAttribute("role") != null) {
						if (session.getAttribute("role").toString().equals("admin")) {
				%>
				<li><a href="viewdonors.jsp">View Donors</a></li>
				<li><a href="bbreg.jsp">Add BloodBank</a></li>
				<li><a href="bbdel.jsp">Delete BloodBank</a></li>
				<li><a href="hospitalreg.jsp">Add Hospital</a></li>
				<li><a href="hospitaldel.jsp">Delete Hospital</a></li>
				
				<%
					} else if (session.getAttribute("role").toString()
								.equals("hos admin")) {
				%>
				<li><a href="hospitalfrontend.jsp">My Homepage</a></li>
				<li><a href="viewdonors.jsp">View Donors</a></li>
				<li><a href="aboutblood.jsp">About blood</a></li>
				<li><a href="contactus.jsp">Contact us</a></li>
				<%
					} else if (session.getAttribute("role").toString()
								.equals("donor")) {
				%>
				<li><a href="donorhome.jsp">My Homepage</a></li>
				<li><a href="searchreg.jsp">Search</a></li>
				<li><a href="aboutblood.jsp">About blood</a></li>
				<li><a href="contactus.jsp">Contact us</a></li>
				<%
					}
		
					} else {
				%>

				
				<li><a href="login.jsp">Login</a></li>
				<li><a href="sendrequestreg.jsp">Send request registration</a></li>
				<li><a href="searchreg.jsp">Search</a></li>
				<li><a href="aboutblood.jsp">About blood</a></li>
				<li><a href="contactus.jsp">Contact us</a></li>
				<%
					}
				%>
			</ul>
		</div>
		<div id="content">
			<div id="left">
				<h1>Welcome to our Website</h1>
				<p>A blood donation is when a healthy person voluntarily has
					blood drawn. The blood is used for transfusions or made into
					medications by a process called fractionation.</p>

				<p>In the developed world, most blood donors are unpaid
					volunteers who give blood for a community supply. In poorer
					countries, established supplies are limited and donors usually give
					blood when family or friends need a transfusion. Many donors donate
					as an act of charity, but some are paid and in some cases there are
					incentives other than money such as paid time off from work. A
					donor can also have blood drawn for their own future use. Donating
					is relatively safe, but some donors have bruising where the needle
					is inserted or may feel faint.</p>


				<p>
					<b>Donor safety</b><br> The donor is also examined and asked
					specific questions about their medical history to make sure that
					donating blood isn't hazardous to their health. The donor's
					hematocrit or hemoglobin level is tested to make sure that the loss
					of blood will not make them anemic, and this check is the most
					common reason that a donor is ineligible.[23] Pulse, blood
					pressure, and body temperature are also evaluated. Elderly donors
					are sometimes also deferred on age alone because of health
					concerns.[24] The safety of donating blood during pregnancy has not
					been studied thoroughly and pregnant women are usually deferred.
				</p>


				<h1>Photos</h1>
				<div id="photos">
					<img src="images/photo1.jpg" alt="photo" /> <img
						src="images/photo2.jpg" alt="photo" /> <img
						src="images/photo3.jpg" alt="photo" />


				</div>
			</div>


			<div id="footerline"></div>
		</div>

		<div id="footer">Copyright © @2018 BloodBank. Designed by MREC students. All rights reserved.</div>
	</div>

</body>
</html>