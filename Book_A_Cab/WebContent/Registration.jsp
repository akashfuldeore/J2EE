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
<title>Registration</title>
<link rel="stylesheet" href="Registration.css">
</head>
<body style="background-image: url('Registration.jpg');
 		background-size:cover;background-position:center; background-repeat:no-repeat; background-origin: content-box;
  		background-attachment: fixed;
 ">
         <div class="Main-contain">

            <div class="Enter">
                
	             <spr:form  action="Registration.ext" method="post" commandName="user" >
		            
		            <table style="align : center;" >
		            	
		            	<br>
		            
			         	<tr> <td><h2>Register Here</h2></td> </tr>
				        
				        <tr> <td>
				     		User Name :   
				        	<spr:input path="userName"/>
				        	<br>
				        	<font color="white" ><spr:errors path="userName" ></spr:errors></font>
				     		
				     	</td> </tr>
				     
				     	<tr> <td>
				     		Email Id :
				     		<br>   
				        	<spr:input path="emailId"/>
				        	<br>
				        	<font color="white" ><spr:errors path="emailId" ></spr:errors></font>
				     		
				     	</td> </tr>
				     
				     	<tr> <td>
				     		Mobile Number :   
				        	<spr:input path="mobNo"/>
				        	<br>
				        	<font color="white" ><spr:errors path="mobNo" ></spr:errors></font>
				     		
				     	</td> </tr>
			
				     
				     	<tr> <td>
				     		Password : 
				        	<spr:password path="password"/>
				        	<br>
				        	<font color="white" ><spr:errors path="password" ></spr:errors></font>
				     	
				     	</td> </tr>
				        
				     
				     	<tr> <td  colspan="3" >
				     		<spr:button>Register</spr:button>
				     		
				     	
				     	</td> </tr>
		    
			        	<tr><td> <a href="PreLogIn.ext" style="color: white;" >GoTo LogIn</a> <br> </td> </tr>
	             
	             	</table>
	             
	             </spr:form>


            </div>

         </div>

</body>   
</html>