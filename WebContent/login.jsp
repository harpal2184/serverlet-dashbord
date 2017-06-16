<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<title>Login Page</title>
</head>
<body>
<form method="post" action="login.jsp">
	<!-- Username -->
	<div class="form-group">
		<label for="password">Username :</label>
		<input type="text" name="username" class="form-control" id="password" placeholder="Enter Username">
	</div>
	<!-- password -->
	<div class="form-group">
		<label for="password">Password :</label>
		<input type="text" class="form-control" name = "password" id="password" placeholder="Enter Password">
	</div>
	<!-- submit  -->
	<div class="form-group">
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
</form>

<%
String username = request.getParameter("username");
String password = request.getParameter("password");

%>
</body>
</html>