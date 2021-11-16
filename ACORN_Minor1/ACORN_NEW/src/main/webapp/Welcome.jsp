<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
		
		response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");	
	
		if(session.getAttribute("username")==null)
		{
			response.sendRedirect("login.jsp");
		}
	%>

<h1>Accessible Campus Online Resource Network</h1>
<hr style="height:2px;border-width:0;color:gray;background-color:gray">
<img src="A:/ACORN_Minor1/images/welcome.jpg" alt="welcome">

<h2>Welcome </h2> ${username}
<div class="btn-group">
  <form action="Details"><input type="submit" value="Details"></form>
  <form action="Attendance"><input type="submit" value="Attendance"></form>
  <form action="Examination"><input type="submit" value="Examination"></form>
  <form action="Marks"><input type="submit" value="Marks"></form>
  <form action="Fees Details"><input type="submit" value="Fees"></form>
  <form action="About Us"><input type="submit" value="About"></form>
</div>
<hr style="height:2px;border-width:0;color:gray;background-color:gray">
<form action="Logout">
<input type="submit" value="Logout"></form>
</body>
</html>