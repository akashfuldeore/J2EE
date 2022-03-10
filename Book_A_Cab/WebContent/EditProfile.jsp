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

<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="EditProfile.css">
</head>
<body>
         <div class="Main-contain">

            <div class="Enter">
                
	             <spr:form  action="EditProfile.ext" method="post" commandName="user" >
		            
		            <table style="align : center;" >
		            <br>
		            
			         	<tr> <td><h2>Edit Profile</h2></td> </tr>
				        
				        <tr> <td>
				     	
				     	 	<br>
				     		User Name :   
				        	<spr:input path="userName"/>
				     		
				     	</td> </tr>
				     
				     	<tr> <td>
				     		<br>
				     		Email Id : 
				     		<br>  
				        	<spr:input path="emailId"/>
				     		
				     	</td> </tr>
				     
				     	<tr> <td>
				     		<br>
				     		Mobile Number :   
				        	<spr:input path="mobNo"/>
				     		
				     	</td> </tr>
			
				     	<tr> <td  colspan="3" >
				     		<br>
				     		<spr:button>Edit</spr:button> <br>
				     		
				     	
				     	</td> </tr>
		    
			        	<tr><td> <a href="Home.ext">GoTo Home</a> <br> </td> </tr>
	             
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