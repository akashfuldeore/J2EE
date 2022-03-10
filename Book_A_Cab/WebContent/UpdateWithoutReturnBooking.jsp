<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>

<% if(session.getAttribute("user") != null) { %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateWithWithoutBooking</title>
<link rel="stylesheet" href="UpdateWithoutReturnBooking.css">
</head>
<body>

<div class="row">

<div class="column" >
<img src="UpdateWithWithoutBooking.jpg"  width="620" height="460">

</div>

<div class="column" >
	<spr:form action="UpdateWithoutReturnBooking.ext" method="post" commandName="withoutReturnBooking" >
	<table align="left" style="margin-left: 30px; margin-top: 10px" >
		
		<tr>
			<td>
				User Name:
			</td>
			<td>
				<%= (String)request.getAttribute("userName") %>
		    </td>
		</tr>
		<tr>
			<td>
				Mobile No:
			</td>
			<td>
				<br>
				<spr:input path="mobNo"/><br><br>
				
			</td>
		</tr>
		<tr>
			<td>
				Email Id:
			</td>
			<td>
				<br>
				<%= (String)request.getAttribute("emailId") %><br><br>
				
			</td>
		</tr>
		<tr>
			<td>
				Booking Category:
			</td>
			<td>
				<br>
				<%= (String)request.getAttribute("category") %><br><br>
				
			</td>
		</tr>
		<tr>
			<td>
				Number Of Passengers : 
			</td>
			<td>
				<br>
				<%= (String)request.getAttribute("noOfPas") %><br><br>
		    </td>
			
		</tr>
		
		<tr>
			<td>
				Pick Up Address:
			</td>
			<td>
				<br>
				<spr:input path="pickUpAddr"/><br><br>
		    </td>
		</tr>
		
		<tr>
			<td>
				PickUp Date:
			</td>
			<td>
				<spr:input path="pickUpDate"/>
			</td>
			<td>
			    PickUp Time :
			</td>
			<td><br>
				<spr:input path="pickUpTime"/><br><br>
			</td>
		</tr>
		
		<tr>
			<td>
				Drop Address:
			</td>
			<td>
				<br>
				<spr:input path="dropAddr"/><br><br>
				
			</td>
		</tr>
		
		
		<tr>
			<td>
				<spr:button>Update Booking</spr:button>
				
			</td>
			
			<td>
				<a href="PreManageBookingTypes.ext" >GoTo Bookings</a>
				
			</td>
		</tr>
		<tr>
			<td>
				<br>
				<spr:hidden path="userId"/><br><br>
		    </td>
		</tr>
		
		<tr>
			<td>
				<br>
				<spr:hidden path="category"/><br><br>
		    </td>
		</tr>
		
		<tr>
			<td>
				<br>
				<spr:hidden path="bookingId"/><br><br>
		    </td>
		</tr>
		<tr>
			<td>
				<br>
				<spr:hidden path="userName"/><br><br>
		    </td>
		</tr>
		<tr>
			<td>
				<br>
				<spr:hidden path="emailId"/><br><br>
		    </td>
		</tr>
		<tr>
			<td>
				<br>
				<spr:hidden path="noOfPas"/><br><br>
		    </td>
		</tr>
	</table>
	</spr:form>
	</div>
	</div>
</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>