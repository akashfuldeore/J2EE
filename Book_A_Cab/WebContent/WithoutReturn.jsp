<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<% if(session.getAttribute("user") != null) { %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>WithoutReturn</title>
<link rel="stylesheet" href="WithoutReturn.css">
</head>
<body>

<div class="row">

<div class="column" >
<img src="WithWithoutReturn.png"  width="620" height="460">

</div>

<div class="column" >
	<spr:form action="WithoutReturn.ext" method="post" commandName="withoutReturn" >
	<table align="left" style="margin-left: 30px; margin-top: 10px" >
		
		<tr>
			<td>
				User Name:
			</td>
			<td>
				<br>
				<spr:input path="userName"/><br><br>
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
				<spr:input path="emailId"/><br><br>
				
			</td>
		</tr>
		<tr>
			<td>
				Number Of Passengers : 
			</td>
			<td>
				<br>
				<spr:input path="noOfPas"/><br><br>
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
				<spr:button>Confirm Booking</spr:button>
				
			</td>
			
			<td>
				<a href="Home.ext" >GoTo Home</a>
				
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