<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
 
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>  
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Forgot Password</title>
<link rel="stylesheet" href="Forgot.css">
</head>
<body>
         <div class="Main-contain">

            <div class="Enter" style=" height: 500px; width: 340px;">
                
	             <spr:form  action="Forgot.ext" method="post" commandName="user" >
		            
		            <table style="align : center;">
		            
		            	
		            	<br>
		            	<br>
         
			         	<tr> <td><h2>Forgot Password</h2></td> </tr>
		
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
			
				     
				     	<tr> <td>
				     		<br>
				     		New Password : 
				        	<spr:password path="password"/>
				     	
				     	</td> </tr>
				     
				     	<tr> <td  colspan="3" >
				     		<br>
				     		<br>
				     		<spr:button>Submit</spr:button> <br><br>
				     		
				     	
				     	</td> </tr>
		    
			        	<tr><td><br> <a href="PreLogIn.ext" style="color: white;">GoTo LogIn</a> <br> </td> </tr>
	             
	             	</table>
	             
	             </spr:form>


            </div>

         </div>

</body>   
</html>