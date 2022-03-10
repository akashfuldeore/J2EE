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

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Types</title>
<link rel="stylesheet" href="BookingTypes.css">
</head>
<body>

<% String category = (String)request.getAttribute("category"); %>

<div class="row" style=" height: 30vh; width: 60vw; display: flex; justify-content: space-between; justify-content: center; align-content: center; align-items: center;">
	
	<div style=" top: 100px; ">
	
		<table >
		<tr>
				<td>
					<a href="PreWithoutReturn.ext?category=<%= category %>" class="a1">Book Without Return</a>
				</td>
				<td>
					<a href="PreWithReturn.ext?category=<%= category %>" class="a1">Book With Return</a>
			    </td>
			    
		</tr>
			
		</table>
		
	</div>
	
	</div>
</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>
