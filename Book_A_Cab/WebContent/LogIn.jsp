<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>   

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

   
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" href="LogIn.css">
</head>
<body 	style="background-image: url('LogIn.jpg');
 		background-size:cover;background-position:center; background-repeat:no-repeat; background-origin: content-box;
  		background-attachment: fixed;
 ">

    <div class="Main-contain" style="height: 100vh; width: 100vw;">

       <div class="Enter">
           
         <spr:form  action="LogIn.ext" method="post" commandName="user">
         
         	<table style="align : center;">
         		
         		<br>
         
	         	<tr> <td><h2>Login Here</h2></td> </tr>
		        
		     
		     	<tr> <td>
		     		<br>	
		     		Mobile Number :   
		        	<spr:input path="mobNo"/> <br>
		        	<font color="red" ><spr:errors path="mobNo" ></spr:errors></font>
		     		
		     	</td> </tr>
	
				<tr> <td>
		     		Password :
		        	<spr:password path="password"/><br>
		        	<font color="red" ><spr:errors path="password" ></spr:errors></font>
		     	
		     	</td> </tr>
		        
		     
		     	<tr> <td  colspan="3" >
		     	
		     		<br>
		     		<spr:button>LogIn</spr:button> <br><br>
		     		
		     	
		     	</td> </tr>
		        
		       
		       	<tr> <td>
		       
		       		<label>
		                <input type="checkbox" checked="checked" name="remember"> <b>Remember me</b>
		     	    </label>
		       
		       	</td> </tr>
		     
		     	<tr> <td>
		     		<br>
		     		<a href="PreRegistration.ext">Don't have an account ?</a> 
		     	
		     	</td> </tr>
		     	
		        
		        <tr> <td>
		        	<a href="PreForgotPassword.ext">Forgot Password ?</a>
		        
		        </td> </tr>
	        
	        </table>
	        
         </spr:form>


       </div>

    </div>

</body>   
</html>