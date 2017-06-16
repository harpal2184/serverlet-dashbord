<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Profile</title>
</head>
<body>
<a href="index.html">Registation</a>
<%
try{
	Class.forName("com.mysql.jdbc.Driver");
	String query="select * from registration";
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","tiger");
	Statement stmt=conn.createStatement();
	ResultSet rs=stmt.executeQuery(query);
	%>
	<table style="border:1px solid black">
		<tr>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Email</th>
			<th>Password</th>
		</tr>
	<%
	while(rs.next()){
		/* out.print(rs.getString("username")); */
		%>
		<tr>
			<td><%= rs.getString("firstname") %></td>
			<td><%= rs.getString("lastname") %></td>
			<td><%= rs.getString("email") %></td>
			<td><%= rs.getString("username") %></td>
			<td><%= rs.getString("password") %></td>
		</tr>
		<% } %>
	</table>	
	<%
	
	}catch(Exception e){
		out.print(e);
	}

%>
</body>
</html>