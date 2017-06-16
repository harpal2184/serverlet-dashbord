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
<title>User Registration</title>
</head>
<body>
<a href="profile.jsp">Registration List</a>
<%-- <%= "welcome to JSP" %> --%>
<% 
String firstname = request.getParameter("firstname");
String lastname = request.getParameter("lastname");
String username = request.getParameter("username");
String password = request.getParameter("password");
String email = request.getParameter("email");

Connection conn = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/userdb","root","tiger");
	if(conn != null){
		//out.print("connected sucessfully");
		Statement st = conn.createStatement();
		ResultSet rs;
		int i = st.executeUpdate("insert into registration(firstname,lastname,email,username,password) values('"+firstname+"','"+lastname+"','"+email+"','"+username+"','"+password+"')");
		//out.print("registration sucessfully");
	}
}catch(Exception e){
	out.print(e);
}


out.println("Welcome, " + firstname);

session.setAttribute("user", firstname);
%>
<a href= "logout.jsp">Click here to log out</a>

<a href="second.jsp">second jsp page</a>  

<!-- The JSP request is an implicit object of type HttpServletRequest i.e. created for each jsp request by the web container. -->
<% out.print(2*5); %>
</body>
</html>

<!-- In JSP, response is an implicit object of type HttpServletResponse. -->
<%-- <% 
response.sendRedirect("https://www.google.com");
%>
 --%>
