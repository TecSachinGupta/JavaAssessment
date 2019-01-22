<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Vehicle Management Assessment</title>
<style type="text/css">
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
</style>
</head>
<body>
<center>

	<h1>Login Here</h1>
	<form action="Login" style="font-size:25px;" method="post">
		<table>
			<tr>
				<td><label>Enter Username  : </label></td>
				<td><input type="text" name= "user"></td>
			</tr>
			<tr>
				<td><label>Enter Password  : </label></td>
				<td><input type="password" name= "password"></td>
			</tr>
			<tr>
				<td colspan=2><input type="reset" name= "reset">
				<input type="submit" name= "submit" value = "LOG IN"></td>
			</tr>
		</table>
		<label style="color:red;"><%
			String s = request.getParameter("status");
			if(s == null)
				s = "";
			else if(s.equalsIgnoreCase("failure"))
				s = "Please Enter Valid Details";
		%>
		<%= s%>
		</label>
	</form>
</center>
</body>
</htm>