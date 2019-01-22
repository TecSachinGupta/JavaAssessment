<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title><style type="text/css">
input[type="submit"],
input[type="reset"] {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
input[type="text"],
input[type="password"]{
	padding: 10px 20px;
    margin: 5px 0;f
    box-sizing: border-box;
    font-size: 20px;
}
td[colspan="2"] {
    text-align: center;
}
h1{
	font-size: 40px
}
select{
	padding: 10px 20px;
    margin: 5px 0;f
    box-sizing: border-box;
    font-size: 20px;
}
a:link, a:visited {
    background-color: green;
    color: white;
    padding: 14px 25px;
    text-align: center; 
    text-decoration: none;
    display: inline-block;
}

a:hover, a:active {
    background-color: green;
}

</style>
</head>
<body>

<%
	String s = (String)session.getAttribute("name");
	if(s == null)
		response.sendRedirect(request.getContextPath() + "/index.jsp?status=Please LogIn first");
%>
<center>
	<h1>Hello, Mr. <%=(String) session.getAttribute("name")%></h1>
	<h3>Welcome To Vehicle Management System</h3>
	
	<table style="font-size:25px;">
		<tr>
			<td>To Register</td>
			<td><a href="Register.jsp">Click</a></td>
		</tr>
		<tr>
			<td>To List All</td>
			<td><a href="List.jsp">Click</a></td>
		</tr>
	</table>
	
	<form action="Logout">
		<input type = "Submit" name= "Submit" value="Logout">
	</form>
</center>	
</body>
</html>