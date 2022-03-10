<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


<% if(session.getAttribute("user") != null) { %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<link href="Header.css" rel="stylesheet">
</head>
<body>

  <header>
  <nav>
  <ul class="nav-area">
  <li><h1 style="font-size: 35px;" >A2 Cab Services &emsp; &ensp; &ensp; &ensp;</h1></li>
  <li><a href="PreBookACab.ext">Book A Cab</a></li>
  <li><a href="PreManageBookingTypes.ext">Manage Booking</a></li>
  <li><a href="PrePayment.ext">Payment</a></li>
  <li><a href="PreProfile.ext">Profile</a></li>
  <li><a href="PreContactUs.ext">Contact Us</a></li>
  <li><a href="PreLogOut.ext">Log Out</a></li>
  </ul>
  </nav>
  </header>
  
</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>