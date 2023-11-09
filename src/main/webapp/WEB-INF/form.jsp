<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Send an Omikuji!</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
</head>
<body>
	<nav class="navbar bg-info">
	  <div class="container">
	    <a class="navbar-brand" href="#">
	      <img src="/img/omikujiLogo.png" alt="Logo" width="100" class="d-inline-block align-text-top">
	      	Send an Omikuji!
	    </a>
	  </div>
	</nav>

	
	<!-- Main page  -->
	<div class="container my-2">
		<div class="card" style="width: 30rem;">
			<div class="card-body">
				<form action="/omikuji/submit" method="post">
					<label class="form-label" for="num">Pick any number from 5-25</label>
					<input class="form-control" type="number" min="5" max="25" name="num" id="num">
					<label class="form-label" for="city">Enter the name of any city</label>
					<input class="form-control" type="text" name="city" id="city">
					<label class="form-label" for="person">Enter the name of any real person</label>
					<input class="form-control" type="text" name="person" id="person">
					<label class="form-label" for="profession">Something you do as a profession or hobby</label>
					<input class="form-control" type="text" name="profession" id="profession">
					<label class="form-label" for="thing">Enter any type of living thing</label>
					<input class="form-control" type="text" name="thing" id="thing">
					<label for="nice" class="form-label">Say something nice to someone:</label>
  					<textarea class="form-control" id="nice" name="nice" rows="3"></textarea>
  					<p class="mt-3"><em>Send and show a friend</em></p>
					<button class="btn btn-secondary" type="submit">Send</button>
				</form>
  			</div>
		</div>
	</div>

</body>
</html>