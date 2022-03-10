<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>    
<jsp:include page="Header.jsp" ></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 

<% if(session.getAttribute("user") != null) { %>

<html>
<head>

<meta charset="ISO-8859-1">
<title>Book A Cab</title>
<link rel="stylesheet" href="BookACab.css">
</head>
<body>

<div class="row">

	<div class="column">
		<div class="types" style="justify-content: center;font-size: 40px; align-content: center; align-items: center;margin-left: 600px; width:7vw; margin-top:20px; height: 70px;">Micro</div><br><br><br>
			1) Base Fare : 	Rs.40.<br><br>
			2) Distance Fare: Rs. 6 Upto 15 km and Rs.12<br><br>
			3) Ride Time Fare: Rs. 1 per min <br><br>
			4) Cancellation Fee: Rs. 25 <br><br>
			5) passengers : 3 passengers. <br><br>
			<hr>
			<p>  Micro:-  We always here, in small packages, good things come. That’s exactly what  Micro is –at micro 
			costs of just Rs. 6/Km, the latest service that offers small and compact cars! Top quality vehicles are audited 
			for convenience, cleanliness and security. The drivers are well qualified and efficient.</p>
			<br>
			<br>
			<a href="PreBookingTypes.ext?category=<%= "micro" %>" class="a3" style="margin-left: 600px;" >Book Micro</a>
	 </div>
	 
	<div class="column" >
		 <div class="types" style="justify-content: center;font-size: 40px; align-content: center; align-items: center;margin-left: 600px; width:5vw; margin-top:20px; height: 70px;" >Mini</div><br><br><br>
			1) Base Fare : Rs. 80 for first 4 km.<br><br>
			2) Distance Fare: Rs. 10 per km. <br><br>
			3) Ride Time Fare: Rs. 1 per min <br><br>
			4) Cancellation Fee: Rs. 50. <br><br>
			5) passengers : 4 passengers. <br><br>
			<hr>
			<p>Mini: The new service will provide you with the same fare as as auto rickshaws, that is, Rs 10 per km but with a base 
			price of Rs 100 for the first six kms, making it the lowest cost AC cab service available in the town.</p>
			<br>
			<br>
			<a href="PreBookingTypes.ext?category=<%= "mini" %>" class="a1" style="margin-left: 600px;" >Book Mini</a>
	 </div>
	
	  <div class="column">
		 <div class="types" style="justify-content: center;font-size: 40px; align-content: center; align-items: center;margin-left: 600px; width:7vw; margin-top:20px; height: 70px;" >Prime</div><br><br><br>
			1) Base Fare : Rs. 80 for first 4 km.<br><br>
			2) Distance Fare: Rs. 13 – Rs.15 per km <br><br>
			3) Ride Time Fare: Rs. 1 per min <br><br>
			4) Cancellation Fee: Rs.75 to Rs.100 <br><br>
			5) passengers : 6 passengers. <br><br>
			<hr>
			<p> Prime: Excellent vehicles, premier service, free of cost wi-fi, currently; Prime is available to limited cities.
			 Prime provides an excellent business class experience to our critical customers. Every part of the skill has been taken
			  care of to make sure that once in an Ola Prime; customers get a taste of unrivaled high quality of the drive. </p>
			
			 <br>
			 <br>
			 <a href="PreBookingTypes.ext?category=<%= "prime" %>" class="a2" style="margin-left: 600px;" >Book Prime</a>
	 </div>
	 
</div>  
</body>   
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>