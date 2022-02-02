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
<img src="images/welcome.jpg" alt=""/>

<h2>Welcome ${username} </h2> 
<div style="background-image: url(https://cdn.pixabay.com/photo/2016/02/16/21/07/books-1204029_960_720.jpg);" class="btn-group" >
  <form action="Detials.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; background-color: black; color: goldenrod; width: 215px; border-radius: 10px;" type="submit" value="Details"></form>
  <form action="Attendance.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; border-radius: 10px; background-color: black; color: goldenrod; width: 215px;" type="submit" value="Attendance"></form>
  <form action="Examination.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; border-radius: 10px; background-color: black; color: goldenrod; width: 215px;" type="submit" value="Examination"></form>
  <form action="Marks.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; border-radius: 10px; background-color: black; color: goldenrod; width: 215px;" type="submit" value="Marks"></form>
  <form action="FeesDetails.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; border-radius: 10px; background-color: black; color: goldenrod; width: 215px;" type="submit" value="Fees"></form>
  <form action="AboutUs.jsp" style="margin-bottom: 20px;"><input style="padding: 8px; border-radius: 10px; background-color: black; color: goldenrod; width: 215px;" type="submit" value="About"></form>
</div>
<hr style="height:2px;border-width:0;color:gray;background-color:gray">
<form action="logout">
<input style="padding: 8px; background-color: black; color: goldenrod; border-radius: 10px; width: 115px;" type="submit" value="logout"></form>
</body>
</html>