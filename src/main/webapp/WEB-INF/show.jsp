<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Omikuji</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar bg-info">
	  <div class="container">
	    <a class="navbar-brand" href="#">
	      <img src="/img/omikujiLogo.png" alt="Logo" width="100" class="d-inline-block align-text-top">
	      	Here's your Omikuji!
	    </a>
	  </div>
	</nav>
	
	<div class="container my-2">
		<div class="card"  style="width: 25rem;">
			<div class="card-body bg-info">
				<p class="lead">
					In 
					<c:out value="${ num }"/> 
					years, you will live in 
					<c:out value="${ city }"/>
					with
					<c:out value="${ person }"/>
					as your roommate,
					<c:out value="${ profession }"/>
					for a living. The next time you see a 				
					<c:out value="${ thing }"/>
					, you will have good luck. Also, 
					<c:out value="${ nice }"/>!
				</p>				
			</div>
		</div>
		<p class="text-center" style="width: 25rem;"><a href="/omikuji">Go Back</a></p>
	</div>
</body>
</html>