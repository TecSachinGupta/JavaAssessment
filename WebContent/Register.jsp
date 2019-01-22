<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Vehicle</title>
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
<center>
<%
	String s = (String)session.getAttribute("name");
	if(s == null)
		response.sendRedirect(request.getContextPath() + "/index.jsp?status=Please LogIn first");
	s = "";
%>
<h1>Register New Vehicle</h1>
	<form action="RegisterNewVehicle" method="post">
		<table style="font-size:25px;">
			<tr>
				<td><label>Enter Maker's Name  : </label></td>
				<td><input type="text" name= "make"></td>
			</tr>
			<tr>
				<td><label>Enter Model  : </label></td>
				<td><input type="text" name= "model"></td>
			</tr>
			<tr>
				<td><label>Enter Year  : </label></td>
				<td><select name= "year"><% for(int i = 1995;i<=2018;i++) out.print("<option>"+ i + "</option>"); %></select></td>
			</tr>
			
			<tr>
				<td colspan=2><input type="reset" name= "reset">
				<input type="submit" name= "submit" value="Register"></td>
			</tr>
		</table>
		<label style="color:red;"><%
		s = request.getParameter("status");	
		if(s == null)
				s = "";
			else if(s.equalsIgnoreCase("failure"))
				s = "Unable to Add data";
			else if(s.equalsIgnoreCase("success"))
				s = "Data Added Successfully";		
		%>
		<%= s%>
	</form>
	<br>
		<a href="Home.jsp">Back to Home</a>
</center>
</body>
</html>