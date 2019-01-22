<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import = "java.util.List,me.sachingupta.CloudantDatabase,me.sachingupta.dao.VehicleInfo"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Data</title>
<style type="text/css">

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
table {
    border-collapse: collapse;
    //width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
</head>
<body>
<center>
<%
	String s = (String)session.getAttribute("name");
	if(s == null)
		response.sendRedirect(request.getContextPath() + "/index.jsp?status=Please LogIn first");
%>
	<h1>List of Vehicles</h1>
	<table border="2" width="80%" style="margin:0px 100px;font-size:20px;">
		<tr>
			<th>Make</th>
			<th>Model</th>
			<th>Year</th>
			<th>VIN</th>
		</tr>	
		<%
			List<VehicleInfo> list = CloudantDatabase.getData();
			for(VehicleInfo v: list){
				out.print("<tr> <td>" + v.getMake() + "</td><td>"+ v.getModel() + "</td><td>" + v.getYear() + "</td><td>" + v.getVin() + "</td></tr>" );
			}
		%>
		
	</table>
<br>	<a href="Home.jsp">Back to Home</a>
</center>
</body>
</html>