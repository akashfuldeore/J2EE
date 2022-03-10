<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="Header.jsp" ></jsp:include>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">


<% if(session.getAttribute("user") != null ) { %>

<jsp:include page="CacheControl.jsp" ></jsp:include> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<link href="Home.css" rel="stylesheet">
<body style="background-image: url('Home.jpeg');
 		background-size:cover;background-position:center; background-repeat:no-repeat; background-origin: content-box;
  		background-attachment: fixed;
 ">

	<div class="container">

		<div class="row" style="color: black; top: 100px; display: flex;">
	
		</div>
	
	</div>
	
</body>
</html>

<% }else {
	
		response.sendRedirect("index.jsp");
	}
	%>