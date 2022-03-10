<%@page import="com.cdac.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Header.jsp" ></jsp:include>  
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   
    
<% if(session.getAttribute("user") != null) { %>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>       
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="Profile.css">
<meta charset="ISO-8859-1">
<title>Profile</title>

</head>
<body >

	<div class="column" style="">
	
		<div class="row"  style="">
  		
	  		<div class="column" >
	  		<br><br>	<img src="Profile.jpg"  width="300px" height="300px" style="top: 20px;" >
	    
	  		</div>
	  
	  		<div class="column" style="font-size: 25px;">
    
				<%
				
					User user = (User)request.getAttribute("user");	 
					int recv = user.getUserId() + 253651;			
				%>    
	
				<table>
				
					<br>
	
					<tr>
						<td>
							User Name : <%= user.getUserName() %>			
						</td>
					</tr>
					
					<tr>
						<td>
							<br>
							Email Id : <%= user.getEmailId() %>
						</td>
					</tr>
					
					<tr>
						<td>
							<br>
							Mobile No : <%= user.getMobNo() %>
						</td>
					</tr>
						
					<tr>
						<br>
						<br>
						<td>
							<br>
							User Id : <%= recv %>
						</td>
					</tr>
					
					<tr> <td>
			     		<br>
			     		<br>
			     		<a href="PreEditProfile.ext">Want to Edit Profile ?</a> 
			     	
			     	</td> </tr>
			     	
			        <tr> <td>
			        	<br>
			        	<br>
			        	<a href="PreForgotPassword.ext">Reset Password ?</a>
			        
			        </td> </tr>
					
				</table>
		  	</div>
		
		</div>

	</div>
</body>   
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>