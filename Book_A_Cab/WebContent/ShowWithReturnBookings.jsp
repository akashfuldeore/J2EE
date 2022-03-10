<%@page import="com.cdac.dto.WithReturn"%>
<%@page import="com.cdac.dto.WithoutReturn"%>
<%@page import="java.util.List"%>
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
<title>ShowWithReturnBookings</title>
<link rel="stylesheet" href="ShowWithReturnBookings.css">
</head>
<body>

	<div class="container" style="height: 100vh; width: 100vw;">
	
		<div class="row" style=" width:1500px;  height: 600px; ">
			
			<table>
				<tr>
					<td style="font-size: 25px; color: red;"> With Return Bookings : </td>	    
				</tr>
				
				<br>
				<tr>
					
					<td>User Name : </td>
					<td>Email Id : </td>
					<td>Mob No : </td>
					<td>Booking Category : </td>
					<td>No Of Pas : </td>
					<td>PickUp Addr : </td>
					<td>PickUp Date : </td>
					<td>PickUp Time : </td>
					<td>Drop Addr : </td>
					<td>Drop Date : </td>
					<td>Drop Time : </td>
					
				</tr>
		
				<%
					List<WithReturn> list = (List<WithReturn>)request.getAttribute("withReturnlist");
					for(WithReturn trav : list) {
				%>
				
				<br>
					
				<tr>
					<td> <%= trav.getUserName() %> </td> 
					<td> <%= trav.getEmailId() %> </td>
				 	<td> <%= trav.getMobNo() %> </td>
				 	<td> <%= trav.getCategory() %> </td>
				 	<td> <%= trav.getNoOfPas() %> </td>
				 	<td> <%= trav.getPickUpAddr() %> </td>
				 	<td> <%= trav.getPickUpDate() %> </td>
				 	<td> <%= trav.getPickUpTime() %> </td>
				 	<td> <%= trav.getDropAddr() %> </td>
				 	<td> <%= trav.getDropDate() %> </td>
				 	<td> <%= trav.getDropTime() %> </td> 
					<td> <a href="PreUpdateWithReturn.ext?bookingId=<%= trav.getBookingId() %>">Update</a> </td>
					<td> <a href="PreDeleteWithReturnBooking.ext?bookingId=<%= trav.getBookingId() %>">Cancel</a> </td> 	
				 	
				</tr>
				<br>
						
		
			<% } %>
					
			</table>
			
		</div>
	
	</div>
	

</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>
