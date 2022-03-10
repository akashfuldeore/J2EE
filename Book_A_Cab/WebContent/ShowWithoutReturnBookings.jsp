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
<title>ShowWithoutReturnBookings</title>
<link rel="stylesheet" href="ShowWithoutReturnBookings.css">
</head>
<body>

	<div class="container" style="height: 100vh; width: 100vw;">
	
		<div class="row" style=" left: 20px; height: 400px;  width: 1280px;">
	
			<table >
				<tr>
					<td style="font-size: 25px; color: red;"> Without Return Bookings : </td>	    
				</tr>
				
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
				
				</tr>
				<%
					List<WithoutReturn> list = (List<WithoutReturn>)request.getAttribute("withoutReturnlist");
					for(WithoutReturn trav : list) {
				%>
			
				
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
					<td> <a href="PreUpdateWithoutReturn.ext?bookingId=<%= trav.getBookingId() %>">Update</a> </td>
					<td> <a href="PreDeleteWithoutReturnBooking.ext?bookingId=<%= trav.getBookingId() %>">Cancel</a> </td> 	
				 	
				</tr>
		
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
