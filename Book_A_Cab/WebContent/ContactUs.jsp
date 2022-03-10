<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Header.jsp" ></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


<% if(session.getAttribute("user") != null) { %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link rel="stylesheet" href="ContactUs.css">
</head>
<body>
<div class="row">
<div class="column">
<h1>Customer support</h1>
<hr style="width: 1120px";>
<h2>Contact us</h2>
<p> We are committed to provide you the best service and assistance possible round the clock. We'll be right
 here to answer all your queries and feedback which will help us serve you better.  </p>

<h2>General purpose</h2>
<p> 1) Call us at 4552 9900 - Please dial the city specific STD code.<p>
<p> 2) Write us on feedback@A2.in</p>

<h2>Corporate enquiries</h2>
<P>Dial +91 22 4052 0100 or</P>
<p>Email us on corporate@A2.in</p>

<h2>Media/PR connect</h2>
<p>Call us at +91 22 4052 0100</p>
<p>Write us on mediaquery@A2.in</p>
<hr style="width: 1120px";>

<h2>Corporate Office</h2>
<p>A2 Cab Services<p>
<p>F - 17, 4th Floor, B wing, Pinnacle Business Park, Shanti Nagar, Mahakali Caves Road, Andheri (East), Mumbai 400 093, India.</p>
<p>Tel: +91 22 8882 8880</p>

<hr style="width: 1120px";>

<h2>Regional Offices</h2>

<h2>West India</h2>
<p>A2 Cab Services.<p>
<p>F- 17, 4th Floor, B wing, Shanti Nagar,<p>
<p>Mahakali Caves Road, Andheri (East), Mumbai 400 093, India.</p>
<p>Tel: +91 22 4052 0100</p>

<h2>North India</h2>
<p>A2 Cab Services.</p>
<p>431, Lower Ground Floor, Udyog Vihar Phase-Iii, Gurgaon, Sector 20, Gurugram, Haryana 122 001, India.</p>
<p>Tel: +91 124 49996660</p>
</div>
</div>
</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
%>